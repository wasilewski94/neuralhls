#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <string.h>
#include <sys/time.h>

#define XIL_COMPONENT_IS_READY     0x11111111U


int main(int argc, char* argv[])
{
    //files with weights, input, and biases
    FILE *f_weights;
    FILE *f_input;
    FILE *f_bias;
    FILE *f_labels;
    FILE *f_model;

    struct timeval t1, t2;
    double elapsedTime;

    char xdir[20];
    int test_samples = 10;
    if(argc == 2) {
        test_samples = atoi(argv[1]);
    }     

    if(test_samples < 1 || test_samples > 10000) {
        printf ("Number of test samples must be between 1 and 10000!\n");    
        return 0;
    }
   
    float buffer;
    int label_buf;
    int model_buf;


    float max_output;
    int recognized_digit; 
    
    int labels[10000];
    int misclassified = 0;

    int fd_x;
    int fd_w;
    int fd_calc;
    int fd_res;
    int fd_b;
    int fd_mod;

    char *x_bram = "/dev/uio0";
    char *res_bram = "/dev/uio1";
    char *w_bram = "/dev/uio2";
    char *b_bram = "/dev/uio3";
    char *model_bram = "/dev/uio4";
    char *calcPerceptron = "/dev/uio5";


    void *x_bram_ptr;
    void *res_bram_ptr;
    void *w_bram_ptr;
    void *b_bram_ptr;
    void *calcPerceptron_ptr;
    void *model_bram_ptr;
    

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

    fd_mod = open(model_bram, O_RDWR);
    if (fd_mod < 1) {
        printf("Invalid UIO device file:%s.\n", model_bram);
        return -1;
    }

    // mmap the bram device into user space
    x_bram_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_x, 0);
    if (x_bram_ptr == MAP_FAILED) {
        printf("Mmap x_bram call failure.\n");
        return -1;
    }
    volatile float *XVecHW = (float *)(x_bram_ptr);

    w_bram_ptr = mmap(NULL, 262144, PROT_READ|PROT_WRITE, MAP_SHARED, fd_w, 0);
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

    model_bram_ptr = mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd_mod, 0);
    if (model_bram_ptr == MAP_FAILED) {
        printf("Mmap model_bram call failure.\n");
        return -1;
    }
    volatile int *model = (int *)(model_bram_ptr);


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

//	 activation hidden:
	//sigmoid (0)
	//relu (1)

//	 activation out:
	//sigmoid (0)
	//softmax (1)

int init_load_model() {

    if ((f_model = fopen("model.txt", "r")) == NULL) {
        printf ("Can't open file: model.txt\n");
        return 0;
    }

    printf("Setting model parameters.\n");
    int i = 0;
    while (!feof (f_model)) {
        fscanf (f_model, "%d", &model_buf);
        model[i] = model_buf;
        printf("Model parameter %d loaded:\n", model[i]);
        i++;
    }
    fclose (f_model);

	//	         layers, activation_hidden,  activation_out    inputs,  neurons1, neurons2,neurons3
	// int ann_model[30] = {2,      0,                 0,          784,        16,      10	};
    int layers = model[0];
    int w_number = 0;
    int b_number = 0;

	printf("Model has %d layers:\n", layers);

	for(int i=0; i< layers; i++) {
		printf("  - layer %d with %d neurons ", i+1, model[i+4]);
		if(i == layers-1)
			printf(" -- output layer\n");
		else
			printf(" -- hidden layer\n");
    }

	printf("Activation functions: \n");
	printf("  - hidden layers: ");

	if(model[1] == 0)
		printf("sigmoid()\n");
	else
		printf("ReLU()\n");

	printf("  - output layer: ");
	if(model[2] == 0)
		printf("sigmoid()\n");
	else
		printf("softmax()\n");


    // calculate w_number and b_number
    for(int i=0;i < layers; i++) {
    	w_number += model[i+3]*model[i+4];
    	b_number += model[i+4];
    }

    return 1;
}


    int load_digit_file(int n_sample) {

        // set the path name
        snprintf(xdir, 20, "x/x%d.txt", n_sample); // puts n_sample number into xdir string
        printf("Reading file: %s\n", xdir);

        if ((f_input = fopen(xdir, "r")) == NULL) {
            printf ("Can't open file: %s\n", xdir);
            return 0;
        }

        printf("Setting input values.\n");
        int i = 0;
        while (!feof (f_input)) {
            fscanf (f_input, "%f", &buffer);
            XVecHW[i] = buffer;
            i++;
        }

        fclose (f_input);
        return 1;
    }

    int init_load_data() {

        if ((f_weights = fopen("weights.txt", "r")) == NULL) {
            printf ("Can't open file: weights.txt\n");
            return 0;
        }

        printf("Setting weights values.\n");
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

        printf("Setting biases values.\n");
        i = 0;
        while (!feof (f_bias)) {
            fscanf (f_bias, "%f", &buffer);
            bHW[i] = buffer;
            i++;
        }
        fclose (f_bias);


        if ((f_labels = fopen("test_labels.txt", "r")) == NULL) {
            printf ("Can't open file: labels.txt\n");
            return 0;
        }

        printf("Setting labels values.\n");
        i = 0;
        while (!feof (f_labels)) {
            fscanf (f_labels, "%d", &label_buf);
            labels[i] = label_buf;
            i++;
        }
        fclose (f_labels);

        return 1;
    }


// ---------------------------Start calculation----------------------
    printf("MNIST hand-written digits recognition Neural Network - test with %d samples\n", test_samples);

    if(!init_load_data()) {
        return 0;
    }

    if(!init_load_model()) {
        return 0;
    }

    for(int sample=0; sample < test_samples; sample++) {

        // printf("load initial data for sample %d\n", sample);
        if(!load_digit_file(sample)) {
            return 0;
        }

        gettimeofday(&t1, NULL); // start timer

        IP_Start();
        while(!IP_IsDone());

        gettimeofday(&t2, NULL); // stop timer
        
        // compute and print the elapsed time in millisec
        elapsedTime = (t2.tv_sec - t1.tv_sec) * 1000.0;      // sec to ms
        elapsedTime += (t2.tv_usec - t1.tv_usec) / 1000.0;   // us to ms
        printf("Neural Network calculation took %lf ms.\n", elapsedTime);



        // find max value and print it with the recognized digit (i index)
        max_output = result[0];
        recognized_digit = 0;
         
        for(int i = 0; i < 10; i++) {
            if (max_output < result[i]) {
                max_output = result[i];
                recognized_digit = i;    
            }
    	}
        // chceck the prediction 
    	if(recognized_digit != labels[sample]) {
            printf("x_test[%d]: Recognized digit: %d with output = %f -- FALSE (expected %d)\n", sample, recognized_digit, max_output, labels[sample]);
            misclassified++;
        } else {
            printf("x_test[%d]: Recognized digit: %d with output = %f\n", sample, recognized_digit, max_output);
        }
    }

    printf("Misclassified: %d digits.\n", misclassified);
    printf("Accuracy: %f\n", (float)(test_samples - misclassified)/test_samples);
    printf("End of test\n");

    munmap(x_bram_ptr, 4096);
    munmap(w_bram_ptr, 65536);
    munmap(calcPerceptron_ptr, 4096);
    munmap(res_bram_ptr, 4096);
    munmap(b_bram_ptr, 4096);

    return 0;
}
