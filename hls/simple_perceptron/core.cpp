#include <hls_math.h>
#include <ap_fixed.h>

#define INPUTS1 784
#define NEURONS1 64
#define INPUTS2 64
#define NEURONS2 16
#define INPUTS3 16
#define NEURONS3 10

// typedef ap_fixed<20,5> xtype;
typedef float xtype;
void calcPerceptron(xtype x[784], xtype w[64000], xtype b[500], xtype res[300], int model[30]) {

    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

    #pragma HLS INTERFACE bram port=x
    #pragma HLS INTERFACE bram port=w
    #pragma HLS INTERFACE bram port=res
    #pragma HLS INTERFACE bram port=b
    #pragma HLS INTERFACE bram port=model

    xtype sum = 0.0;
    float zero_ref = 0.0;
    float softmax_sum = 0.0;
    int layers = model[0];
    float prune_thresh = res[0];

//	//             layers, activation_hidden ,  activation_out,    inputs,  neurons1, neurons2,  neurons3
//    int model[30] = {3,      0,                      0               784,       64,       16,	  10	};
    int w_offset = 0;
    int b_offset = 0;

	calcPerceptron_label2:
	for(int l=0; l<layers; l++) {
		calcPerceptron_label3:
		for(int j=0; j<model[l+4]; j++){
            calcPerceptron_label0:
			for (int i = 0; i < model[l+3]; i++) {
				if (hls::fabs(w[i + model[l+3]*j + w_offset]) > prune_thresh) { //weights pruning
					sum += x[i] * w[i + model[l+3]*j + w_offset];
				}
            }
			if(l == layers-1) { // the last layer
				if(model[2] == 0){ //chose activation out function
					res[j] = 1.0 / (1 + hls::expf(-( sum + b[j + b_offset]))); //sigmoid (0)
				} else {
					res[j] = hls::expf( sum + b[j + b_offset]); 			   //softmax (1)
					softmax_sum +=res[j];
				}
			} else {
				if(model[1] == 0){ //chose activation function
					res[j] = 1.0 / (1 + hls::expf(-( sum + b[j + b_offset]))); //sigmoid (0)
				} else {
					res[j] = hls::fmax(sum, zero_ref ); 					   //ReLU (1)
				}
			}

			sum = 0.0;
        }
        calcPerceptron_label1:
		for(int k = 0; k<model[l+4]; k++) {
            x[k] = res[k];
        }
		w_offset += model[l+4]*model[l+3];
		b_offset += model[l+4];

	}

	//calculate softmax
	if(model[2] == 1){
		for(int j=0; j<model[layers+3]; j++){
			res[j] /= softmax_sum;
		}
	}


}

