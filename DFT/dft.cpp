#include<math.h>
#include "dft.h"
#include "coefficients1024.h"

void dft(DTYPE real_sample[1024], DTYPE imag_sample[1024],DTYPE real_op[1024],DTYPE imag_op[1024])
{
	#pragma HLS BIND_STORAGE variable=real_op type=ram_2p
	#pragma HLS BIND_STORAGE variable=imag_op type=ram_2p

	int k, n;
	int index, index0, index1, index2, index3, index4, index5, index6, index7, index8, index9, index10,index11, index12, index13, index14, index15, index16, index17, index18, index19, index20, sel;
	float temp_r0, temp_r1, temp_r2, temp_r3, temp_r4, temp_r5, temp_r6, temp_r7, temp_r8, temp_r9, temp_r10,temp_r11, temp_r12, temp_r13, temp_r14, temp_r15, temp_r16, temp_r17, temp_r18, temp_r19, temp_r20;
	float temp_i0, temp_i1, temp_i2, temp_i3, temp_i4, temp_i5, temp_i6, temp_i7, temp_i8, temp_i9, temp_i10,temp_i11, temp_i12, temp_i13, temp_i14, temp_i15, temp_i16, temp_i17, temp_i18, temp_i19, temp_i20;

	#pragma HLS ARRAY_PARTITION dim=1 factor=21 type=cyclic variable=real_op
	#pragma HLS ARRAY_PARTITION dim=1 factor=21 type=cyclic variable=imag_op

	for (n = 0; n < 1024; n++)
	{
		for (k = 0; k < 1024; k+=21){
			#pragma HLS PIPELINE II=1

			index0  = ((k     ) * n) & 1023;
			index1 	= ((k + 1 ) * n) & 1023;
			index2 	= ((k + 2 ) * n) & 1023;
			index3 	= ((k + 3 ) * n) & 1023;
			index4 	= ((k + 4 ) * n) & 1023;
			index5 	= ((k + 5 ) * n) & 1023;
			index6 	= ((k + 6 ) * n) & 1023;
			index7 	= ((k + 7 ) * n) & 1023;
			index8 	= ((k + 8 ) * n) & 1023;
			index9 	= ((k + 9 ) * n) & 1023;
			index10 = ((k + 10) * n) & 1023;
			index11 = ((k + 11) * n) & 1023;
			index12 = ((k + 12) * n) & 1023;
			index13 = ((k + 13) * n) & 1023;
			index14 = ((k + 14) * n) & 1023;
			index15 = ((k + 15) * n) & 1023;
			index16 = ((k + 16) * n) & 1023;
			index17 = ((k + 17) * n) & 1023;
			index18 = ((k + 18) * n) & 1023;
			index19 = ((k + 19) * n) & 1023;
			index20 = ((k + 20) * n) & 1023;

			real_op[k     ] += real_sample[n] * cos_coefficients_table[ 0][ index0];
			imag_op[k     ] += real_sample[n] * sin_coefficients_table[ 0][ index0];
			real_op[k +  1] += real_sample[n] * cos_coefficients_table[ 1][ index1];
			imag_op[k +  1] += real_sample[n] * sin_coefficients_table[ 1][ index1];
			real_op[k +  2] += real_sample[n] * cos_coefficients_table[ 2][ index2];
			imag_op[k +  2] += real_sample[n] * sin_coefficients_table[ 2][ index2];
			real_op[k +  3] += real_sample[n] * cos_coefficients_table[ 3][ index3];
			imag_op[k +  3] += real_sample[n] * sin_coefficients_table[ 3][ index3];
			real_op[k +  4] += real_sample[n] * cos_coefficients_table[ 4][ index4];
			imag_op[k +  4] += real_sample[n] * sin_coefficients_table[ 4][ index4];
			real_op[k +  5] += real_sample[n] * cos_coefficients_table[ 5][ index5];
			imag_op[k +  5] += real_sample[n] * sin_coefficients_table[ 5][ index5];
			real_op[k +  6] += real_sample[n] * cos_coefficients_table[ 6][ index6];
			imag_op[k +  6] += real_sample[n] * sin_coefficients_table[ 6][ index6];
			real_op[k +  7] += real_sample[n] * cos_coefficients_table[ 7][ index7];
			imag_op[k +  7] += real_sample[n] * sin_coefficients_table[ 7][ index7];
			real_op[k +  8] += real_sample[n] * cos_coefficients_table[ 8][ index8];
			imag_op[k +  8] += real_sample[n] * sin_coefficients_table[ 8][ index8];
			real_op[k +  9] += real_sample[n] * cos_coefficients_table[ 9][ index9];
			imag_op[k +  9] += real_sample[n] * sin_coefficients_table[ 9][ index9];
			real_op[k + 10] += real_sample[n] * cos_coefficients_table[10][index10];
			imag_op[k + 10] += real_sample[n] * sin_coefficients_table[10][index10];
			real_op[k + 11] += real_sample[n] * cos_coefficients_table[11][index11];
			imag_op[k + 11] += real_sample[n] * sin_coefficients_table[11][index11];
			real_op[k + 12] += real_sample[n] * cos_coefficients_table[12][index12];
			imag_op[k + 12] += real_sample[n] * sin_coefficients_table[12][index12];
			real_op[k + 13] += real_sample[n] * cos_coefficients_table[13][index13];
			imag_op[k + 13] += real_sample[n] * sin_coefficients_table[13][index13];
			real_op[k + 14] += real_sample[n] * cos_coefficients_table[14][index14];
			imag_op[k + 14] += real_sample[n] * sin_coefficients_table[14][index14];
			real_op[k + 15] += real_sample[n] * cos_coefficients_table[15][index15];
			imag_op[k + 15] += real_sample[n] * sin_coefficients_table[15][index15];

			if(k == 1008){
				temp_r16 = 0;
				temp_i16 = 0;
				temp_r17 = 0;
				temp_i17 = 0;
				temp_r18 = 0;
				temp_i18 = 0;
				temp_r19 = 0;
				temp_i19 = 0;
				temp_r20 = 0;
				temp_i20 = 0;
			}
			else{
				temp_r16 = real_sample[n] * cos_coefficients_table[16][index16];
				temp_i16 = real_sample[n] * sin_coefficients_table[16][index16];
				temp_r17 = real_sample[n] * cos_coefficients_table[17][index17];
				temp_i17 = real_sample[n] * sin_coefficients_table[17][index17];
				temp_r18 = real_sample[n] * cos_coefficients_table[18][index18];
				temp_i18 = real_sample[n] * sin_coefficients_table[18][index18];
				temp_r19 = real_sample[n] * cos_coefficients_table[19][index19];
				temp_i19 = real_sample[n] * sin_coefficients_table[19][index19];
				temp_r20 = real_sample[n] * cos_coefficients_table[20][index20];
				temp_i20 = real_sample[n] * sin_coefficients_table[20][index20];
			};

			real_op[k + 16] += temp_r16;
			imag_op[k + 16] += temp_i16;
			real_op[k + 17] += temp_r17;
			imag_op[k + 17] += temp_i17;
			real_op[k + 18] += temp_r18;
			imag_op[k + 18] += temp_i18;
			real_op[k + 19] += temp_r19;
			imag_op[k + 19] += temp_i19;
			real_op[k + 20] += temp_r20;
			imag_op[k + 20] += temp_i20;

		}
	}
	return;
}
