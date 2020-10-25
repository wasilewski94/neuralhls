#include <stdio.h>
#include <ap_fixed.h>
#include "core.h"

void calcPerceptron(x_type x[784], res_type res[NEUR+10]);

int main()
{
	x_type XVec[784] = {
#include "hls_input.h"
	};

	res_type result[NEUR+10];

	calcPerceptron(XVec, result);

	// Print the results
	for (int i = 0; i < NEUR+10; i++)
	{
		printf("Result[%d]=%f\n", i, (float)result[i]);
//		XVec[i] = res[i];
	}


	return 0;
}
