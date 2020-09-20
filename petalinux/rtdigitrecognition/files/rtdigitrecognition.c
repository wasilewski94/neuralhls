#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <string.h>
#include <sys/time.h>

#include <errno.h>
#include <sys/types.h>
#include <sys/inotify.h>
#include <limits.h>

#define MAX_EVENTS 1024 /*Max. number of events to process at one go*/
#define LEN_NAME 1024 /*Assuming length of the filename won't exceed 16 bytes*/
#define EVENT_SIZE  ( sizeof (struct inotify_event) ) /*size of one event*/
#define BUF_LEN     ( MAX_EVENTS * ( EVENT_SIZE + LEN_NAME )) /*buffer to store the data of events*/


#define XCALCPERCEPTRON_CTRL_BUS_ADDR_INPUTS_DATA  0x10
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_NEURONS_DATA 0x18

#define XCALCPERCEPTRON_CTRL_BUS_ADDR_W_OFFSET_DATA 0x20
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_B_OFFSET_DATA 0x28

#define XIL_COMPONENT_IS_READY     0x11111111U

int main(int argc, char* argv[])
{

    //files with weights, input, biases and output
    FILE *f_weights;
    FILE *f_input;
    FILE *f_bias;
    FILE *f_output;

    struct timeval t1, t2;
    double elapsedTime;

    int test_samples = 10;
    // if(argc == 2) {
    //     test_samples = atoi(argv[1]);
    // }     

    float buffer;
    float max_output;
    int recognized_digit; 

    int fd_x;
    int fd_w;
    int fd_calc;
    int fd_res;
    int fd_b;

    char *x_bram = "/dev/uio0";
    char *res_bram = "/dev/uio1";
    char *w_bram = "/dev/uio2";
    char *b_bram = "/dev/uio3";
    char *calcPerceptron = "/dev/uio4";


    void *x_bram_ptr;
    void *res_bram_ptr;
    void *w_bram_ptr;
    void *b_bram_ptr;
    void *calcPerceptron_ptr;


    // open the UIO device file to allow access to the device in user space
    fd_x = open(x_bram, O_RDWR);
    if (fd_x < 1) {
        printf("Invalid UIO device file:%s.\n", x_bram);
        return -1;
    }

    fd_w = open(w_bram, O_RDWR);
    if (fd_w < 1) {
        printf("Invalid UIO device file:%s.\n", w_bram);
        return -1;
    }

    fd_calc = open(calcPerceptron, O_RDWR);
    if (fd_calc < 1) {
        printf("Invalid UIO device file:%s.\n", calcPerceptron);
        return -1;
    }

    fd_res = open(res_bram, O_RDWR);
    if (fd_res < 1) {
        printf("Invalid UIO device file:%s.\n", res_bram);
        return -1;
    }

    fd_b = open(b_bram, O_RDWR);
    if (fd_b < 1) {
        printf("Invalid UIO device file:%s.\n", b_bram);
        return -1;
    }


    // mmap the bram device into user space
    x_bram_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_x, 0);
    if (x_bram_ptr == MAP_FAILED) {
        printf("Mmap x_bram call failure.\n");
        return -1;
    }
    volatile float *XVecHW = (float *)(x_bram_ptr);

    w_bram_ptr = mmap(NULL, 65536, PROT_READ|PROT_WRITE, MAP_SHARED, fd_w, 0);
    if (w_bram_ptr == MAP_FAILED) {
        printf("Mmap w_bram call failure.\n");
        return -1;
    }
    volatile float *WVecHW = (float *)(w_bram_ptr);

    calcPerceptron_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_calc, 0);
    if (calcPerceptron_ptr == MAP_FAILED) {
        printf("Mmap calcPerceptron call failure.\n");
        return -1;
    }
    volatile unsigned *regCtrl = (unsigned int *)(calcPerceptron_ptr);
    volatile unsigned *reg_inputs = (unsigned int *)(calcPerceptron_ptr + XCALCPERCEPTRON_CTRL_BUS_ADDR_INPUTS_DATA);
    volatile unsigned *reg_neurons = (unsigned int *)(calcPerceptron_ptr + XCALCPERCEPTRON_CTRL_BUS_ADDR_NEURONS_DATA);

    volatile unsigned *reg_w_offset = (unsigned int *)(calcPerceptron_ptr + XCALCPERCEPTRON_CTRL_BUS_ADDR_W_OFFSET_DATA);
    volatile unsigned *reg_b_offset = (unsigned int *)(calcPerceptron_ptr + XCALCPERCEPTRON_CTRL_BUS_ADDR_B_OFFSET_DATA);

    res_bram_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_res, 0);
    if (res_bram_ptr == MAP_FAILED) {
        printf("Mmap res_bram call failure.\n");
        return -1;
    }
    volatile float *result = (float *)(res_bram_ptr);

    b_bram_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_b, 0);
    if (b_bram_ptr == MAP_FAILED) {
        printf("Mmap b_bram call failure.\n");
        return -1;
    }
    volatile float *bHW = (float *)(b_bram_ptr);

    void IP_Start() {
        unsigned int data = (*regCtrl & 0x80);
        *regCtrl = (data | 0x01);
    }

    unsigned int IP_IsDone() {
        unsigned int data = *regCtrl;
        return ((data >> 1) & 0x1);
    }

    unsigned int IP_IsReady() {
        unsigned int data = *regCtrl;
        return ((data) & 0x1);
    }

    void IP_set_inputs(volatile unsigned int data) {
        // while(!(IP_IsReady() == XIL_COMPONENT_IS_READY));
        *reg_inputs = data;
    }

    void IP_set_neurons(volatile unsigned int data) {
        // while(!(IP_IsReady() == XIL_COMPONENT_IS_READY));
        *reg_neurons = data;
    }

    void IP_set_w_offset(volatile unsigned int data) {
        // while(!(IP_IsReady() == XIL_COMPONENT_IS_READY));
        *reg_w_offset = data;
    }

    void IP_set_b_offset(volatile unsigned int data) {
        // while(!(IP_IsReady() == XIL_COMPONENT_IS_READY));
        *reg_b_offset = data;
    }

    void load_2_layer_data() {
        // save the 1st layer output to XVecHW variable
        for(int i=0; i<16; i++) {
            XVecHW[i] = result[i];
        }
    }

    void get_event (int fd) {
        char event_buffer[BUF_LEN];
        int length, i = 0;

        length = read( fd, event_buffer, BUF_LEN );  
        if ( length < 0 ) {
            perror( "read" );
        }  

        while ( i < length ) {
            struct inotify_event *event = ( struct inotify_event * ) &event_buffer[ i ];
            if ( event->len ) {
                
                if ( event->mask & IN_MODIFY) {     
                
                    if ((f_input = fopen("input.txt", "r")) == NULL) {
                        printf ("Can't open file: input.txt\n");
                        exit(0);
                    }

                    // printf("Setting input values.\n");
                    int i = 0;
                    while (!feof (f_input)) {
                        fscanf (f_input, "%f", &buffer);
                        XVecHW[i] = buffer;
                        i++;
                    }
                    fclose (f_input);
                    
                    int inputs = 784;
                    int neurons = 16;

                    IP_set_inputs(inputs);
                    IP_set_neurons(neurons);

                    IP_set_w_offset(0);
                    IP_set_b_offset(0);

                    // gettimeofday(&t1, NULL); // start timer

                    IP_Start();
                    while(!IP_IsDone());

                    // gettimeofday(&t2, NULL); // stop timer

                    // compute and print the elapsed time in millisec
                    // elapsedTime = (t2.tv_sec - t1.tv_sec) * 1000.0;      // sec to ms
                    // elapsedTime += (t2.tv_usec - t1.tv_usec) / 1000.0;   // us to ms
                    // printf("1st layer calculation took %lf ms.\n", elapsedTime);


                    // ----------------------------2nd layer--------------------------------

                    load_2_layer_data();

                    inputs = 16;
                    neurons = 10;

                    IP_set_inputs(16);
                    IP_set_neurons(10);

                    IP_set_w_offset(12544);
                    IP_set_b_offset(16);

                    // gettimeofday(&t1, NULL); // start timer

                    IP_Start();
                    while(!IP_IsDone());

                    // gettimeofday(&t2, NULL); // stop timer

                    // compute and print the elapsed time in millisec
                    // elapsedTime = (t2.tv_sec - t1.tv_sec) * 1000.0;      // sec to ms
                    // elapsedTime += (t2.tv_usec - t1.tv_usec) / 1000.0;   // us to ms
                    // printf("2nd layer calculation took %lf ms.\n", elapsedTime);


                    // find max value and print it with the recognized digit (i index)
                    max_output = result[0];
                    recognized_digit = 0;
                        
                    for (int i = 0; i < 10; i++) {
                        if (max_output < result[i]) {
                            max_output = result[i];
                            recognized_digit = i;    
                        }
                    }
                    // printf("x_test: Recognized digit: %d with output = %f\n", recognized_digit, max_output);
                    // printf("%d\n", recognized_digit);
                    if ((f_output = fopen("out.txt", "w")) == NULL) {
                        printf ("Can't open file: out.txt\n");
                    }
                    // printf("Setting output value.\n");
                    fprintf (f_output, "%d\n", recognized_digit);
                    fclose (f_output);
                    }
                i += EVENT_SIZE + event->len;
            }
        }
    }

    int wd, fd;

    fd = inotify_init();
    if ( fd < 0 ) {
        perror( "Couldn't initialize inotify");
    }

    wd = inotify_add_watch(fd, ".", IN_CREATE | IN_MODIFY | IN_DELETE); 
    if (wd == -1) {
        printf("Couldn't add watch to %s\n", ".");
    } else {
        printf("Watching:: %s\n", ".");
    }

    // ---------------------------Start calculation----------------------
    // printf("MNIST hand-written digits recognition Neural Network - test with %d samples\n", test_samples);

    if ((f_weights = fopen("weights.txt", "r")) == NULL) {
        printf ("Can't open file: weights.txt\n");
        return 0;
    }

    // printf("Setting weigths values.\n");
    int i = 0;
    while (!feof (f_weights)) {
        fscanf (f_weights, "%f", &buffer);
        WVecHW[i] = buffer;
        i++;
    }
    fclose (f_weights);

    if ((f_bias = fopen("biases.txt", "r")) == NULL) {
        printf ("Can't open file: biases.txt\n");
        return 0;
    }

    // printf("Setting biases values.\n");
    i = 0;
    while (!feof (f_bias)) {
        fscanf (f_bias, "%f", &buffer);
        bHW[i] = buffer;
        i++;
    }
    fclose (f_bias);
    
    /* do it forever*/
    while(1) {
        get_event(fd); 
    } 

    /* Clean up*/
    inotify_rm_watch( fd, wd );
    close(fd);

	// printf("End of test\n");

    munmap(x_bram_ptr, 4096);
    munmap(w_bram_ptr, 65536);
    munmap(calcPerceptron_ptr, 4096);
    munmap(res_bram_ptr, 4096);
    munmap(b_bram_ptr, 4096);

    return 0;
}
