#include <hls_math.h>
#include <ap_fixed.h>
#include <stdio.h>

#include "hls_input.h"
#include "hls_weights.h"
#include "hls_biases.h"

// typedef ap_fixed<20,5> xtype;
typedef float xtype;


void calcPerceptron(xtype x[784], xtype w[64000], xtype b[500], xtype res[300], int model[30]);

int main() {
//		          layers, activation_hidden,     activation_out       inputs,  neurons1, neurons2,  neurons3
	int model[30] = {2,      0,                      0,              784,         16,      10	};

//	 activation hidden:
	//sigmoid (0)
	//relu (1)

//	 activation out:
	//sigmoid (0)
	//softmax (1)

	xtype res[300];

	calcPerceptron(xk, weights, biases, res, model);

    for(int i=0; i<10; i++) {
        printf("%f\n", res[i]);
    }

    return 0;
}
