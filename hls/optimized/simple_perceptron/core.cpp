#include <hls_math.h>
#include "core.h"

void calcPerceptron(x_type x[784], res_type res[NEUR+10])
{
#pragma HLS RESOURCE variable=x core=RAM_1P_BRAM
#pragma HLS RESOURCE variable=res core=RAM_1P_BRAM
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE bram port=x
#pragma HLS INTERFACE bram port=res

	ap_type w[784*NEUR] = {
#include "hls_weights1.h"
		};

ap_type w2[10*NEUR] = {
#include "hls_weights2.h"
		};

//#pragma HLS ARRAY_PARTITION variable=w block factor=4 dim=1
#pragma HLS RESOURCE variable=w core=ROM_2P_BRAM

	ap_type b[NEUR+10] = {
#include "hls_biases.h"
	};
ap_type xbuf[784] = {0.0};

for(int i=0; i<784; i++) {
#pragma HLS PIPELINE II=2
	xbuf[i] = x[i];
}
ap_type resbuf[NEUR+10] = {0.0};
ap_type sum[NEUR+10] = {0.0};
ap_type softmax_sum = 0.0;


// first layer ---------------------------------------------
	calcPerceptron_label0:
	for(int j = 0; j<NEUR; j++){
#pragma HLS PIPELINE II=10
		calcPerceptron_label1:
		for (int i = 0; i < 784; i++) {
#pragma HLS PIPELINE II=10
//#pragma HLS UNROLL factor=4
		sum[j] += (xbuf[i] * w[i + 784*j]);
		}
	}
	for(int i=0; i<NEUR; i++) {
#pragma HLS PIPELINE II=10
#pragma HLS UNROLL factor=2
//		resbuf[i] = (half)1.0 / ((half)1.0 + hls::half_exp(-( sum[i]+ b[i])));
		resbuf[i] = sum[i] > (ap_type)0 ? sum[i] : (ap_type)0;
	}

// second layer ---------------------------------------------
	calcPerceptron_label2:
	for(int j = 0; j<10; j++){
#pragma HLS DEPENDENCE variable=sum inter false
#pragma HLS PIPELINE II=10
		calcPerceptron_label3:
		for (int i = 0; i < NEUR; i++) {
#pragma HLS PIPELINE II=10
//#pragma HLS UNROLL factor=2
			sum[j+NEUR] += (resbuf[i] * w2[i + NEUR*j]);
		}
	}
	for(int i=0; i<NEUR; i++) {
#pragma HLS PIPELINE II=10
		resbuf[i+NEUR] = hls::half_exp(sum[i+NEUR] + b[i + B_OFFSET]); //softmax
//		resbuf[i+NEUR] = (half)1.0 / ((half)1.0 + hls::half_exp(-( sum[i+NEUR] + b[i + B_OFFSET])));
//		resbuf[i+NEUR] = sum[i+NEUR] > (ap_type)0 ? sum[i+NEUR] : (ap_type)0;
		softmax_sum +=resbuf[i+NEUR];
	}

	for(int i=NEUR; i<NEUR+10; i++) {
#pragma HLS PIPELINE II=10
		res[i] = resbuf[i]/softmax_sum;
	}

}
