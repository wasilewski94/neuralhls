#include <stdio.h>
#include <xcalcperceptron.h>
#include <xparameters.h>
#include <math.h>
#include "AxiTimerHelper.h"

#include "weights.h"
#include "inputs.h"
#include "biases.h"

extern const float weights[64000];
extern const float X[7840];
extern const float biases[500];

float *XVecHW = (float *)0x40000000;
float *resHW = (float *)0x42000000;
float *WVecHW = (float *)0x44000000;
float *bHW = (float *)0x46000000;
int *model = (int *)0x48000000;


XCalcperceptron calcPerceptron;
XCalcperceptron_Config *calcPerceptron_cfg;

void init_PerceptronCore() {
	int status=0;
	calcPerceptron_cfg = XCalcperceptron_LookupConfig(XPAR_NEURAL_NET_CALCPERCEPTRON_0_DEVICE_ID);
	if (calcPerceptron_cfg) {
		status = XCalcperceptron_CfgInitialize(&calcPerceptron, calcPerceptron_cfg);
		if (status != XST_SUCCESS) {
			printf("Failed to initialize\n");
		}
	}
}

//	 activation hidden:
	//sigmoid (0)
	//relu (1)

//	 activation out:
	//sigmoid (0)
	//softmax (1)

void init_load_model() {
	//	         layers, activation_hidden,  activation_out    inputs,  neurons1, neurons2,     neurons3
	int ann_model[30] = {3,      0,                 0,          784,       64,        16,      10	};
    int layers = ann_model[0];
    int w_number = 0;
    int b_number = 0;

    for(int i=0; i< layers+4; i++) {
    	model[i] = ann_model[i];
    	printf("Model parameter %d loaded:\n", model[i]);
    }

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
    	w_number += ann_model[i+3]*ann_model[i+4];
    	b_number += ann_model[i+4];
    }

//    load weights
	for(int i=0; i<w_number; i++) {
		WVecHW[i] = weights[i];
	}
	printf("%d weights loaded\n", w_number);
// 	load biases
	for(int i=0; i<b_number; i++) {
		bHW[i] = biases[i];
	}
	printf("%d biases loaded\n", b_number);

}


void init_load_data(int sample) {

	for(int i=0; i<784; i++) {
		XVecHW[i] = X[i + sample*784];
//		printf("XVecHW: %f\n", XVecHW[i]);
	}

//	XCalcperceptron_Set_inputs(&calcPerceptron, 784);
//	XCalcperceptron_Set_neurons(&calcPerceptron, 16);
//	XCalcperceptron_Set_w_offset(&calcPerceptron, 0);
//	XCalcperceptron_Set_b_offset(&calcPerceptron, 0);

	//	printf("getInputs = %d\n", XCalcperceptron_Get_inputs(&calcPerceptron));
//	printf("getNeurons = %d\n", XCalcperceptron_Get_neurons(&calcPerceptron));

}

void load_2_layer_data() {

	// save the 1st layer output to XVecHW variable
	for(int i=0; i<16; i++) {
		XVecHW[i] = resHW[i];
	}

//	// set weights for layer 2
//	for(int i=0; i<160; i++) {
//		WVecHW[i] = weights[i+12544];
//	}

	// set biases for layer 2
//	for(int i=0; i<10; i++) {
//		bHW[i] = biases[i + 16];
//	}

//	XCalcperceptron_Set_inputs(&calcPerceptron, 16);
//	XCalcperceptron_Set_neurons(&calcPerceptron, 10);
//	XCalcperceptron_Set_w_offset(&calcPerceptron, 12544);
//	XCalcperceptron_Set_b_offset(&calcPerceptron, 16);

}

int main() {

	printf("Neural Network MNIST test for 10 digits\n");
	init_PerceptronCore();
	init_load_model();
	AxiTimerHelper myTimer;
    float prune_thresh = 0.01; //prune threshold will cut out all weights

	for (int j=0; j<10;j++) {

		printf("load initial data for sample %d\n", j);

		init_load_data(j); //set sample 0-9
		printf("X data loaded\n");

		resHW[0] = prune_thresh; // load prune_thresh value
		printf("Prune threshold loaded\n");

		myTimer.startTimer();
		XCalcperceptron_Start(&calcPerceptron);
		while(!XCalcperceptron_IsDone(&calcPerceptron));
		myTimer.stopTimer();
		printf("Calculation finished, in %f ms\n", 1000*myTimer.getElapsedTimerInSeconds());

//		load_2_layer_data();

//		myTimer.startTimer();
//		XCalcperceptron_Start(&calcPerceptron);
//		while(!XCalcperceptron_IsDone(&calcPerceptron));
//		myTimer.stopTimer();
//		printf("2nd layer finished, in %f ms\n", 1000*myTimer.getElapsedTimerInSeconds());
//
		for (int i = 0; i < 10  ; i++) {
			printf("result[%d]: %f\n", i, resHW[i]);
		}

	}
	printf("End of test\n");

	return 0;
}
