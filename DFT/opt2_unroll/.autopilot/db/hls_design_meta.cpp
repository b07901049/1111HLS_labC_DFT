#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("real_sample_address0", 10, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("real_sample_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("real_sample_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("imag_sample_address0", 10, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("imag_sample_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("imag_sample_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("imag_sample_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("imag_sample_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("imag_sample_address1", 10, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_sample_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_sample_we1", 1, hls_out, 1, "ap_memory", "MemPortWE2", 1),
	Port_Property("imag_sample_d1", 32, hls_out, 1, "ap_memory", "MemPortDIN2", 1),
	Port_Property("imag_sample_q1", 32, hls_in, 1, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_0_address0", 6, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("real_op_0_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_0_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("real_op_0_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("real_op_0_address1", 6, hls_out, 2, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_0_ce1", 1, hls_out, 2, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_0_q1", 32, hls_in, 2, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_1_address0", 6, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("real_op_1_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_1_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("real_op_1_d0", 32, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("real_op_1_address1", 6, hls_out, 3, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_1_ce1", 1, hls_out, 3, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_1_q1", 32, hls_in, 3, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_2_address0", 6, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("real_op_2_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_2_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("real_op_2_d0", 32, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("real_op_2_address1", 6, hls_out, 4, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_2_ce1", 1, hls_out, 4, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_2_q1", 32, hls_in, 4, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_3_address0", 6, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("real_op_3_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_3_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("real_op_3_d0", 32, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("real_op_3_address1", 6, hls_out, 5, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_3_ce1", 1, hls_out, 5, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_3_q1", 32, hls_in, 5, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_4_address0", 6, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("real_op_4_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_4_we0", 1, hls_out, 6, "ap_memory", "mem_we", 1),
	Port_Property("real_op_4_d0", 32, hls_out, 6, "ap_memory", "mem_din", 1),
	Port_Property("real_op_4_address1", 6, hls_out, 6, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_4_ce1", 1, hls_out, 6, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_4_q1", 32, hls_in, 6, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_5_address0", 6, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("real_op_5_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_5_we0", 1, hls_out, 7, "ap_memory", "mem_we", 1),
	Port_Property("real_op_5_d0", 32, hls_out, 7, "ap_memory", "mem_din", 1),
	Port_Property("real_op_5_address1", 6, hls_out, 7, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_5_ce1", 1, hls_out, 7, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_5_q1", 32, hls_in, 7, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_6_address0", 6, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("real_op_6_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_6_we0", 1, hls_out, 8, "ap_memory", "mem_we", 1),
	Port_Property("real_op_6_d0", 32, hls_out, 8, "ap_memory", "mem_din", 1),
	Port_Property("real_op_6_address1", 6, hls_out, 8, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_6_ce1", 1, hls_out, 8, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_6_q1", 32, hls_in, 8, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_7_address0", 6, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("real_op_7_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_7_we0", 1, hls_out, 9, "ap_memory", "mem_we", 1),
	Port_Property("real_op_7_d0", 32, hls_out, 9, "ap_memory", "mem_din", 1),
	Port_Property("real_op_7_address1", 6, hls_out, 9, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_7_ce1", 1, hls_out, 9, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_7_q1", 32, hls_in, 9, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_8_address0", 6, hls_out, 10, "ap_memory", "mem_address", 1),
	Port_Property("real_op_8_ce0", 1, hls_out, 10, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_8_we0", 1, hls_out, 10, "ap_memory", "mem_we", 1),
	Port_Property("real_op_8_d0", 32, hls_out, 10, "ap_memory", "mem_din", 1),
	Port_Property("real_op_8_address1", 6, hls_out, 10, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_8_ce1", 1, hls_out, 10, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_8_q1", 32, hls_in, 10, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_9_address0", 6, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("real_op_9_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_9_we0", 1, hls_out, 11, "ap_memory", "mem_we", 1),
	Port_Property("real_op_9_d0", 32, hls_out, 11, "ap_memory", "mem_din", 1),
	Port_Property("real_op_9_address1", 6, hls_out, 11, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_9_ce1", 1, hls_out, 11, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_9_q1", 32, hls_in, 11, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_10_address0", 6, hls_out, 12, "ap_memory", "mem_address", 1),
	Port_Property("real_op_10_ce0", 1, hls_out, 12, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_10_we0", 1, hls_out, 12, "ap_memory", "mem_we", 1),
	Port_Property("real_op_10_d0", 32, hls_out, 12, "ap_memory", "mem_din", 1),
	Port_Property("real_op_10_address1", 6, hls_out, 12, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_10_ce1", 1, hls_out, 12, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_10_q1", 32, hls_in, 12, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_11_address0", 6, hls_out, 13, "ap_memory", "mem_address", 1),
	Port_Property("real_op_11_ce0", 1, hls_out, 13, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_11_we0", 1, hls_out, 13, "ap_memory", "mem_we", 1),
	Port_Property("real_op_11_d0", 32, hls_out, 13, "ap_memory", "mem_din", 1),
	Port_Property("real_op_11_address1", 6, hls_out, 13, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_11_ce1", 1, hls_out, 13, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_11_q1", 32, hls_in, 13, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_12_address0", 6, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("real_op_12_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_12_we0", 1, hls_out, 14, "ap_memory", "mem_we", 1),
	Port_Property("real_op_12_d0", 32, hls_out, 14, "ap_memory", "mem_din", 1),
	Port_Property("real_op_12_address1", 6, hls_out, 14, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_12_ce1", 1, hls_out, 14, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_12_q1", 32, hls_in, 14, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_13_address0", 6, hls_out, 15, "ap_memory", "mem_address", 1),
	Port_Property("real_op_13_ce0", 1, hls_out, 15, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_13_we0", 1, hls_out, 15, "ap_memory", "mem_we", 1),
	Port_Property("real_op_13_d0", 32, hls_out, 15, "ap_memory", "mem_din", 1),
	Port_Property("real_op_13_address1", 6, hls_out, 15, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_13_ce1", 1, hls_out, 15, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_13_q1", 32, hls_in, 15, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_14_address0", 6, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("real_op_14_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_14_we0", 1, hls_out, 16, "ap_memory", "mem_we", 1),
	Port_Property("real_op_14_d0", 32, hls_out, 16, "ap_memory", "mem_din", 1),
	Port_Property("real_op_14_address1", 6, hls_out, 16, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_14_ce1", 1, hls_out, 16, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_14_q1", 32, hls_in, 16, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_15_address0", 6, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("real_op_15_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_15_we0", 1, hls_out, 17, "ap_memory", "mem_we", 1),
	Port_Property("real_op_15_d0", 32, hls_out, 17, "ap_memory", "mem_din", 1),
	Port_Property("real_op_15_address1", 6, hls_out, 17, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_15_ce1", 1, hls_out, 17, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_15_q1", 32, hls_in, 17, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_16_address0", 6, hls_out, 18, "ap_memory", "mem_address", 1),
	Port_Property("real_op_16_ce0", 1, hls_out, 18, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_16_we0", 1, hls_out, 18, "ap_memory", "mem_we", 1),
	Port_Property("real_op_16_d0", 32, hls_out, 18, "ap_memory", "mem_din", 1),
	Port_Property("real_op_16_address1", 6, hls_out, 18, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_16_ce1", 1, hls_out, 18, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_16_q1", 32, hls_in, 18, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_17_address0", 6, hls_out, 19, "ap_memory", "mem_address", 1),
	Port_Property("real_op_17_ce0", 1, hls_out, 19, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_17_we0", 1, hls_out, 19, "ap_memory", "mem_we", 1),
	Port_Property("real_op_17_d0", 32, hls_out, 19, "ap_memory", "mem_din", 1),
	Port_Property("real_op_17_address1", 6, hls_out, 19, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_17_ce1", 1, hls_out, 19, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_17_q1", 32, hls_in, 19, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_18_address0", 6, hls_out, 20, "ap_memory", "mem_address", 1),
	Port_Property("real_op_18_ce0", 1, hls_out, 20, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_18_we0", 1, hls_out, 20, "ap_memory", "mem_we", 1),
	Port_Property("real_op_18_d0", 32, hls_out, 20, "ap_memory", "mem_din", 1),
	Port_Property("real_op_18_address1", 6, hls_out, 20, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_18_ce1", 1, hls_out, 20, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_18_q1", 32, hls_in, 20, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_19_address0", 6, hls_out, 21, "ap_memory", "mem_address", 1),
	Port_Property("real_op_19_ce0", 1, hls_out, 21, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_19_we0", 1, hls_out, 21, "ap_memory", "mem_we", 1),
	Port_Property("real_op_19_d0", 32, hls_out, 21, "ap_memory", "mem_din", 1),
	Port_Property("real_op_19_address1", 6, hls_out, 21, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_19_ce1", 1, hls_out, 21, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_19_q1", 32, hls_in, 21, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("real_op_20_address0", 6, hls_out, 22, "ap_memory", "mem_address", 1),
	Port_Property("real_op_20_ce0", 1, hls_out, 22, "ap_memory", "mem_ce", 1),
	Port_Property("real_op_20_we0", 1, hls_out, 22, "ap_memory", "mem_we", 1),
	Port_Property("real_op_20_d0", 32, hls_out, 22, "ap_memory", "mem_din", 1),
	Port_Property("real_op_20_address1", 6, hls_out, 22, "ap_memory", "MemPortADDR2", 1),
	Port_Property("real_op_20_ce1", 1, hls_out, 22, "ap_memory", "MemPortCE2", 1),
	Port_Property("real_op_20_q1", 32, hls_in, 22, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_0_address0", 6, hls_out, 23, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_0_ce0", 1, hls_out, 23, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_0_we0", 1, hls_out, 23, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_0_d0", 32, hls_out, 23, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_0_address1", 6, hls_out, 23, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_0_ce1", 1, hls_out, 23, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_0_q1", 32, hls_in, 23, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_1_address0", 6, hls_out, 24, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_1_ce0", 1, hls_out, 24, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_1_we0", 1, hls_out, 24, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_1_d0", 32, hls_out, 24, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_1_address1", 6, hls_out, 24, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_1_ce1", 1, hls_out, 24, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_1_q1", 32, hls_in, 24, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_2_address0", 6, hls_out, 25, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_2_ce0", 1, hls_out, 25, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_2_we0", 1, hls_out, 25, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_2_d0", 32, hls_out, 25, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_2_address1", 6, hls_out, 25, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_2_ce1", 1, hls_out, 25, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_2_q1", 32, hls_in, 25, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_3_address0", 6, hls_out, 26, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_3_ce0", 1, hls_out, 26, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_3_we0", 1, hls_out, 26, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_3_d0", 32, hls_out, 26, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_3_address1", 6, hls_out, 26, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_3_ce1", 1, hls_out, 26, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_3_q1", 32, hls_in, 26, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_4_address0", 6, hls_out, 27, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_4_ce0", 1, hls_out, 27, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_4_we0", 1, hls_out, 27, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_4_d0", 32, hls_out, 27, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_4_address1", 6, hls_out, 27, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_4_ce1", 1, hls_out, 27, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_4_q1", 32, hls_in, 27, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_5_address0", 6, hls_out, 28, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_5_ce0", 1, hls_out, 28, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_5_we0", 1, hls_out, 28, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_5_d0", 32, hls_out, 28, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_5_address1", 6, hls_out, 28, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_5_ce1", 1, hls_out, 28, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_5_q1", 32, hls_in, 28, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_6_address0", 6, hls_out, 29, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_6_ce0", 1, hls_out, 29, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_6_we0", 1, hls_out, 29, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_6_d0", 32, hls_out, 29, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_6_address1", 6, hls_out, 29, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_6_ce1", 1, hls_out, 29, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_6_q1", 32, hls_in, 29, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_7_address0", 6, hls_out, 30, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_7_ce0", 1, hls_out, 30, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_7_we0", 1, hls_out, 30, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_7_d0", 32, hls_out, 30, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_7_address1", 6, hls_out, 30, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_7_ce1", 1, hls_out, 30, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_7_q1", 32, hls_in, 30, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_8_address0", 6, hls_out, 31, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_8_ce0", 1, hls_out, 31, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_8_we0", 1, hls_out, 31, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_8_d0", 32, hls_out, 31, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_8_address1", 6, hls_out, 31, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_8_ce1", 1, hls_out, 31, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_8_q1", 32, hls_in, 31, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_9_address0", 6, hls_out, 32, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_9_ce0", 1, hls_out, 32, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_9_we0", 1, hls_out, 32, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_9_d0", 32, hls_out, 32, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_9_address1", 6, hls_out, 32, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_9_ce1", 1, hls_out, 32, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_9_q1", 32, hls_in, 32, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_10_address0", 6, hls_out, 33, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_10_ce0", 1, hls_out, 33, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_10_we0", 1, hls_out, 33, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_10_d0", 32, hls_out, 33, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_10_address1", 6, hls_out, 33, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_10_ce1", 1, hls_out, 33, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_10_q1", 32, hls_in, 33, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_11_address0", 6, hls_out, 34, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_11_ce0", 1, hls_out, 34, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_11_we0", 1, hls_out, 34, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_11_d0", 32, hls_out, 34, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_11_address1", 6, hls_out, 34, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_11_ce1", 1, hls_out, 34, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_11_q1", 32, hls_in, 34, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_12_address0", 6, hls_out, 35, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_12_ce0", 1, hls_out, 35, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_12_we0", 1, hls_out, 35, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_12_d0", 32, hls_out, 35, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_12_address1", 6, hls_out, 35, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_12_ce1", 1, hls_out, 35, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_12_q1", 32, hls_in, 35, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_13_address0", 6, hls_out, 36, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_13_ce0", 1, hls_out, 36, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_13_we0", 1, hls_out, 36, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_13_d0", 32, hls_out, 36, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_13_address1", 6, hls_out, 36, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_13_ce1", 1, hls_out, 36, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_13_q1", 32, hls_in, 36, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_14_address0", 6, hls_out, 37, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_14_ce0", 1, hls_out, 37, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_14_we0", 1, hls_out, 37, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_14_d0", 32, hls_out, 37, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_14_address1", 6, hls_out, 37, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_14_ce1", 1, hls_out, 37, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_14_q1", 32, hls_in, 37, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_15_address0", 6, hls_out, 38, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_15_ce0", 1, hls_out, 38, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_15_we0", 1, hls_out, 38, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_15_d0", 32, hls_out, 38, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_15_address1", 6, hls_out, 38, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_15_ce1", 1, hls_out, 38, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_15_q1", 32, hls_in, 38, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_16_address0", 6, hls_out, 39, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_16_ce0", 1, hls_out, 39, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_16_we0", 1, hls_out, 39, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_16_d0", 32, hls_out, 39, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_16_address1", 6, hls_out, 39, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_16_ce1", 1, hls_out, 39, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_16_q1", 32, hls_in, 39, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_17_address0", 6, hls_out, 40, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_17_ce0", 1, hls_out, 40, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_17_we0", 1, hls_out, 40, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_17_d0", 32, hls_out, 40, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_17_address1", 6, hls_out, 40, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_17_ce1", 1, hls_out, 40, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_17_q1", 32, hls_in, 40, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_18_address0", 6, hls_out, 41, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_18_ce0", 1, hls_out, 41, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_18_we0", 1, hls_out, 41, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_18_d0", 32, hls_out, 41, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_18_address1", 6, hls_out, 41, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_18_ce1", 1, hls_out, 41, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_18_q1", 32, hls_in, 41, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_19_address0", 6, hls_out, 42, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_19_ce0", 1, hls_out, 42, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_19_we0", 1, hls_out, 42, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_19_d0", 32, hls_out, 42, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_19_address1", 6, hls_out, 42, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_19_ce1", 1, hls_out, 42, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_19_q1", 32, hls_in, 42, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("imag_op_20_address0", 6, hls_out, 43, "ap_memory", "mem_address", 1),
	Port_Property("imag_op_20_ce0", 1, hls_out, 43, "ap_memory", "mem_ce", 1),
	Port_Property("imag_op_20_we0", 1, hls_out, 43, "ap_memory", "mem_we", 1),
	Port_Property("imag_op_20_d0", 32, hls_out, 43, "ap_memory", "mem_din", 1),
	Port_Property("imag_op_20_address1", 6, hls_out, 43, "ap_memory", "MemPortADDR2", 1),
	Port_Property("imag_op_20_ce1", 1, hls_out, 43, "ap_memory", "MemPortCE2", 1),
	Port_Property("imag_op_20_q1", 32, hls_in, 43, "ap_memory", "MemPortDOUT2", 1),
};
const char* HLS_Design_Meta::dut_name = "dft";
