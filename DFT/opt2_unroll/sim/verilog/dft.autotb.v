// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      dft
`define AUTOTB_DUT_INST AESL_inst_dft
`define AUTOTB_TOP      apatb_dft_top
`define AUTOTB_LAT_RESULT_FILE "dft.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "dft.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_dft_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.80

`define AESL_MEM_real_sample AESL_automem_real_sample
`define AESL_MEM_INST_real_sample mem_inst_real_sample
`define AESL_MEM_imag_sample AESL_automem_imag_sample
`define AESL_MEM_INST_imag_sample mem_inst_imag_sample
`define AESL_MEM_real_op_0 AESL_automem_real_op_0
`define AESL_MEM_INST_real_op_0 mem_inst_real_op_0
`define AESL_MEM_real_op_1 AESL_automem_real_op_1
`define AESL_MEM_INST_real_op_1 mem_inst_real_op_1
`define AESL_MEM_real_op_2 AESL_automem_real_op_2
`define AESL_MEM_INST_real_op_2 mem_inst_real_op_2
`define AESL_MEM_real_op_3 AESL_automem_real_op_3
`define AESL_MEM_INST_real_op_3 mem_inst_real_op_3
`define AESL_MEM_real_op_4 AESL_automem_real_op_4
`define AESL_MEM_INST_real_op_4 mem_inst_real_op_4
`define AESL_MEM_real_op_5 AESL_automem_real_op_5
`define AESL_MEM_INST_real_op_5 mem_inst_real_op_5
`define AESL_MEM_real_op_6 AESL_automem_real_op_6
`define AESL_MEM_INST_real_op_6 mem_inst_real_op_6
`define AESL_MEM_real_op_7 AESL_automem_real_op_7
`define AESL_MEM_INST_real_op_7 mem_inst_real_op_7
`define AESL_MEM_real_op_8 AESL_automem_real_op_8
`define AESL_MEM_INST_real_op_8 mem_inst_real_op_8
`define AESL_MEM_real_op_9 AESL_automem_real_op_9
`define AESL_MEM_INST_real_op_9 mem_inst_real_op_9
`define AESL_MEM_real_op_10 AESL_automem_real_op_10
`define AESL_MEM_INST_real_op_10 mem_inst_real_op_10
`define AESL_MEM_real_op_11 AESL_automem_real_op_11
`define AESL_MEM_INST_real_op_11 mem_inst_real_op_11
`define AESL_MEM_real_op_12 AESL_automem_real_op_12
`define AESL_MEM_INST_real_op_12 mem_inst_real_op_12
`define AESL_MEM_real_op_13 AESL_automem_real_op_13
`define AESL_MEM_INST_real_op_13 mem_inst_real_op_13
`define AESL_MEM_real_op_14 AESL_automem_real_op_14
`define AESL_MEM_INST_real_op_14 mem_inst_real_op_14
`define AESL_MEM_real_op_15 AESL_automem_real_op_15
`define AESL_MEM_INST_real_op_15 mem_inst_real_op_15
`define AESL_MEM_real_op_16 AESL_automem_real_op_16
`define AESL_MEM_INST_real_op_16 mem_inst_real_op_16
`define AESL_MEM_real_op_17 AESL_automem_real_op_17
`define AESL_MEM_INST_real_op_17 mem_inst_real_op_17
`define AESL_MEM_real_op_18 AESL_automem_real_op_18
`define AESL_MEM_INST_real_op_18 mem_inst_real_op_18
`define AESL_MEM_real_op_19 AESL_automem_real_op_19
`define AESL_MEM_INST_real_op_19 mem_inst_real_op_19
`define AESL_MEM_real_op_20 AESL_automem_real_op_20
`define AESL_MEM_INST_real_op_20 mem_inst_real_op_20
`define AESL_MEM_imag_op_0 AESL_automem_imag_op_0
`define AESL_MEM_INST_imag_op_0 mem_inst_imag_op_0
`define AESL_MEM_imag_op_1 AESL_automem_imag_op_1
`define AESL_MEM_INST_imag_op_1 mem_inst_imag_op_1
`define AESL_MEM_imag_op_2 AESL_automem_imag_op_2
`define AESL_MEM_INST_imag_op_2 mem_inst_imag_op_2
`define AESL_MEM_imag_op_3 AESL_automem_imag_op_3
`define AESL_MEM_INST_imag_op_3 mem_inst_imag_op_3
`define AESL_MEM_imag_op_4 AESL_automem_imag_op_4
`define AESL_MEM_INST_imag_op_4 mem_inst_imag_op_4
`define AESL_MEM_imag_op_5 AESL_automem_imag_op_5
`define AESL_MEM_INST_imag_op_5 mem_inst_imag_op_5
`define AESL_MEM_imag_op_6 AESL_automem_imag_op_6
`define AESL_MEM_INST_imag_op_6 mem_inst_imag_op_6
`define AESL_MEM_imag_op_7 AESL_automem_imag_op_7
`define AESL_MEM_INST_imag_op_7 mem_inst_imag_op_7
`define AESL_MEM_imag_op_8 AESL_automem_imag_op_8
`define AESL_MEM_INST_imag_op_8 mem_inst_imag_op_8
`define AESL_MEM_imag_op_9 AESL_automem_imag_op_9
`define AESL_MEM_INST_imag_op_9 mem_inst_imag_op_9
`define AESL_MEM_imag_op_10 AESL_automem_imag_op_10
`define AESL_MEM_INST_imag_op_10 mem_inst_imag_op_10
`define AESL_MEM_imag_op_11 AESL_automem_imag_op_11
`define AESL_MEM_INST_imag_op_11 mem_inst_imag_op_11
`define AESL_MEM_imag_op_12 AESL_automem_imag_op_12
`define AESL_MEM_INST_imag_op_12 mem_inst_imag_op_12
`define AESL_MEM_imag_op_13 AESL_automem_imag_op_13
`define AESL_MEM_INST_imag_op_13 mem_inst_imag_op_13
`define AESL_MEM_imag_op_14 AESL_automem_imag_op_14
`define AESL_MEM_INST_imag_op_14 mem_inst_imag_op_14
`define AESL_MEM_imag_op_15 AESL_automem_imag_op_15
`define AESL_MEM_INST_imag_op_15 mem_inst_imag_op_15
`define AESL_MEM_imag_op_16 AESL_automem_imag_op_16
`define AESL_MEM_INST_imag_op_16 mem_inst_imag_op_16
`define AESL_MEM_imag_op_17 AESL_automem_imag_op_17
`define AESL_MEM_INST_imag_op_17 mem_inst_imag_op_17
`define AESL_MEM_imag_op_18 AESL_automem_imag_op_18
`define AESL_MEM_INST_imag_op_18 mem_inst_imag_op_18
`define AESL_MEM_imag_op_19 AESL_automem_imag_op_19
`define AESL_MEM_INST_imag_op_19 mem_inst_imag_op_19
`define AESL_MEM_imag_op_20 AESL_automem_imag_op_20
`define AESL_MEM_INST_imag_op_20 mem_inst_imag_op_20
`define AUTOTB_TVIN_real_sample  "../tv/cdatafile/c.dft.autotvin_real_sample.dat"
`define AUTOTB_TVIN_real_op_0  "../tv/cdatafile/c.dft.autotvin_real_op_0.dat"
`define AUTOTB_TVIN_real_op_1  "../tv/cdatafile/c.dft.autotvin_real_op_1.dat"
`define AUTOTB_TVIN_real_op_2  "../tv/cdatafile/c.dft.autotvin_real_op_2.dat"
`define AUTOTB_TVIN_real_op_3  "../tv/cdatafile/c.dft.autotvin_real_op_3.dat"
`define AUTOTB_TVIN_real_op_4  "../tv/cdatafile/c.dft.autotvin_real_op_4.dat"
`define AUTOTB_TVIN_real_op_5  "../tv/cdatafile/c.dft.autotvin_real_op_5.dat"
`define AUTOTB_TVIN_real_op_6  "../tv/cdatafile/c.dft.autotvin_real_op_6.dat"
`define AUTOTB_TVIN_real_op_7  "../tv/cdatafile/c.dft.autotvin_real_op_7.dat"
`define AUTOTB_TVIN_real_op_8  "../tv/cdatafile/c.dft.autotvin_real_op_8.dat"
`define AUTOTB_TVIN_real_op_9  "../tv/cdatafile/c.dft.autotvin_real_op_9.dat"
`define AUTOTB_TVIN_real_op_10  "../tv/cdatafile/c.dft.autotvin_real_op_10.dat"
`define AUTOTB_TVIN_real_op_11  "../tv/cdatafile/c.dft.autotvin_real_op_11.dat"
`define AUTOTB_TVIN_real_op_12  "../tv/cdatafile/c.dft.autotvin_real_op_12.dat"
`define AUTOTB_TVIN_real_op_13  "../tv/cdatafile/c.dft.autotvin_real_op_13.dat"
`define AUTOTB_TVIN_real_op_14  "../tv/cdatafile/c.dft.autotvin_real_op_14.dat"
`define AUTOTB_TVIN_real_op_15  "../tv/cdatafile/c.dft.autotvin_real_op_15.dat"
`define AUTOTB_TVIN_real_op_16  "../tv/cdatafile/c.dft.autotvin_real_op_16.dat"
`define AUTOTB_TVIN_real_op_17  "../tv/cdatafile/c.dft.autotvin_real_op_17.dat"
`define AUTOTB_TVIN_real_op_18  "../tv/cdatafile/c.dft.autotvin_real_op_18.dat"
`define AUTOTB_TVIN_real_op_19  "../tv/cdatafile/c.dft.autotvin_real_op_19.dat"
`define AUTOTB_TVIN_real_op_20  "../tv/cdatafile/c.dft.autotvin_real_op_20.dat"
`define AUTOTB_TVIN_imag_op_0  "../tv/cdatafile/c.dft.autotvin_imag_op_0.dat"
`define AUTOTB_TVIN_imag_op_1  "../tv/cdatafile/c.dft.autotvin_imag_op_1.dat"
`define AUTOTB_TVIN_imag_op_2  "../tv/cdatafile/c.dft.autotvin_imag_op_2.dat"
`define AUTOTB_TVIN_imag_op_3  "../tv/cdatafile/c.dft.autotvin_imag_op_3.dat"
`define AUTOTB_TVIN_imag_op_4  "../tv/cdatafile/c.dft.autotvin_imag_op_4.dat"
`define AUTOTB_TVIN_imag_op_5  "../tv/cdatafile/c.dft.autotvin_imag_op_5.dat"
`define AUTOTB_TVIN_imag_op_6  "../tv/cdatafile/c.dft.autotvin_imag_op_6.dat"
`define AUTOTB_TVIN_imag_op_7  "../tv/cdatafile/c.dft.autotvin_imag_op_7.dat"
`define AUTOTB_TVIN_imag_op_8  "../tv/cdatafile/c.dft.autotvin_imag_op_8.dat"
`define AUTOTB_TVIN_imag_op_9  "../tv/cdatafile/c.dft.autotvin_imag_op_9.dat"
`define AUTOTB_TVIN_imag_op_10  "../tv/cdatafile/c.dft.autotvin_imag_op_10.dat"
`define AUTOTB_TVIN_imag_op_11  "../tv/cdatafile/c.dft.autotvin_imag_op_11.dat"
`define AUTOTB_TVIN_imag_op_12  "../tv/cdatafile/c.dft.autotvin_imag_op_12.dat"
`define AUTOTB_TVIN_imag_op_13  "../tv/cdatafile/c.dft.autotvin_imag_op_13.dat"
`define AUTOTB_TVIN_imag_op_14  "../tv/cdatafile/c.dft.autotvin_imag_op_14.dat"
`define AUTOTB_TVIN_imag_op_15  "../tv/cdatafile/c.dft.autotvin_imag_op_15.dat"
`define AUTOTB_TVIN_imag_op_16  "../tv/cdatafile/c.dft.autotvin_imag_op_16.dat"
`define AUTOTB_TVIN_imag_op_17  "../tv/cdatafile/c.dft.autotvin_imag_op_17.dat"
`define AUTOTB_TVIN_imag_op_18  "../tv/cdatafile/c.dft.autotvin_imag_op_18.dat"
`define AUTOTB_TVIN_imag_op_19  "../tv/cdatafile/c.dft.autotvin_imag_op_19.dat"
`define AUTOTB_TVIN_imag_op_20  "../tv/cdatafile/c.dft.autotvin_imag_op_20.dat"
`define AUTOTB_TVIN_real_sample_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_sample.dat"
`define AUTOTB_TVIN_real_op_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_0.dat"
`define AUTOTB_TVIN_real_op_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_1.dat"
`define AUTOTB_TVIN_real_op_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_2.dat"
`define AUTOTB_TVIN_real_op_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_3.dat"
`define AUTOTB_TVIN_real_op_4_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_4.dat"
`define AUTOTB_TVIN_real_op_5_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_5.dat"
`define AUTOTB_TVIN_real_op_6_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_6.dat"
`define AUTOTB_TVIN_real_op_7_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_7.dat"
`define AUTOTB_TVIN_real_op_8_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_8.dat"
`define AUTOTB_TVIN_real_op_9_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_9.dat"
`define AUTOTB_TVIN_real_op_10_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_10.dat"
`define AUTOTB_TVIN_real_op_11_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_11.dat"
`define AUTOTB_TVIN_real_op_12_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_12.dat"
`define AUTOTB_TVIN_real_op_13_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_13.dat"
`define AUTOTB_TVIN_real_op_14_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_14.dat"
`define AUTOTB_TVIN_real_op_15_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_15.dat"
`define AUTOTB_TVIN_real_op_16_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_16.dat"
`define AUTOTB_TVIN_real_op_17_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_17.dat"
`define AUTOTB_TVIN_real_op_18_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_18.dat"
`define AUTOTB_TVIN_real_op_19_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_19.dat"
`define AUTOTB_TVIN_real_op_20_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_real_op_20.dat"
`define AUTOTB_TVIN_imag_op_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_0.dat"
`define AUTOTB_TVIN_imag_op_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_1.dat"
`define AUTOTB_TVIN_imag_op_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_2.dat"
`define AUTOTB_TVIN_imag_op_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_3.dat"
`define AUTOTB_TVIN_imag_op_4_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_4.dat"
`define AUTOTB_TVIN_imag_op_5_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_5.dat"
`define AUTOTB_TVIN_imag_op_6_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_6.dat"
`define AUTOTB_TVIN_imag_op_7_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_7.dat"
`define AUTOTB_TVIN_imag_op_8_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_8.dat"
`define AUTOTB_TVIN_imag_op_9_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_9.dat"
`define AUTOTB_TVIN_imag_op_10_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_10.dat"
`define AUTOTB_TVIN_imag_op_11_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_11.dat"
`define AUTOTB_TVIN_imag_op_12_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_12.dat"
`define AUTOTB_TVIN_imag_op_13_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_13.dat"
`define AUTOTB_TVIN_imag_op_14_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_14.dat"
`define AUTOTB_TVIN_imag_op_15_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_15.dat"
`define AUTOTB_TVIN_imag_op_16_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_16.dat"
`define AUTOTB_TVIN_imag_op_17_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_17.dat"
`define AUTOTB_TVIN_imag_op_18_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_18.dat"
`define AUTOTB_TVIN_imag_op_19_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_19.dat"
`define AUTOTB_TVIN_imag_op_20_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_imag_op_20.dat"
`define AUTOTB_TVOUT_real_op_0  "../tv/cdatafile/c.dft.autotvout_real_op_0.dat"
`define AUTOTB_TVOUT_real_op_1  "../tv/cdatafile/c.dft.autotvout_real_op_1.dat"
`define AUTOTB_TVOUT_real_op_2  "../tv/cdatafile/c.dft.autotvout_real_op_2.dat"
`define AUTOTB_TVOUT_real_op_3  "../tv/cdatafile/c.dft.autotvout_real_op_3.dat"
`define AUTOTB_TVOUT_real_op_4  "../tv/cdatafile/c.dft.autotvout_real_op_4.dat"
`define AUTOTB_TVOUT_real_op_5  "../tv/cdatafile/c.dft.autotvout_real_op_5.dat"
`define AUTOTB_TVOUT_real_op_6  "../tv/cdatafile/c.dft.autotvout_real_op_6.dat"
`define AUTOTB_TVOUT_real_op_7  "../tv/cdatafile/c.dft.autotvout_real_op_7.dat"
`define AUTOTB_TVOUT_real_op_8  "../tv/cdatafile/c.dft.autotvout_real_op_8.dat"
`define AUTOTB_TVOUT_real_op_9  "../tv/cdatafile/c.dft.autotvout_real_op_9.dat"
`define AUTOTB_TVOUT_real_op_10  "../tv/cdatafile/c.dft.autotvout_real_op_10.dat"
`define AUTOTB_TVOUT_real_op_11  "../tv/cdatafile/c.dft.autotvout_real_op_11.dat"
`define AUTOTB_TVOUT_real_op_12  "../tv/cdatafile/c.dft.autotvout_real_op_12.dat"
`define AUTOTB_TVOUT_real_op_13  "../tv/cdatafile/c.dft.autotvout_real_op_13.dat"
`define AUTOTB_TVOUT_real_op_14  "../tv/cdatafile/c.dft.autotvout_real_op_14.dat"
`define AUTOTB_TVOUT_real_op_15  "../tv/cdatafile/c.dft.autotvout_real_op_15.dat"
`define AUTOTB_TVOUT_real_op_16  "../tv/cdatafile/c.dft.autotvout_real_op_16.dat"
`define AUTOTB_TVOUT_real_op_17  "../tv/cdatafile/c.dft.autotvout_real_op_17.dat"
`define AUTOTB_TVOUT_real_op_18  "../tv/cdatafile/c.dft.autotvout_real_op_18.dat"
`define AUTOTB_TVOUT_real_op_19  "../tv/cdatafile/c.dft.autotvout_real_op_19.dat"
`define AUTOTB_TVOUT_real_op_20  "../tv/cdatafile/c.dft.autotvout_real_op_20.dat"
`define AUTOTB_TVOUT_imag_op_0  "../tv/cdatafile/c.dft.autotvout_imag_op_0.dat"
`define AUTOTB_TVOUT_imag_op_1  "../tv/cdatafile/c.dft.autotvout_imag_op_1.dat"
`define AUTOTB_TVOUT_imag_op_2  "../tv/cdatafile/c.dft.autotvout_imag_op_2.dat"
`define AUTOTB_TVOUT_imag_op_3  "../tv/cdatafile/c.dft.autotvout_imag_op_3.dat"
`define AUTOTB_TVOUT_imag_op_4  "../tv/cdatafile/c.dft.autotvout_imag_op_4.dat"
`define AUTOTB_TVOUT_imag_op_5  "../tv/cdatafile/c.dft.autotvout_imag_op_5.dat"
`define AUTOTB_TVOUT_imag_op_6  "../tv/cdatafile/c.dft.autotvout_imag_op_6.dat"
`define AUTOTB_TVOUT_imag_op_7  "../tv/cdatafile/c.dft.autotvout_imag_op_7.dat"
`define AUTOTB_TVOUT_imag_op_8  "../tv/cdatafile/c.dft.autotvout_imag_op_8.dat"
`define AUTOTB_TVOUT_imag_op_9  "../tv/cdatafile/c.dft.autotvout_imag_op_9.dat"
`define AUTOTB_TVOUT_imag_op_10  "../tv/cdatafile/c.dft.autotvout_imag_op_10.dat"
`define AUTOTB_TVOUT_imag_op_11  "../tv/cdatafile/c.dft.autotvout_imag_op_11.dat"
`define AUTOTB_TVOUT_imag_op_12  "../tv/cdatafile/c.dft.autotvout_imag_op_12.dat"
`define AUTOTB_TVOUT_imag_op_13  "../tv/cdatafile/c.dft.autotvout_imag_op_13.dat"
`define AUTOTB_TVOUT_imag_op_14  "../tv/cdatafile/c.dft.autotvout_imag_op_14.dat"
`define AUTOTB_TVOUT_imag_op_15  "../tv/cdatafile/c.dft.autotvout_imag_op_15.dat"
`define AUTOTB_TVOUT_imag_op_16  "../tv/cdatafile/c.dft.autotvout_imag_op_16.dat"
`define AUTOTB_TVOUT_imag_op_17  "../tv/cdatafile/c.dft.autotvout_imag_op_17.dat"
`define AUTOTB_TVOUT_imag_op_18  "../tv/cdatafile/c.dft.autotvout_imag_op_18.dat"
`define AUTOTB_TVOUT_imag_op_19  "../tv/cdatafile/c.dft.autotvout_imag_op_19.dat"
`define AUTOTB_TVOUT_imag_op_20  "../tv/cdatafile/c.dft.autotvout_imag_op_20.dat"
`define AUTOTB_TVOUT_real_op_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_0.dat"
`define AUTOTB_TVOUT_real_op_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_1.dat"
`define AUTOTB_TVOUT_real_op_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_2.dat"
`define AUTOTB_TVOUT_real_op_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_3.dat"
`define AUTOTB_TVOUT_real_op_4_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_4.dat"
`define AUTOTB_TVOUT_real_op_5_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_5.dat"
`define AUTOTB_TVOUT_real_op_6_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_6.dat"
`define AUTOTB_TVOUT_real_op_7_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_7.dat"
`define AUTOTB_TVOUT_real_op_8_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_8.dat"
`define AUTOTB_TVOUT_real_op_9_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_9.dat"
`define AUTOTB_TVOUT_real_op_10_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_10.dat"
`define AUTOTB_TVOUT_real_op_11_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_11.dat"
`define AUTOTB_TVOUT_real_op_12_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_12.dat"
`define AUTOTB_TVOUT_real_op_13_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_13.dat"
`define AUTOTB_TVOUT_real_op_14_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_14.dat"
`define AUTOTB_TVOUT_real_op_15_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_15.dat"
`define AUTOTB_TVOUT_real_op_16_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_16.dat"
`define AUTOTB_TVOUT_real_op_17_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_17.dat"
`define AUTOTB_TVOUT_real_op_18_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_18.dat"
`define AUTOTB_TVOUT_real_op_19_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_19.dat"
`define AUTOTB_TVOUT_real_op_20_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_real_op_20.dat"
`define AUTOTB_TVOUT_imag_op_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_0.dat"
`define AUTOTB_TVOUT_imag_op_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_1.dat"
`define AUTOTB_TVOUT_imag_op_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_2.dat"
`define AUTOTB_TVOUT_imag_op_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_3.dat"
`define AUTOTB_TVOUT_imag_op_4_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_4.dat"
`define AUTOTB_TVOUT_imag_op_5_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_5.dat"
`define AUTOTB_TVOUT_imag_op_6_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_6.dat"
`define AUTOTB_TVOUT_imag_op_7_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_7.dat"
`define AUTOTB_TVOUT_imag_op_8_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_8.dat"
`define AUTOTB_TVOUT_imag_op_9_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_9.dat"
`define AUTOTB_TVOUT_imag_op_10_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_10.dat"
`define AUTOTB_TVOUT_imag_op_11_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_11.dat"
`define AUTOTB_TVOUT_imag_op_12_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_12.dat"
`define AUTOTB_TVOUT_imag_op_13_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_13.dat"
`define AUTOTB_TVOUT_imag_op_14_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_14.dat"
`define AUTOTB_TVOUT_imag_op_15_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_15.dat"
`define AUTOTB_TVOUT_imag_op_16_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_16.dat"
`define AUTOTB_TVOUT_imag_op_17_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_17.dat"
`define AUTOTB_TVOUT_imag_op_18_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_18.dat"
`define AUTOTB_TVOUT_imag_op_19_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_19.dat"
`define AUTOTB_TVOUT_imag_op_20_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_imag_op_20.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 50210;
parameter LENGTH_real_sample = 1024;
parameter LENGTH_imag_sample = 1024;
parameter LENGTH_real_op_0 = 49;
parameter LENGTH_real_op_1 = 49;
parameter LENGTH_real_op_2 = 49;
parameter LENGTH_real_op_3 = 49;
parameter LENGTH_real_op_4 = 49;
parameter LENGTH_real_op_5 = 49;
parameter LENGTH_real_op_6 = 49;
parameter LENGTH_real_op_7 = 49;
parameter LENGTH_real_op_8 = 49;
parameter LENGTH_real_op_9 = 49;
parameter LENGTH_real_op_10 = 49;
parameter LENGTH_real_op_11 = 49;
parameter LENGTH_real_op_12 = 49;
parameter LENGTH_real_op_13 = 49;
parameter LENGTH_real_op_14 = 49;
parameter LENGTH_real_op_15 = 49;
parameter LENGTH_real_op_16 = 49;
parameter LENGTH_real_op_17 = 49;
parameter LENGTH_real_op_18 = 49;
parameter LENGTH_real_op_19 = 49;
parameter LENGTH_real_op_20 = 49;
parameter LENGTH_imag_op_0 = 49;
parameter LENGTH_imag_op_1 = 49;
parameter LENGTH_imag_op_2 = 49;
parameter LENGTH_imag_op_3 = 49;
parameter LENGTH_imag_op_4 = 49;
parameter LENGTH_imag_op_5 = 49;
parameter LENGTH_imag_op_6 = 49;
parameter LENGTH_imag_op_7 = 49;
parameter LENGTH_imag_op_8 = 49;
parameter LENGTH_imag_op_9 = 49;
parameter LENGTH_imag_op_10 = 49;
parameter LENGTH_imag_op_11 = 49;
parameter LENGTH_imag_op_12 = 49;
parameter LENGTH_imag_op_13 = 49;
parameter LENGTH_imag_op_14 = 49;
parameter LENGTH_imag_op_15 = 49;
parameter LENGTH_imag_op_16 = 49;
parameter LENGTH_imag_op_17 = 49;
parameter LENGTH_imag_op_18 = 49;
parameter LENGTH_imag_op_19 = 49;
parameter LENGTH_imag_op_20 = 49;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [9 : 0] real_sample_address0;
wire  real_sample_ce0;
wire [31 : 0] real_sample_q0;
wire [9 : 0] imag_sample_address0;
wire  imag_sample_ce0;
wire  imag_sample_we0;
wire [31 : 0] imag_sample_d0;
wire [31 : 0] imag_sample_q0;
wire [9 : 0] imag_sample_address1;
wire  imag_sample_ce1;
wire  imag_sample_we1;
wire [31 : 0] imag_sample_d1;
wire [31 : 0] imag_sample_q1;
wire [5 : 0] real_op_0_address0;
wire  real_op_0_ce0;
wire  real_op_0_we0;
wire [31 : 0] real_op_0_d0;
wire [5 : 0] real_op_0_address1;
wire  real_op_0_ce1;
wire [31 : 0] real_op_0_q1;
wire [5 : 0] real_op_1_address0;
wire  real_op_1_ce0;
wire  real_op_1_we0;
wire [31 : 0] real_op_1_d0;
wire [5 : 0] real_op_1_address1;
wire  real_op_1_ce1;
wire [31 : 0] real_op_1_q1;
wire [5 : 0] real_op_2_address0;
wire  real_op_2_ce0;
wire  real_op_2_we0;
wire [31 : 0] real_op_2_d0;
wire [5 : 0] real_op_2_address1;
wire  real_op_2_ce1;
wire [31 : 0] real_op_2_q1;
wire [5 : 0] real_op_3_address0;
wire  real_op_3_ce0;
wire  real_op_3_we0;
wire [31 : 0] real_op_3_d0;
wire [5 : 0] real_op_3_address1;
wire  real_op_3_ce1;
wire [31 : 0] real_op_3_q1;
wire [5 : 0] real_op_4_address0;
wire  real_op_4_ce0;
wire  real_op_4_we0;
wire [31 : 0] real_op_4_d0;
wire [5 : 0] real_op_4_address1;
wire  real_op_4_ce1;
wire [31 : 0] real_op_4_q1;
wire [5 : 0] real_op_5_address0;
wire  real_op_5_ce0;
wire  real_op_5_we0;
wire [31 : 0] real_op_5_d0;
wire [5 : 0] real_op_5_address1;
wire  real_op_5_ce1;
wire [31 : 0] real_op_5_q1;
wire [5 : 0] real_op_6_address0;
wire  real_op_6_ce0;
wire  real_op_6_we0;
wire [31 : 0] real_op_6_d0;
wire [5 : 0] real_op_6_address1;
wire  real_op_6_ce1;
wire [31 : 0] real_op_6_q1;
wire [5 : 0] real_op_7_address0;
wire  real_op_7_ce0;
wire  real_op_7_we0;
wire [31 : 0] real_op_7_d0;
wire [5 : 0] real_op_7_address1;
wire  real_op_7_ce1;
wire [31 : 0] real_op_7_q1;
wire [5 : 0] real_op_8_address0;
wire  real_op_8_ce0;
wire  real_op_8_we0;
wire [31 : 0] real_op_8_d0;
wire [5 : 0] real_op_8_address1;
wire  real_op_8_ce1;
wire [31 : 0] real_op_8_q1;
wire [5 : 0] real_op_9_address0;
wire  real_op_9_ce0;
wire  real_op_9_we0;
wire [31 : 0] real_op_9_d0;
wire [5 : 0] real_op_9_address1;
wire  real_op_9_ce1;
wire [31 : 0] real_op_9_q1;
wire [5 : 0] real_op_10_address0;
wire  real_op_10_ce0;
wire  real_op_10_we0;
wire [31 : 0] real_op_10_d0;
wire [5 : 0] real_op_10_address1;
wire  real_op_10_ce1;
wire [31 : 0] real_op_10_q1;
wire [5 : 0] real_op_11_address0;
wire  real_op_11_ce0;
wire  real_op_11_we0;
wire [31 : 0] real_op_11_d0;
wire [5 : 0] real_op_11_address1;
wire  real_op_11_ce1;
wire [31 : 0] real_op_11_q1;
wire [5 : 0] real_op_12_address0;
wire  real_op_12_ce0;
wire  real_op_12_we0;
wire [31 : 0] real_op_12_d0;
wire [5 : 0] real_op_12_address1;
wire  real_op_12_ce1;
wire [31 : 0] real_op_12_q1;
wire [5 : 0] real_op_13_address0;
wire  real_op_13_ce0;
wire  real_op_13_we0;
wire [31 : 0] real_op_13_d0;
wire [5 : 0] real_op_13_address1;
wire  real_op_13_ce1;
wire [31 : 0] real_op_13_q1;
wire [5 : 0] real_op_14_address0;
wire  real_op_14_ce0;
wire  real_op_14_we0;
wire [31 : 0] real_op_14_d0;
wire [5 : 0] real_op_14_address1;
wire  real_op_14_ce1;
wire [31 : 0] real_op_14_q1;
wire [5 : 0] real_op_15_address0;
wire  real_op_15_ce0;
wire  real_op_15_we0;
wire [31 : 0] real_op_15_d0;
wire [5 : 0] real_op_15_address1;
wire  real_op_15_ce1;
wire [31 : 0] real_op_15_q1;
wire [5 : 0] real_op_16_address0;
wire  real_op_16_ce0;
wire  real_op_16_we0;
wire [31 : 0] real_op_16_d0;
wire [5 : 0] real_op_16_address1;
wire  real_op_16_ce1;
wire [31 : 0] real_op_16_q1;
wire [5 : 0] real_op_17_address0;
wire  real_op_17_ce0;
wire  real_op_17_we0;
wire [31 : 0] real_op_17_d0;
wire [5 : 0] real_op_17_address1;
wire  real_op_17_ce1;
wire [31 : 0] real_op_17_q1;
wire [5 : 0] real_op_18_address0;
wire  real_op_18_ce0;
wire  real_op_18_we0;
wire [31 : 0] real_op_18_d0;
wire [5 : 0] real_op_18_address1;
wire  real_op_18_ce1;
wire [31 : 0] real_op_18_q1;
wire [5 : 0] real_op_19_address0;
wire  real_op_19_ce0;
wire  real_op_19_we0;
wire [31 : 0] real_op_19_d0;
wire [5 : 0] real_op_19_address1;
wire  real_op_19_ce1;
wire [31 : 0] real_op_19_q1;
wire [5 : 0] real_op_20_address0;
wire  real_op_20_ce0;
wire  real_op_20_we0;
wire [31 : 0] real_op_20_d0;
wire [5 : 0] real_op_20_address1;
wire  real_op_20_ce1;
wire [31 : 0] real_op_20_q1;
wire [5 : 0] imag_op_0_address0;
wire  imag_op_0_ce0;
wire  imag_op_0_we0;
wire [31 : 0] imag_op_0_d0;
wire [5 : 0] imag_op_0_address1;
wire  imag_op_0_ce1;
wire [31 : 0] imag_op_0_q1;
wire [5 : 0] imag_op_1_address0;
wire  imag_op_1_ce0;
wire  imag_op_1_we0;
wire [31 : 0] imag_op_1_d0;
wire [5 : 0] imag_op_1_address1;
wire  imag_op_1_ce1;
wire [31 : 0] imag_op_1_q1;
wire [5 : 0] imag_op_2_address0;
wire  imag_op_2_ce0;
wire  imag_op_2_we0;
wire [31 : 0] imag_op_2_d0;
wire [5 : 0] imag_op_2_address1;
wire  imag_op_2_ce1;
wire [31 : 0] imag_op_2_q1;
wire [5 : 0] imag_op_3_address0;
wire  imag_op_3_ce0;
wire  imag_op_3_we0;
wire [31 : 0] imag_op_3_d0;
wire [5 : 0] imag_op_3_address1;
wire  imag_op_3_ce1;
wire [31 : 0] imag_op_3_q1;
wire [5 : 0] imag_op_4_address0;
wire  imag_op_4_ce0;
wire  imag_op_4_we0;
wire [31 : 0] imag_op_4_d0;
wire [5 : 0] imag_op_4_address1;
wire  imag_op_4_ce1;
wire [31 : 0] imag_op_4_q1;
wire [5 : 0] imag_op_5_address0;
wire  imag_op_5_ce0;
wire  imag_op_5_we0;
wire [31 : 0] imag_op_5_d0;
wire [5 : 0] imag_op_5_address1;
wire  imag_op_5_ce1;
wire [31 : 0] imag_op_5_q1;
wire [5 : 0] imag_op_6_address0;
wire  imag_op_6_ce0;
wire  imag_op_6_we0;
wire [31 : 0] imag_op_6_d0;
wire [5 : 0] imag_op_6_address1;
wire  imag_op_6_ce1;
wire [31 : 0] imag_op_6_q1;
wire [5 : 0] imag_op_7_address0;
wire  imag_op_7_ce0;
wire  imag_op_7_we0;
wire [31 : 0] imag_op_7_d0;
wire [5 : 0] imag_op_7_address1;
wire  imag_op_7_ce1;
wire [31 : 0] imag_op_7_q1;
wire [5 : 0] imag_op_8_address0;
wire  imag_op_8_ce0;
wire  imag_op_8_we0;
wire [31 : 0] imag_op_8_d0;
wire [5 : 0] imag_op_8_address1;
wire  imag_op_8_ce1;
wire [31 : 0] imag_op_8_q1;
wire [5 : 0] imag_op_9_address0;
wire  imag_op_9_ce0;
wire  imag_op_9_we0;
wire [31 : 0] imag_op_9_d0;
wire [5 : 0] imag_op_9_address1;
wire  imag_op_9_ce1;
wire [31 : 0] imag_op_9_q1;
wire [5 : 0] imag_op_10_address0;
wire  imag_op_10_ce0;
wire  imag_op_10_we0;
wire [31 : 0] imag_op_10_d0;
wire [5 : 0] imag_op_10_address1;
wire  imag_op_10_ce1;
wire [31 : 0] imag_op_10_q1;
wire [5 : 0] imag_op_11_address0;
wire  imag_op_11_ce0;
wire  imag_op_11_we0;
wire [31 : 0] imag_op_11_d0;
wire [5 : 0] imag_op_11_address1;
wire  imag_op_11_ce1;
wire [31 : 0] imag_op_11_q1;
wire [5 : 0] imag_op_12_address0;
wire  imag_op_12_ce0;
wire  imag_op_12_we0;
wire [31 : 0] imag_op_12_d0;
wire [5 : 0] imag_op_12_address1;
wire  imag_op_12_ce1;
wire [31 : 0] imag_op_12_q1;
wire [5 : 0] imag_op_13_address0;
wire  imag_op_13_ce0;
wire  imag_op_13_we0;
wire [31 : 0] imag_op_13_d0;
wire [5 : 0] imag_op_13_address1;
wire  imag_op_13_ce1;
wire [31 : 0] imag_op_13_q1;
wire [5 : 0] imag_op_14_address0;
wire  imag_op_14_ce0;
wire  imag_op_14_we0;
wire [31 : 0] imag_op_14_d0;
wire [5 : 0] imag_op_14_address1;
wire  imag_op_14_ce1;
wire [31 : 0] imag_op_14_q1;
wire [5 : 0] imag_op_15_address0;
wire  imag_op_15_ce0;
wire  imag_op_15_we0;
wire [31 : 0] imag_op_15_d0;
wire [5 : 0] imag_op_15_address1;
wire  imag_op_15_ce1;
wire [31 : 0] imag_op_15_q1;
wire [5 : 0] imag_op_16_address0;
wire  imag_op_16_ce0;
wire  imag_op_16_we0;
wire [31 : 0] imag_op_16_d0;
wire [5 : 0] imag_op_16_address1;
wire  imag_op_16_ce1;
wire [31 : 0] imag_op_16_q1;
wire [5 : 0] imag_op_17_address0;
wire  imag_op_17_ce0;
wire  imag_op_17_we0;
wire [31 : 0] imag_op_17_d0;
wire [5 : 0] imag_op_17_address1;
wire  imag_op_17_ce1;
wire [31 : 0] imag_op_17_q1;
wire [5 : 0] imag_op_18_address0;
wire  imag_op_18_ce0;
wire  imag_op_18_we0;
wire [31 : 0] imag_op_18_d0;
wire [5 : 0] imag_op_18_address1;
wire  imag_op_18_ce1;
wire [31 : 0] imag_op_18_q1;
wire [5 : 0] imag_op_19_address0;
wire  imag_op_19_ce0;
wire  imag_op_19_we0;
wire [31 : 0] imag_op_19_d0;
wire [5 : 0] imag_op_19_address1;
wire  imag_op_19_ce1;
wire [31 : 0] imag_op_19_q1;
wire [5 : 0] imag_op_20_address0;
wire  imag_op_20_ce0;
wire  imag_op_20_we0;
wire [31 : 0] imag_op_20_d0;
wire [5 : 0] imag_op_20_address1;
wire  imag_op_20_ce1;
wire [31 : 0] imag_op_20_q1;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .real_sample_address0(real_sample_address0),
    .real_sample_ce0(real_sample_ce0),
    .real_sample_q0(real_sample_q0),
    .imag_sample_address0(imag_sample_address0),
    .imag_sample_ce0(imag_sample_ce0),
    .imag_sample_we0(imag_sample_we0),
    .imag_sample_d0(imag_sample_d0),
    .imag_sample_q0(imag_sample_q0),
    .imag_sample_address1(imag_sample_address1),
    .imag_sample_ce1(imag_sample_ce1),
    .imag_sample_we1(imag_sample_we1),
    .imag_sample_d1(imag_sample_d1),
    .imag_sample_q1(imag_sample_q1),
    .real_op_0_address0(real_op_0_address0),
    .real_op_0_ce0(real_op_0_ce0),
    .real_op_0_we0(real_op_0_we0),
    .real_op_0_d0(real_op_0_d0),
    .real_op_0_address1(real_op_0_address1),
    .real_op_0_ce1(real_op_0_ce1),
    .real_op_0_q1(real_op_0_q1),
    .real_op_1_address0(real_op_1_address0),
    .real_op_1_ce0(real_op_1_ce0),
    .real_op_1_we0(real_op_1_we0),
    .real_op_1_d0(real_op_1_d0),
    .real_op_1_address1(real_op_1_address1),
    .real_op_1_ce1(real_op_1_ce1),
    .real_op_1_q1(real_op_1_q1),
    .real_op_2_address0(real_op_2_address0),
    .real_op_2_ce0(real_op_2_ce0),
    .real_op_2_we0(real_op_2_we0),
    .real_op_2_d0(real_op_2_d0),
    .real_op_2_address1(real_op_2_address1),
    .real_op_2_ce1(real_op_2_ce1),
    .real_op_2_q1(real_op_2_q1),
    .real_op_3_address0(real_op_3_address0),
    .real_op_3_ce0(real_op_3_ce0),
    .real_op_3_we0(real_op_3_we0),
    .real_op_3_d0(real_op_3_d0),
    .real_op_3_address1(real_op_3_address1),
    .real_op_3_ce1(real_op_3_ce1),
    .real_op_3_q1(real_op_3_q1),
    .real_op_4_address0(real_op_4_address0),
    .real_op_4_ce0(real_op_4_ce0),
    .real_op_4_we0(real_op_4_we0),
    .real_op_4_d0(real_op_4_d0),
    .real_op_4_address1(real_op_4_address1),
    .real_op_4_ce1(real_op_4_ce1),
    .real_op_4_q1(real_op_4_q1),
    .real_op_5_address0(real_op_5_address0),
    .real_op_5_ce0(real_op_5_ce0),
    .real_op_5_we0(real_op_5_we0),
    .real_op_5_d0(real_op_5_d0),
    .real_op_5_address1(real_op_5_address1),
    .real_op_5_ce1(real_op_5_ce1),
    .real_op_5_q1(real_op_5_q1),
    .real_op_6_address0(real_op_6_address0),
    .real_op_6_ce0(real_op_6_ce0),
    .real_op_6_we0(real_op_6_we0),
    .real_op_6_d0(real_op_6_d0),
    .real_op_6_address1(real_op_6_address1),
    .real_op_6_ce1(real_op_6_ce1),
    .real_op_6_q1(real_op_6_q1),
    .real_op_7_address0(real_op_7_address0),
    .real_op_7_ce0(real_op_7_ce0),
    .real_op_7_we0(real_op_7_we0),
    .real_op_7_d0(real_op_7_d0),
    .real_op_7_address1(real_op_7_address1),
    .real_op_7_ce1(real_op_7_ce1),
    .real_op_7_q1(real_op_7_q1),
    .real_op_8_address0(real_op_8_address0),
    .real_op_8_ce0(real_op_8_ce0),
    .real_op_8_we0(real_op_8_we0),
    .real_op_8_d0(real_op_8_d0),
    .real_op_8_address1(real_op_8_address1),
    .real_op_8_ce1(real_op_8_ce1),
    .real_op_8_q1(real_op_8_q1),
    .real_op_9_address0(real_op_9_address0),
    .real_op_9_ce0(real_op_9_ce0),
    .real_op_9_we0(real_op_9_we0),
    .real_op_9_d0(real_op_9_d0),
    .real_op_9_address1(real_op_9_address1),
    .real_op_9_ce1(real_op_9_ce1),
    .real_op_9_q1(real_op_9_q1),
    .real_op_10_address0(real_op_10_address0),
    .real_op_10_ce0(real_op_10_ce0),
    .real_op_10_we0(real_op_10_we0),
    .real_op_10_d0(real_op_10_d0),
    .real_op_10_address1(real_op_10_address1),
    .real_op_10_ce1(real_op_10_ce1),
    .real_op_10_q1(real_op_10_q1),
    .real_op_11_address0(real_op_11_address0),
    .real_op_11_ce0(real_op_11_ce0),
    .real_op_11_we0(real_op_11_we0),
    .real_op_11_d0(real_op_11_d0),
    .real_op_11_address1(real_op_11_address1),
    .real_op_11_ce1(real_op_11_ce1),
    .real_op_11_q1(real_op_11_q1),
    .real_op_12_address0(real_op_12_address0),
    .real_op_12_ce0(real_op_12_ce0),
    .real_op_12_we0(real_op_12_we0),
    .real_op_12_d0(real_op_12_d0),
    .real_op_12_address1(real_op_12_address1),
    .real_op_12_ce1(real_op_12_ce1),
    .real_op_12_q1(real_op_12_q1),
    .real_op_13_address0(real_op_13_address0),
    .real_op_13_ce0(real_op_13_ce0),
    .real_op_13_we0(real_op_13_we0),
    .real_op_13_d0(real_op_13_d0),
    .real_op_13_address1(real_op_13_address1),
    .real_op_13_ce1(real_op_13_ce1),
    .real_op_13_q1(real_op_13_q1),
    .real_op_14_address0(real_op_14_address0),
    .real_op_14_ce0(real_op_14_ce0),
    .real_op_14_we0(real_op_14_we0),
    .real_op_14_d0(real_op_14_d0),
    .real_op_14_address1(real_op_14_address1),
    .real_op_14_ce1(real_op_14_ce1),
    .real_op_14_q1(real_op_14_q1),
    .real_op_15_address0(real_op_15_address0),
    .real_op_15_ce0(real_op_15_ce0),
    .real_op_15_we0(real_op_15_we0),
    .real_op_15_d0(real_op_15_d0),
    .real_op_15_address1(real_op_15_address1),
    .real_op_15_ce1(real_op_15_ce1),
    .real_op_15_q1(real_op_15_q1),
    .real_op_16_address0(real_op_16_address0),
    .real_op_16_ce0(real_op_16_ce0),
    .real_op_16_we0(real_op_16_we0),
    .real_op_16_d0(real_op_16_d0),
    .real_op_16_address1(real_op_16_address1),
    .real_op_16_ce1(real_op_16_ce1),
    .real_op_16_q1(real_op_16_q1),
    .real_op_17_address0(real_op_17_address0),
    .real_op_17_ce0(real_op_17_ce0),
    .real_op_17_we0(real_op_17_we0),
    .real_op_17_d0(real_op_17_d0),
    .real_op_17_address1(real_op_17_address1),
    .real_op_17_ce1(real_op_17_ce1),
    .real_op_17_q1(real_op_17_q1),
    .real_op_18_address0(real_op_18_address0),
    .real_op_18_ce0(real_op_18_ce0),
    .real_op_18_we0(real_op_18_we0),
    .real_op_18_d0(real_op_18_d0),
    .real_op_18_address1(real_op_18_address1),
    .real_op_18_ce1(real_op_18_ce1),
    .real_op_18_q1(real_op_18_q1),
    .real_op_19_address0(real_op_19_address0),
    .real_op_19_ce0(real_op_19_ce0),
    .real_op_19_we0(real_op_19_we0),
    .real_op_19_d0(real_op_19_d0),
    .real_op_19_address1(real_op_19_address1),
    .real_op_19_ce1(real_op_19_ce1),
    .real_op_19_q1(real_op_19_q1),
    .real_op_20_address0(real_op_20_address0),
    .real_op_20_ce0(real_op_20_ce0),
    .real_op_20_we0(real_op_20_we0),
    .real_op_20_d0(real_op_20_d0),
    .real_op_20_address1(real_op_20_address1),
    .real_op_20_ce1(real_op_20_ce1),
    .real_op_20_q1(real_op_20_q1),
    .imag_op_0_address0(imag_op_0_address0),
    .imag_op_0_ce0(imag_op_0_ce0),
    .imag_op_0_we0(imag_op_0_we0),
    .imag_op_0_d0(imag_op_0_d0),
    .imag_op_0_address1(imag_op_0_address1),
    .imag_op_0_ce1(imag_op_0_ce1),
    .imag_op_0_q1(imag_op_0_q1),
    .imag_op_1_address0(imag_op_1_address0),
    .imag_op_1_ce0(imag_op_1_ce0),
    .imag_op_1_we0(imag_op_1_we0),
    .imag_op_1_d0(imag_op_1_d0),
    .imag_op_1_address1(imag_op_1_address1),
    .imag_op_1_ce1(imag_op_1_ce1),
    .imag_op_1_q1(imag_op_1_q1),
    .imag_op_2_address0(imag_op_2_address0),
    .imag_op_2_ce0(imag_op_2_ce0),
    .imag_op_2_we0(imag_op_2_we0),
    .imag_op_2_d0(imag_op_2_d0),
    .imag_op_2_address1(imag_op_2_address1),
    .imag_op_2_ce1(imag_op_2_ce1),
    .imag_op_2_q1(imag_op_2_q1),
    .imag_op_3_address0(imag_op_3_address0),
    .imag_op_3_ce0(imag_op_3_ce0),
    .imag_op_3_we0(imag_op_3_we0),
    .imag_op_3_d0(imag_op_3_d0),
    .imag_op_3_address1(imag_op_3_address1),
    .imag_op_3_ce1(imag_op_3_ce1),
    .imag_op_3_q1(imag_op_3_q1),
    .imag_op_4_address0(imag_op_4_address0),
    .imag_op_4_ce0(imag_op_4_ce0),
    .imag_op_4_we0(imag_op_4_we0),
    .imag_op_4_d0(imag_op_4_d0),
    .imag_op_4_address1(imag_op_4_address1),
    .imag_op_4_ce1(imag_op_4_ce1),
    .imag_op_4_q1(imag_op_4_q1),
    .imag_op_5_address0(imag_op_5_address0),
    .imag_op_5_ce0(imag_op_5_ce0),
    .imag_op_5_we0(imag_op_5_we0),
    .imag_op_5_d0(imag_op_5_d0),
    .imag_op_5_address1(imag_op_5_address1),
    .imag_op_5_ce1(imag_op_5_ce1),
    .imag_op_5_q1(imag_op_5_q1),
    .imag_op_6_address0(imag_op_6_address0),
    .imag_op_6_ce0(imag_op_6_ce0),
    .imag_op_6_we0(imag_op_6_we0),
    .imag_op_6_d0(imag_op_6_d0),
    .imag_op_6_address1(imag_op_6_address1),
    .imag_op_6_ce1(imag_op_6_ce1),
    .imag_op_6_q1(imag_op_6_q1),
    .imag_op_7_address0(imag_op_7_address0),
    .imag_op_7_ce0(imag_op_7_ce0),
    .imag_op_7_we0(imag_op_7_we0),
    .imag_op_7_d0(imag_op_7_d0),
    .imag_op_7_address1(imag_op_7_address1),
    .imag_op_7_ce1(imag_op_7_ce1),
    .imag_op_7_q1(imag_op_7_q1),
    .imag_op_8_address0(imag_op_8_address0),
    .imag_op_8_ce0(imag_op_8_ce0),
    .imag_op_8_we0(imag_op_8_we0),
    .imag_op_8_d0(imag_op_8_d0),
    .imag_op_8_address1(imag_op_8_address1),
    .imag_op_8_ce1(imag_op_8_ce1),
    .imag_op_8_q1(imag_op_8_q1),
    .imag_op_9_address0(imag_op_9_address0),
    .imag_op_9_ce0(imag_op_9_ce0),
    .imag_op_9_we0(imag_op_9_we0),
    .imag_op_9_d0(imag_op_9_d0),
    .imag_op_9_address1(imag_op_9_address1),
    .imag_op_9_ce1(imag_op_9_ce1),
    .imag_op_9_q1(imag_op_9_q1),
    .imag_op_10_address0(imag_op_10_address0),
    .imag_op_10_ce0(imag_op_10_ce0),
    .imag_op_10_we0(imag_op_10_we0),
    .imag_op_10_d0(imag_op_10_d0),
    .imag_op_10_address1(imag_op_10_address1),
    .imag_op_10_ce1(imag_op_10_ce1),
    .imag_op_10_q1(imag_op_10_q1),
    .imag_op_11_address0(imag_op_11_address0),
    .imag_op_11_ce0(imag_op_11_ce0),
    .imag_op_11_we0(imag_op_11_we0),
    .imag_op_11_d0(imag_op_11_d0),
    .imag_op_11_address1(imag_op_11_address1),
    .imag_op_11_ce1(imag_op_11_ce1),
    .imag_op_11_q1(imag_op_11_q1),
    .imag_op_12_address0(imag_op_12_address0),
    .imag_op_12_ce0(imag_op_12_ce0),
    .imag_op_12_we0(imag_op_12_we0),
    .imag_op_12_d0(imag_op_12_d0),
    .imag_op_12_address1(imag_op_12_address1),
    .imag_op_12_ce1(imag_op_12_ce1),
    .imag_op_12_q1(imag_op_12_q1),
    .imag_op_13_address0(imag_op_13_address0),
    .imag_op_13_ce0(imag_op_13_ce0),
    .imag_op_13_we0(imag_op_13_we0),
    .imag_op_13_d0(imag_op_13_d0),
    .imag_op_13_address1(imag_op_13_address1),
    .imag_op_13_ce1(imag_op_13_ce1),
    .imag_op_13_q1(imag_op_13_q1),
    .imag_op_14_address0(imag_op_14_address0),
    .imag_op_14_ce0(imag_op_14_ce0),
    .imag_op_14_we0(imag_op_14_we0),
    .imag_op_14_d0(imag_op_14_d0),
    .imag_op_14_address1(imag_op_14_address1),
    .imag_op_14_ce1(imag_op_14_ce1),
    .imag_op_14_q1(imag_op_14_q1),
    .imag_op_15_address0(imag_op_15_address0),
    .imag_op_15_ce0(imag_op_15_ce0),
    .imag_op_15_we0(imag_op_15_we0),
    .imag_op_15_d0(imag_op_15_d0),
    .imag_op_15_address1(imag_op_15_address1),
    .imag_op_15_ce1(imag_op_15_ce1),
    .imag_op_15_q1(imag_op_15_q1),
    .imag_op_16_address0(imag_op_16_address0),
    .imag_op_16_ce0(imag_op_16_ce0),
    .imag_op_16_we0(imag_op_16_we0),
    .imag_op_16_d0(imag_op_16_d0),
    .imag_op_16_address1(imag_op_16_address1),
    .imag_op_16_ce1(imag_op_16_ce1),
    .imag_op_16_q1(imag_op_16_q1),
    .imag_op_17_address0(imag_op_17_address0),
    .imag_op_17_ce0(imag_op_17_ce0),
    .imag_op_17_we0(imag_op_17_we0),
    .imag_op_17_d0(imag_op_17_d0),
    .imag_op_17_address1(imag_op_17_address1),
    .imag_op_17_ce1(imag_op_17_ce1),
    .imag_op_17_q1(imag_op_17_q1),
    .imag_op_18_address0(imag_op_18_address0),
    .imag_op_18_ce0(imag_op_18_ce0),
    .imag_op_18_we0(imag_op_18_we0),
    .imag_op_18_d0(imag_op_18_d0),
    .imag_op_18_address1(imag_op_18_address1),
    .imag_op_18_ce1(imag_op_18_ce1),
    .imag_op_18_q1(imag_op_18_q1),
    .imag_op_19_address0(imag_op_19_address0),
    .imag_op_19_ce0(imag_op_19_ce0),
    .imag_op_19_we0(imag_op_19_we0),
    .imag_op_19_d0(imag_op_19_d0),
    .imag_op_19_address1(imag_op_19_address1),
    .imag_op_19_ce1(imag_op_19_ce1),
    .imag_op_19_q1(imag_op_19_q1),
    .imag_op_20_address0(imag_op_20_address0),
    .imag_op_20_ce0(imag_op_20_ce0),
    .imag_op_20_we0(imag_op_20_we0),
    .imag_op_20_d0(imag_op_20_d0),
    .imag_op_20_address1(imag_op_20_address1),
    .imag_op_20_ce1(imag_op_20_ce1),
    .imag_op_20_q1(imag_op_20_q1));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arrayreal_sample Instantiation--------------

// The input and output of arrayreal_sample
wire    arrayreal_sample_ce0, arrayreal_sample_ce1;
wire [4 - 1 : 0]    arrayreal_sample_we0, arrayreal_sample_we1;
wire    [9 : 0]    arrayreal_sample_address0, arrayreal_sample_address1;
wire    [31 : 0]    arrayreal_sample_din0, arrayreal_sample_din1;
wire    [31 : 0]    arrayreal_sample_dout0, arrayreal_sample_dout1;
wire    arrayreal_sample_ready;
wire    arrayreal_sample_done;

`AESL_MEM_real_sample `AESL_MEM_INST_real_sample(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_sample_ce0),
    .we0        (arrayreal_sample_we0),
    .address0   (arrayreal_sample_address0),
    .din0       (arrayreal_sample_din0),
    .dout0      (arrayreal_sample_dout0),
    .ce1        (arrayreal_sample_ce1),
    .we1        (arrayreal_sample_we1),
    .address1   (arrayreal_sample_address1),
    .din1       (arrayreal_sample_din1),
    .dout1      (arrayreal_sample_dout1),
    .ready      (arrayreal_sample_ready),
    .done    (arrayreal_sample_done)
);

// Assignment between dut and arrayreal_sample
assign arrayreal_sample_address0 = real_sample_address0;
assign arrayreal_sample_ce0 = real_sample_ce0;
assign real_sample_q0 = arrayreal_sample_dout0;
assign arrayreal_sample_we0 = 0;
assign arrayreal_sample_din0 = 0;
assign arrayreal_sample_we1 = 0;
assign arrayreal_sample_din1 = 0;
assign arrayreal_sample_ready=    ready;
assign arrayreal_sample_done = 0;


//------------------------arrayimag_sample Instantiation--------------

// The input and output of arrayimag_sample
wire    arrayimag_sample_ce0, arrayimag_sample_ce1;
wire [4 - 1 : 0]    arrayimag_sample_we0, arrayimag_sample_we1;
wire    [9 : 0]    arrayimag_sample_address0, arrayimag_sample_address1;
wire    [31 : 0]    arrayimag_sample_din0, arrayimag_sample_din1;
wire    [31 : 0]    arrayimag_sample_dout0, arrayimag_sample_dout1;
wire    arrayimag_sample_ready;
wire    arrayimag_sample_done;

// Assignment between dut and arrayimag_sample
assign arrayimag_sample_done = 0;


//------------------------arrayreal_op_0 Instantiation--------------

// The input and output of arrayreal_op_0
wire    arrayreal_op_0_ce0, arrayreal_op_0_ce1;
wire [4 - 1 : 0]    arrayreal_op_0_we0, arrayreal_op_0_we1;
wire    [5 : 0]    arrayreal_op_0_address0, arrayreal_op_0_address1;
wire    [31 : 0]    arrayreal_op_0_din0, arrayreal_op_0_din1;
wire    [31 : 0]    arrayreal_op_0_dout0, arrayreal_op_0_dout1;
wire    arrayreal_op_0_ready;
wire    arrayreal_op_0_done;

`AESL_MEM_real_op_0 `AESL_MEM_INST_real_op_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_0_ce0),
    .we0        (arrayreal_op_0_we0),
    .address0   (arrayreal_op_0_address0),
    .din0       (arrayreal_op_0_din0),
    .dout0      (arrayreal_op_0_dout0),
    .ce1        (arrayreal_op_0_ce1),
    .we1        (arrayreal_op_0_we1),
    .address1   (arrayreal_op_0_address1),
    .din1       (arrayreal_op_0_din1),
    .dout1      (arrayreal_op_0_dout1),
    .ready      (arrayreal_op_0_ready),
    .done    (arrayreal_op_0_done)
);

// Assignment between dut and arrayreal_op_0
assign arrayreal_op_0_address0 = real_op_0_address0;
assign arrayreal_op_0_ce0 = real_op_0_ce0;
assign arrayreal_op_0_we0[0] = real_op_0_we0;
assign arrayreal_op_0_we0[1] = real_op_0_we0;
assign arrayreal_op_0_we0[2] = real_op_0_we0;
assign arrayreal_op_0_we0[3] = real_op_0_we0;
assign arrayreal_op_0_din0 = real_op_0_d0;
assign arrayreal_op_0_address1 = real_op_0_address1;
assign arrayreal_op_0_ce1 = real_op_0_ce1;
assign real_op_0_q1 = arrayreal_op_0_dout1;
assign arrayreal_op_0_we1 = 0;
assign arrayreal_op_0_din1 = 0;
assign arrayreal_op_0_ready= ready;
assign arrayreal_op_0_done = interface_done;


//------------------------arrayreal_op_1 Instantiation--------------

// The input and output of arrayreal_op_1
wire    arrayreal_op_1_ce0, arrayreal_op_1_ce1;
wire [4 - 1 : 0]    arrayreal_op_1_we0, arrayreal_op_1_we1;
wire    [5 : 0]    arrayreal_op_1_address0, arrayreal_op_1_address1;
wire    [31 : 0]    arrayreal_op_1_din0, arrayreal_op_1_din1;
wire    [31 : 0]    arrayreal_op_1_dout0, arrayreal_op_1_dout1;
wire    arrayreal_op_1_ready;
wire    arrayreal_op_1_done;

`AESL_MEM_real_op_1 `AESL_MEM_INST_real_op_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_1_ce0),
    .we0        (arrayreal_op_1_we0),
    .address0   (arrayreal_op_1_address0),
    .din0       (arrayreal_op_1_din0),
    .dout0      (arrayreal_op_1_dout0),
    .ce1        (arrayreal_op_1_ce1),
    .we1        (arrayreal_op_1_we1),
    .address1   (arrayreal_op_1_address1),
    .din1       (arrayreal_op_1_din1),
    .dout1      (arrayreal_op_1_dout1),
    .ready      (arrayreal_op_1_ready),
    .done    (arrayreal_op_1_done)
);

// Assignment between dut and arrayreal_op_1
assign arrayreal_op_1_address0 = real_op_1_address0;
assign arrayreal_op_1_ce0 = real_op_1_ce0;
assign arrayreal_op_1_we0[0] = real_op_1_we0;
assign arrayreal_op_1_we0[1] = real_op_1_we0;
assign arrayreal_op_1_we0[2] = real_op_1_we0;
assign arrayreal_op_1_we0[3] = real_op_1_we0;
assign arrayreal_op_1_din0 = real_op_1_d0;
assign arrayreal_op_1_address1 = real_op_1_address1;
assign arrayreal_op_1_ce1 = real_op_1_ce1;
assign real_op_1_q1 = arrayreal_op_1_dout1;
assign arrayreal_op_1_we1 = 0;
assign arrayreal_op_1_din1 = 0;
assign arrayreal_op_1_ready= ready;
assign arrayreal_op_1_done = interface_done;


//------------------------arrayreal_op_2 Instantiation--------------

// The input and output of arrayreal_op_2
wire    arrayreal_op_2_ce0, arrayreal_op_2_ce1;
wire [4 - 1 : 0]    arrayreal_op_2_we0, arrayreal_op_2_we1;
wire    [5 : 0]    arrayreal_op_2_address0, arrayreal_op_2_address1;
wire    [31 : 0]    arrayreal_op_2_din0, arrayreal_op_2_din1;
wire    [31 : 0]    arrayreal_op_2_dout0, arrayreal_op_2_dout1;
wire    arrayreal_op_2_ready;
wire    arrayreal_op_2_done;

`AESL_MEM_real_op_2 `AESL_MEM_INST_real_op_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_2_ce0),
    .we0        (arrayreal_op_2_we0),
    .address0   (arrayreal_op_2_address0),
    .din0       (arrayreal_op_2_din0),
    .dout0      (arrayreal_op_2_dout0),
    .ce1        (arrayreal_op_2_ce1),
    .we1        (arrayreal_op_2_we1),
    .address1   (arrayreal_op_2_address1),
    .din1       (arrayreal_op_2_din1),
    .dout1      (arrayreal_op_2_dout1),
    .ready      (arrayreal_op_2_ready),
    .done    (arrayreal_op_2_done)
);

// Assignment between dut and arrayreal_op_2
assign arrayreal_op_2_address0 = real_op_2_address0;
assign arrayreal_op_2_ce0 = real_op_2_ce0;
assign arrayreal_op_2_we0[0] = real_op_2_we0;
assign arrayreal_op_2_we0[1] = real_op_2_we0;
assign arrayreal_op_2_we0[2] = real_op_2_we0;
assign arrayreal_op_2_we0[3] = real_op_2_we0;
assign arrayreal_op_2_din0 = real_op_2_d0;
assign arrayreal_op_2_address1 = real_op_2_address1;
assign arrayreal_op_2_ce1 = real_op_2_ce1;
assign real_op_2_q1 = arrayreal_op_2_dout1;
assign arrayreal_op_2_we1 = 0;
assign arrayreal_op_2_din1 = 0;
assign arrayreal_op_2_ready= ready;
assign arrayreal_op_2_done = interface_done;


//------------------------arrayreal_op_3 Instantiation--------------

// The input and output of arrayreal_op_3
wire    arrayreal_op_3_ce0, arrayreal_op_3_ce1;
wire [4 - 1 : 0]    arrayreal_op_3_we0, arrayreal_op_3_we1;
wire    [5 : 0]    arrayreal_op_3_address0, arrayreal_op_3_address1;
wire    [31 : 0]    arrayreal_op_3_din0, arrayreal_op_3_din1;
wire    [31 : 0]    arrayreal_op_3_dout0, arrayreal_op_3_dout1;
wire    arrayreal_op_3_ready;
wire    arrayreal_op_3_done;

`AESL_MEM_real_op_3 `AESL_MEM_INST_real_op_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_3_ce0),
    .we0        (arrayreal_op_3_we0),
    .address0   (arrayreal_op_3_address0),
    .din0       (arrayreal_op_3_din0),
    .dout0      (arrayreal_op_3_dout0),
    .ce1        (arrayreal_op_3_ce1),
    .we1        (arrayreal_op_3_we1),
    .address1   (arrayreal_op_3_address1),
    .din1       (arrayreal_op_3_din1),
    .dout1      (arrayreal_op_3_dout1),
    .ready      (arrayreal_op_3_ready),
    .done    (arrayreal_op_3_done)
);

// Assignment between dut and arrayreal_op_3
assign arrayreal_op_3_address0 = real_op_3_address0;
assign arrayreal_op_3_ce0 = real_op_3_ce0;
assign arrayreal_op_3_we0[0] = real_op_3_we0;
assign arrayreal_op_3_we0[1] = real_op_3_we0;
assign arrayreal_op_3_we0[2] = real_op_3_we0;
assign arrayreal_op_3_we0[3] = real_op_3_we0;
assign arrayreal_op_3_din0 = real_op_3_d0;
assign arrayreal_op_3_address1 = real_op_3_address1;
assign arrayreal_op_3_ce1 = real_op_3_ce1;
assign real_op_3_q1 = arrayreal_op_3_dout1;
assign arrayreal_op_3_we1 = 0;
assign arrayreal_op_3_din1 = 0;
assign arrayreal_op_3_ready= ready;
assign arrayreal_op_3_done = interface_done;


//------------------------arrayreal_op_4 Instantiation--------------

// The input and output of arrayreal_op_4
wire    arrayreal_op_4_ce0, arrayreal_op_4_ce1;
wire [4 - 1 : 0]    arrayreal_op_4_we0, arrayreal_op_4_we1;
wire    [5 : 0]    arrayreal_op_4_address0, arrayreal_op_4_address1;
wire    [31 : 0]    arrayreal_op_4_din0, arrayreal_op_4_din1;
wire    [31 : 0]    arrayreal_op_4_dout0, arrayreal_op_4_dout1;
wire    arrayreal_op_4_ready;
wire    arrayreal_op_4_done;

`AESL_MEM_real_op_4 `AESL_MEM_INST_real_op_4(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_4_ce0),
    .we0        (arrayreal_op_4_we0),
    .address0   (arrayreal_op_4_address0),
    .din0       (arrayreal_op_4_din0),
    .dout0      (arrayreal_op_4_dout0),
    .ce1        (arrayreal_op_4_ce1),
    .we1        (arrayreal_op_4_we1),
    .address1   (arrayreal_op_4_address1),
    .din1       (arrayreal_op_4_din1),
    .dout1      (arrayreal_op_4_dout1),
    .ready      (arrayreal_op_4_ready),
    .done    (arrayreal_op_4_done)
);

// Assignment between dut and arrayreal_op_4
assign arrayreal_op_4_address0 = real_op_4_address0;
assign arrayreal_op_4_ce0 = real_op_4_ce0;
assign arrayreal_op_4_we0[0] = real_op_4_we0;
assign arrayreal_op_4_we0[1] = real_op_4_we0;
assign arrayreal_op_4_we0[2] = real_op_4_we0;
assign arrayreal_op_4_we0[3] = real_op_4_we0;
assign arrayreal_op_4_din0 = real_op_4_d0;
assign arrayreal_op_4_address1 = real_op_4_address1;
assign arrayreal_op_4_ce1 = real_op_4_ce1;
assign real_op_4_q1 = arrayreal_op_4_dout1;
assign arrayreal_op_4_we1 = 0;
assign arrayreal_op_4_din1 = 0;
assign arrayreal_op_4_ready= ready;
assign arrayreal_op_4_done = interface_done;


//------------------------arrayreal_op_5 Instantiation--------------

// The input and output of arrayreal_op_5
wire    arrayreal_op_5_ce0, arrayreal_op_5_ce1;
wire [4 - 1 : 0]    arrayreal_op_5_we0, arrayreal_op_5_we1;
wire    [5 : 0]    arrayreal_op_5_address0, arrayreal_op_5_address1;
wire    [31 : 0]    arrayreal_op_5_din0, arrayreal_op_5_din1;
wire    [31 : 0]    arrayreal_op_5_dout0, arrayreal_op_5_dout1;
wire    arrayreal_op_5_ready;
wire    arrayreal_op_5_done;

`AESL_MEM_real_op_5 `AESL_MEM_INST_real_op_5(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_5_ce0),
    .we0        (arrayreal_op_5_we0),
    .address0   (arrayreal_op_5_address0),
    .din0       (arrayreal_op_5_din0),
    .dout0      (arrayreal_op_5_dout0),
    .ce1        (arrayreal_op_5_ce1),
    .we1        (arrayreal_op_5_we1),
    .address1   (arrayreal_op_5_address1),
    .din1       (arrayreal_op_5_din1),
    .dout1      (arrayreal_op_5_dout1),
    .ready      (arrayreal_op_5_ready),
    .done    (arrayreal_op_5_done)
);

// Assignment between dut and arrayreal_op_5
assign arrayreal_op_5_address0 = real_op_5_address0;
assign arrayreal_op_5_ce0 = real_op_5_ce0;
assign arrayreal_op_5_we0[0] = real_op_5_we0;
assign arrayreal_op_5_we0[1] = real_op_5_we0;
assign arrayreal_op_5_we0[2] = real_op_5_we0;
assign arrayreal_op_5_we0[3] = real_op_5_we0;
assign arrayreal_op_5_din0 = real_op_5_d0;
assign arrayreal_op_5_address1 = real_op_5_address1;
assign arrayreal_op_5_ce1 = real_op_5_ce1;
assign real_op_5_q1 = arrayreal_op_5_dout1;
assign arrayreal_op_5_we1 = 0;
assign arrayreal_op_5_din1 = 0;
assign arrayreal_op_5_ready= ready;
assign arrayreal_op_5_done = interface_done;


//------------------------arrayreal_op_6 Instantiation--------------

// The input and output of arrayreal_op_6
wire    arrayreal_op_6_ce0, arrayreal_op_6_ce1;
wire [4 - 1 : 0]    arrayreal_op_6_we0, arrayreal_op_6_we1;
wire    [5 : 0]    arrayreal_op_6_address0, arrayreal_op_6_address1;
wire    [31 : 0]    arrayreal_op_6_din0, arrayreal_op_6_din1;
wire    [31 : 0]    arrayreal_op_6_dout0, arrayreal_op_6_dout1;
wire    arrayreal_op_6_ready;
wire    arrayreal_op_6_done;

`AESL_MEM_real_op_6 `AESL_MEM_INST_real_op_6(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_6_ce0),
    .we0        (arrayreal_op_6_we0),
    .address0   (arrayreal_op_6_address0),
    .din0       (arrayreal_op_6_din0),
    .dout0      (arrayreal_op_6_dout0),
    .ce1        (arrayreal_op_6_ce1),
    .we1        (arrayreal_op_6_we1),
    .address1   (arrayreal_op_6_address1),
    .din1       (arrayreal_op_6_din1),
    .dout1      (arrayreal_op_6_dout1),
    .ready      (arrayreal_op_6_ready),
    .done    (arrayreal_op_6_done)
);

// Assignment between dut and arrayreal_op_6
assign arrayreal_op_6_address0 = real_op_6_address0;
assign arrayreal_op_6_ce0 = real_op_6_ce0;
assign arrayreal_op_6_we0[0] = real_op_6_we0;
assign arrayreal_op_6_we0[1] = real_op_6_we0;
assign arrayreal_op_6_we0[2] = real_op_6_we0;
assign arrayreal_op_6_we0[3] = real_op_6_we0;
assign arrayreal_op_6_din0 = real_op_6_d0;
assign arrayreal_op_6_address1 = real_op_6_address1;
assign arrayreal_op_6_ce1 = real_op_6_ce1;
assign real_op_6_q1 = arrayreal_op_6_dout1;
assign arrayreal_op_6_we1 = 0;
assign arrayreal_op_6_din1 = 0;
assign arrayreal_op_6_ready= ready;
assign arrayreal_op_6_done = interface_done;


//------------------------arrayreal_op_7 Instantiation--------------

// The input and output of arrayreal_op_7
wire    arrayreal_op_7_ce0, arrayreal_op_7_ce1;
wire [4 - 1 : 0]    arrayreal_op_7_we0, arrayreal_op_7_we1;
wire    [5 : 0]    arrayreal_op_7_address0, arrayreal_op_7_address1;
wire    [31 : 0]    arrayreal_op_7_din0, arrayreal_op_7_din1;
wire    [31 : 0]    arrayreal_op_7_dout0, arrayreal_op_7_dout1;
wire    arrayreal_op_7_ready;
wire    arrayreal_op_7_done;

`AESL_MEM_real_op_7 `AESL_MEM_INST_real_op_7(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_7_ce0),
    .we0        (arrayreal_op_7_we0),
    .address0   (arrayreal_op_7_address0),
    .din0       (arrayreal_op_7_din0),
    .dout0      (arrayreal_op_7_dout0),
    .ce1        (arrayreal_op_7_ce1),
    .we1        (arrayreal_op_7_we1),
    .address1   (arrayreal_op_7_address1),
    .din1       (arrayreal_op_7_din1),
    .dout1      (arrayreal_op_7_dout1),
    .ready      (arrayreal_op_7_ready),
    .done    (arrayreal_op_7_done)
);

// Assignment between dut and arrayreal_op_7
assign arrayreal_op_7_address0 = real_op_7_address0;
assign arrayreal_op_7_ce0 = real_op_7_ce0;
assign arrayreal_op_7_we0[0] = real_op_7_we0;
assign arrayreal_op_7_we0[1] = real_op_7_we0;
assign arrayreal_op_7_we0[2] = real_op_7_we0;
assign arrayreal_op_7_we0[3] = real_op_7_we0;
assign arrayreal_op_7_din0 = real_op_7_d0;
assign arrayreal_op_7_address1 = real_op_7_address1;
assign arrayreal_op_7_ce1 = real_op_7_ce1;
assign real_op_7_q1 = arrayreal_op_7_dout1;
assign arrayreal_op_7_we1 = 0;
assign arrayreal_op_7_din1 = 0;
assign arrayreal_op_7_ready= ready;
assign arrayreal_op_7_done = interface_done;


//------------------------arrayreal_op_8 Instantiation--------------

// The input and output of arrayreal_op_8
wire    arrayreal_op_8_ce0, arrayreal_op_8_ce1;
wire [4 - 1 : 0]    arrayreal_op_8_we0, arrayreal_op_8_we1;
wire    [5 : 0]    arrayreal_op_8_address0, arrayreal_op_8_address1;
wire    [31 : 0]    arrayreal_op_8_din0, arrayreal_op_8_din1;
wire    [31 : 0]    arrayreal_op_8_dout0, arrayreal_op_8_dout1;
wire    arrayreal_op_8_ready;
wire    arrayreal_op_8_done;

`AESL_MEM_real_op_8 `AESL_MEM_INST_real_op_8(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_8_ce0),
    .we0        (arrayreal_op_8_we0),
    .address0   (arrayreal_op_8_address0),
    .din0       (arrayreal_op_8_din0),
    .dout0      (arrayreal_op_8_dout0),
    .ce1        (arrayreal_op_8_ce1),
    .we1        (arrayreal_op_8_we1),
    .address1   (arrayreal_op_8_address1),
    .din1       (arrayreal_op_8_din1),
    .dout1      (arrayreal_op_8_dout1),
    .ready      (arrayreal_op_8_ready),
    .done    (arrayreal_op_8_done)
);

// Assignment between dut and arrayreal_op_8
assign arrayreal_op_8_address0 = real_op_8_address0;
assign arrayreal_op_8_ce0 = real_op_8_ce0;
assign arrayreal_op_8_we0[0] = real_op_8_we0;
assign arrayreal_op_8_we0[1] = real_op_8_we0;
assign arrayreal_op_8_we0[2] = real_op_8_we0;
assign arrayreal_op_8_we0[3] = real_op_8_we0;
assign arrayreal_op_8_din0 = real_op_8_d0;
assign arrayreal_op_8_address1 = real_op_8_address1;
assign arrayreal_op_8_ce1 = real_op_8_ce1;
assign real_op_8_q1 = arrayreal_op_8_dout1;
assign arrayreal_op_8_we1 = 0;
assign arrayreal_op_8_din1 = 0;
assign arrayreal_op_8_ready= ready;
assign arrayreal_op_8_done = interface_done;


//------------------------arrayreal_op_9 Instantiation--------------

// The input and output of arrayreal_op_9
wire    arrayreal_op_9_ce0, arrayreal_op_9_ce1;
wire [4 - 1 : 0]    arrayreal_op_9_we0, arrayreal_op_9_we1;
wire    [5 : 0]    arrayreal_op_9_address0, arrayreal_op_9_address1;
wire    [31 : 0]    arrayreal_op_9_din0, arrayreal_op_9_din1;
wire    [31 : 0]    arrayreal_op_9_dout0, arrayreal_op_9_dout1;
wire    arrayreal_op_9_ready;
wire    arrayreal_op_9_done;

`AESL_MEM_real_op_9 `AESL_MEM_INST_real_op_9(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_9_ce0),
    .we0        (arrayreal_op_9_we0),
    .address0   (arrayreal_op_9_address0),
    .din0       (arrayreal_op_9_din0),
    .dout0      (arrayreal_op_9_dout0),
    .ce1        (arrayreal_op_9_ce1),
    .we1        (arrayreal_op_9_we1),
    .address1   (arrayreal_op_9_address1),
    .din1       (arrayreal_op_9_din1),
    .dout1      (arrayreal_op_9_dout1),
    .ready      (arrayreal_op_9_ready),
    .done    (arrayreal_op_9_done)
);

// Assignment between dut and arrayreal_op_9
assign arrayreal_op_9_address0 = real_op_9_address0;
assign arrayreal_op_9_ce0 = real_op_9_ce0;
assign arrayreal_op_9_we0[0] = real_op_9_we0;
assign arrayreal_op_9_we0[1] = real_op_9_we0;
assign arrayreal_op_9_we0[2] = real_op_9_we0;
assign arrayreal_op_9_we0[3] = real_op_9_we0;
assign arrayreal_op_9_din0 = real_op_9_d0;
assign arrayreal_op_9_address1 = real_op_9_address1;
assign arrayreal_op_9_ce1 = real_op_9_ce1;
assign real_op_9_q1 = arrayreal_op_9_dout1;
assign arrayreal_op_9_we1 = 0;
assign arrayreal_op_9_din1 = 0;
assign arrayreal_op_9_ready= ready;
assign arrayreal_op_9_done = interface_done;


//------------------------arrayreal_op_10 Instantiation--------------

// The input and output of arrayreal_op_10
wire    arrayreal_op_10_ce0, arrayreal_op_10_ce1;
wire [4 - 1 : 0]    arrayreal_op_10_we0, arrayreal_op_10_we1;
wire    [5 : 0]    arrayreal_op_10_address0, arrayreal_op_10_address1;
wire    [31 : 0]    arrayreal_op_10_din0, arrayreal_op_10_din1;
wire    [31 : 0]    arrayreal_op_10_dout0, arrayreal_op_10_dout1;
wire    arrayreal_op_10_ready;
wire    arrayreal_op_10_done;

`AESL_MEM_real_op_10 `AESL_MEM_INST_real_op_10(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_10_ce0),
    .we0        (arrayreal_op_10_we0),
    .address0   (arrayreal_op_10_address0),
    .din0       (arrayreal_op_10_din0),
    .dout0      (arrayreal_op_10_dout0),
    .ce1        (arrayreal_op_10_ce1),
    .we1        (arrayreal_op_10_we1),
    .address1   (arrayreal_op_10_address1),
    .din1       (arrayreal_op_10_din1),
    .dout1      (arrayreal_op_10_dout1),
    .ready      (arrayreal_op_10_ready),
    .done    (arrayreal_op_10_done)
);

// Assignment between dut and arrayreal_op_10
assign arrayreal_op_10_address0 = real_op_10_address0;
assign arrayreal_op_10_ce0 = real_op_10_ce0;
assign arrayreal_op_10_we0[0] = real_op_10_we0;
assign arrayreal_op_10_we0[1] = real_op_10_we0;
assign arrayreal_op_10_we0[2] = real_op_10_we0;
assign arrayreal_op_10_we0[3] = real_op_10_we0;
assign arrayreal_op_10_din0 = real_op_10_d0;
assign arrayreal_op_10_address1 = real_op_10_address1;
assign arrayreal_op_10_ce1 = real_op_10_ce1;
assign real_op_10_q1 = arrayreal_op_10_dout1;
assign arrayreal_op_10_we1 = 0;
assign arrayreal_op_10_din1 = 0;
assign arrayreal_op_10_ready= ready;
assign arrayreal_op_10_done = interface_done;


//------------------------arrayreal_op_11 Instantiation--------------

// The input and output of arrayreal_op_11
wire    arrayreal_op_11_ce0, arrayreal_op_11_ce1;
wire [4 - 1 : 0]    arrayreal_op_11_we0, arrayreal_op_11_we1;
wire    [5 : 0]    arrayreal_op_11_address0, arrayreal_op_11_address1;
wire    [31 : 0]    arrayreal_op_11_din0, arrayreal_op_11_din1;
wire    [31 : 0]    arrayreal_op_11_dout0, arrayreal_op_11_dout1;
wire    arrayreal_op_11_ready;
wire    arrayreal_op_11_done;

`AESL_MEM_real_op_11 `AESL_MEM_INST_real_op_11(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_11_ce0),
    .we0        (arrayreal_op_11_we0),
    .address0   (arrayreal_op_11_address0),
    .din0       (arrayreal_op_11_din0),
    .dout0      (arrayreal_op_11_dout0),
    .ce1        (arrayreal_op_11_ce1),
    .we1        (arrayreal_op_11_we1),
    .address1   (arrayreal_op_11_address1),
    .din1       (arrayreal_op_11_din1),
    .dout1      (arrayreal_op_11_dout1),
    .ready      (arrayreal_op_11_ready),
    .done    (arrayreal_op_11_done)
);

// Assignment between dut and arrayreal_op_11
assign arrayreal_op_11_address0 = real_op_11_address0;
assign arrayreal_op_11_ce0 = real_op_11_ce0;
assign arrayreal_op_11_we0[0] = real_op_11_we0;
assign arrayreal_op_11_we0[1] = real_op_11_we0;
assign arrayreal_op_11_we0[2] = real_op_11_we0;
assign arrayreal_op_11_we0[3] = real_op_11_we0;
assign arrayreal_op_11_din0 = real_op_11_d0;
assign arrayreal_op_11_address1 = real_op_11_address1;
assign arrayreal_op_11_ce1 = real_op_11_ce1;
assign real_op_11_q1 = arrayreal_op_11_dout1;
assign arrayreal_op_11_we1 = 0;
assign arrayreal_op_11_din1 = 0;
assign arrayreal_op_11_ready= ready;
assign arrayreal_op_11_done = interface_done;


//------------------------arrayreal_op_12 Instantiation--------------

// The input and output of arrayreal_op_12
wire    arrayreal_op_12_ce0, arrayreal_op_12_ce1;
wire [4 - 1 : 0]    arrayreal_op_12_we0, arrayreal_op_12_we1;
wire    [5 : 0]    arrayreal_op_12_address0, arrayreal_op_12_address1;
wire    [31 : 0]    arrayreal_op_12_din0, arrayreal_op_12_din1;
wire    [31 : 0]    arrayreal_op_12_dout0, arrayreal_op_12_dout1;
wire    arrayreal_op_12_ready;
wire    arrayreal_op_12_done;

`AESL_MEM_real_op_12 `AESL_MEM_INST_real_op_12(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_12_ce0),
    .we0        (arrayreal_op_12_we0),
    .address0   (arrayreal_op_12_address0),
    .din0       (arrayreal_op_12_din0),
    .dout0      (arrayreal_op_12_dout0),
    .ce1        (arrayreal_op_12_ce1),
    .we1        (arrayreal_op_12_we1),
    .address1   (arrayreal_op_12_address1),
    .din1       (arrayreal_op_12_din1),
    .dout1      (arrayreal_op_12_dout1),
    .ready      (arrayreal_op_12_ready),
    .done    (arrayreal_op_12_done)
);

// Assignment between dut and arrayreal_op_12
assign arrayreal_op_12_address0 = real_op_12_address0;
assign arrayreal_op_12_ce0 = real_op_12_ce0;
assign arrayreal_op_12_we0[0] = real_op_12_we0;
assign arrayreal_op_12_we0[1] = real_op_12_we0;
assign arrayreal_op_12_we0[2] = real_op_12_we0;
assign arrayreal_op_12_we0[3] = real_op_12_we0;
assign arrayreal_op_12_din0 = real_op_12_d0;
assign arrayreal_op_12_address1 = real_op_12_address1;
assign arrayreal_op_12_ce1 = real_op_12_ce1;
assign real_op_12_q1 = arrayreal_op_12_dout1;
assign arrayreal_op_12_we1 = 0;
assign arrayreal_op_12_din1 = 0;
assign arrayreal_op_12_ready= ready;
assign arrayreal_op_12_done = interface_done;


//------------------------arrayreal_op_13 Instantiation--------------

// The input and output of arrayreal_op_13
wire    arrayreal_op_13_ce0, arrayreal_op_13_ce1;
wire [4 - 1 : 0]    arrayreal_op_13_we0, arrayreal_op_13_we1;
wire    [5 : 0]    arrayreal_op_13_address0, arrayreal_op_13_address1;
wire    [31 : 0]    arrayreal_op_13_din0, arrayreal_op_13_din1;
wire    [31 : 0]    arrayreal_op_13_dout0, arrayreal_op_13_dout1;
wire    arrayreal_op_13_ready;
wire    arrayreal_op_13_done;

`AESL_MEM_real_op_13 `AESL_MEM_INST_real_op_13(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_13_ce0),
    .we0        (arrayreal_op_13_we0),
    .address0   (arrayreal_op_13_address0),
    .din0       (arrayreal_op_13_din0),
    .dout0      (arrayreal_op_13_dout0),
    .ce1        (arrayreal_op_13_ce1),
    .we1        (arrayreal_op_13_we1),
    .address1   (arrayreal_op_13_address1),
    .din1       (arrayreal_op_13_din1),
    .dout1      (arrayreal_op_13_dout1),
    .ready      (arrayreal_op_13_ready),
    .done    (arrayreal_op_13_done)
);

// Assignment between dut and arrayreal_op_13
assign arrayreal_op_13_address0 = real_op_13_address0;
assign arrayreal_op_13_ce0 = real_op_13_ce0;
assign arrayreal_op_13_we0[0] = real_op_13_we0;
assign arrayreal_op_13_we0[1] = real_op_13_we0;
assign arrayreal_op_13_we0[2] = real_op_13_we0;
assign arrayreal_op_13_we0[3] = real_op_13_we0;
assign arrayreal_op_13_din0 = real_op_13_d0;
assign arrayreal_op_13_address1 = real_op_13_address1;
assign arrayreal_op_13_ce1 = real_op_13_ce1;
assign real_op_13_q1 = arrayreal_op_13_dout1;
assign arrayreal_op_13_we1 = 0;
assign arrayreal_op_13_din1 = 0;
assign arrayreal_op_13_ready= ready;
assign arrayreal_op_13_done = interface_done;


//------------------------arrayreal_op_14 Instantiation--------------

// The input and output of arrayreal_op_14
wire    arrayreal_op_14_ce0, arrayreal_op_14_ce1;
wire [4 - 1 : 0]    arrayreal_op_14_we0, arrayreal_op_14_we1;
wire    [5 : 0]    arrayreal_op_14_address0, arrayreal_op_14_address1;
wire    [31 : 0]    arrayreal_op_14_din0, arrayreal_op_14_din1;
wire    [31 : 0]    arrayreal_op_14_dout0, arrayreal_op_14_dout1;
wire    arrayreal_op_14_ready;
wire    arrayreal_op_14_done;

`AESL_MEM_real_op_14 `AESL_MEM_INST_real_op_14(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_14_ce0),
    .we0        (arrayreal_op_14_we0),
    .address0   (arrayreal_op_14_address0),
    .din0       (arrayreal_op_14_din0),
    .dout0      (arrayreal_op_14_dout0),
    .ce1        (arrayreal_op_14_ce1),
    .we1        (arrayreal_op_14_we1),
    .address1   (arrayreal_op_14_address1),
    .din1       (arrayreal_op_14_din1),
    .dout1      (arrayreal_op_14_dout1),
    .ready      (arrayreal_op_14_ready),
    .done    (arrayreal_op_14_done)
);

// Assignment between dut and arrayreal_op_14
assign arrayreal_op_14_address0 = real_op_14_address0;
assign arrayreal_op_14_ce0 = real_op_14_ce0;
assign arrayreal_op_14_we0[0] = real_op_14_we0;
assign arrayreal_op_14_we0[1] = real_op_14_we0;
assign arrayreal_op_14_we0[2] = real_op_14_we0;
assign arrayreal_op_14_we0[3] = real_op_14_we0;
assign arrayreal_op_14_din0 = real_op_14_d0;
assign arrayreal_op_14_address1 = real_op_14_address1;
assign arrayreal_op_14_ce1 = real_op_14_ce1;
assign real_op_14_q1 = arrayreal_op_14_dout1;
assign arrayreal_op_14_we1 = 0;
assign arrayreal_op_14_din1 = 0;
assign arrayreal_op_14_ready= ready;
assign arrayreal_op_14_done = interface_done;


//------------------------arrayreal_op_15 Instantiation--------------

// The input and output of arrayreal_op_15
wire    arrayreal_op_15_ce0, arrayreal_op_15_ce1;
wire [4 - 1 : 0]    arrayreal_op_15_we0, arrayreal_op_15_we1;
wire    [5 : 0]    arrayreal_op_15_address0, arrayreal_op_15_address1;
wire    [31 : 0]    arrayreal_op_15_din0, arrayreal_op_15_din1;
wire    [31 : 0]    arrayreal_op_15_dout0, arrayreal_op_15_dout1;
wire    arrayreal_op_15_ready;
wire    arrayreal_op_15_done;

`AESL_MEM_real_op_15 `AESL_MEM_INST_real_op_15(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_15_ce0),
    .we0        (arrayreal_op_15_we0),
    .address0   (arrayreal_op_15_address0),
    .din0       (arrayreal_op_15_din0),
    .dout0      (arrayreal_op_15_dout0),
    .ce1        (arrayreal_op_15_ce1),
    .we1        (arrayreal_op_15_we1),
    .address1   (arrayreal_op_15_address1),
    .din1       (arrayreal_op_15_din1),
    .dout1      (arrayreal_op_15_dout1),
    .ready      (arrayreal_op_15_ready),
    .done    (arrayreal_op_15_done)
);

// Assignment between dut and arrayreal_op_15
assign arrayreal_op_15_address0 = real_op_15_address0;
assign arrayreal_op_15_ce0 = real_op_15_ce0;
assign arrayreal_op_15_we0[0] = real_op_15_we0;
assign arrayreal_op_15_we0[1] = real_op_15_we0;
assign arrayreal_op_15_we0[2] = real_op_15_we0;
assign arrayreal_op_15_we0[3] = real_op_15_we0;
assign arrayreal_op_15_din0 = real_op_15_d0;
assign arrayreal_op_15_address1 = real_op_15_address1;
assign arrayreal_op_15_ce1 = real_op_15_ce1;
assign real_op_15_q1 = arrayreal_op_15_dout1;
assign arrayreal_op_15_we1 = 0;
assign arrayreal_op_15_din1 = 0;
assign arrayreal_op_15_ready= ready;
assign arrayreal_op_15_done = interface_done;


//------------------------arrayreal_op_16 Instantiation--------------

// The input and output of arrayreal_op_16
wire    arrayreal_op_16_ce0, arrayreal_op_16_ce1;
wire [4 - 1 : 0]    arrayreal_op_16_we0, arrayreal_op_16_we1;
wire    [5 : 0]    arrayreal_op_16_address0, arrayreal_op_16_address1;
wire    [31 : 0]    arrayreal_op_16_din0, arrayreal_op_16_din1;
wire    [31 : 0]    arrayreal_op_16_dout0, arrayreal_op_16_dout1;
wire    arrayreal_op_16_ready;
wire    arrayreal_op_16_done;

`AESL_MEM_real_op_16 `AESL_MEM_INST_real_op_16(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_16_ce0),
    .we0        (arrayreal_op_16_we0),
    .address0   (arrayreal_op_16_address0),
    .din0       (arrayreal_op_16_din0),
    .dout0      (arrayreal_op_16_dout0),
    .ce1        (arrayreal_op_16_ce1),
    .we1        (arrayreal_op_16_we1),
    .address1   (arrayreal_op_16_address1),
    .din1       (arrayreal_op_16_din1),
    .dout1      (arrayreal_op_16_dout1),
    .ready      (arrayreal_op_16_ready),
    .done    (arrayreal_op_16_done)
);

// Assignment between dut and arrayreal_op_16
assign arrayreal_op_16_address0 = real_op_16_address0;
assign arrayreal_op_16_ce0 = real_op_16_ce0;
assign arrayreal_op_16_we0[0] = real_op_16_we0;
assign arrayreal_op_16_we0[1] = real_op_16_we0;
assign arrayreal_op_16_we0[2] = real_op_16_we0;
assign arrayreal_op_16_we0[3] = real_op_16_we0;
assign arrayreal_op_16_din0 = real_op_16_d0;
assign arrayreal_op_16_address1 = real_op_16_address1;
assign arrayreal_op_16_ce1 = real_op_16_ce1;
assign real_op_16_q1 = arrayreal_op_16_dout1;
assign arrayreal_op_16_we1 = 0;
assign arrayreal_op_16_din1 = 0;
assign arrayreal_op_16_ready= ready;
assign arrayreal_op_16_done = interface_done;


//------------------------arrayreal_op_17 Instantiation--------------

// The input and output of arrayreal_op_17
wire    arrayreal_op_17_ce0, arrayreal_op_17_ce1;
wire [4 - 1 : 0]    arrayreal_op_17_we0, arrayreal_op_17_we1;
wire    [5 : 0]    arrayreal_op_17_address0, arrayreal_op_17_address1;
wire    [31 : 0]    arrayreal_op_17_din0, arrayreal_op_17_din1;
wire    [31 : 0]    arrayreal_op_17_dout0, arrayreal_op_17_dout1;
wire    arrayreal_op_17_ready;
wire    arrayreal_op_17_done;

`AESL_MEM_real_op_17 `AESL_MEM_INST_real_op_17(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_17_ce0),
    .we0        (arrayreal_op_17_we0),
    .address0   (arrayreal_op_17_address0),
    .din0       (arrayreal_op_17_din0),
    .dout0      (arrayreal_op_17_dout0),
    .ce1        (arrayreal_op_17_ce1),
    .we1        (arrayreal_op_17_we1),
    .address1   (arrayreal_op_17_address1),
    .din1       (arrayreal_op_17_din1),
    .dout1      (arrayreal_op_17_dout1),
    .ready      (arrayreal_op_17_ready),
    .done    (arrayreal_op_17_done)
);

// Assignment between dut and arrayreal_op_17
assign arrayreal_op_17_address0 = real_op_17_address0;
assign arrayreal_op_17_ce0 = real_op_17_ce0;
assign arrayreal_op_17_we0[0] = real_op_17_we0;
assign arrayreal_op_17_we0[1] = real_op_17_we0;
assign arrayreal_op_17_we0[2] = real_op_17_we0;
assign arrayreal_op_17_we0[3] = real_op_17_we0;
assign arrayreal_op_17_din0 = real_op_17_d0;
assign arrayreal_op_17_address1 = real_op_17_address1;
assign arrayreal_op_17_ce1 = real_op_17_ce1;
assign real_op_17_q1 = arrayreal_op_17_dout1;
assign arrayreal_op_17_we1 = 0;
assign arrayreal_op_17_din1 = 0;
assign arrayreal_op_17_ready= ready;
assign arrayreal_op_17_done = interface_done;


//------------------------arrayreal_op_18 Instantiation--------------

// The input and output of arrayreal_op_18
wire    arrayreal_op_18_ce0, arrayreal_op_18_ce1;
wire [4 - 1 : 0]    arrayreal_op_18_we0, arrayreal_op_18_we1;
wire    [5 : 0]    arrayreal_op_18_address0, arrayreal_op_18_address1;
wire    [31 : 0]    arrayreal_op_18_din0, arrayreal_op_18_din1;
wire    [31 : 0]    arrayreal_op_18_dout0, arrayreal_op_18_dout1;
wire    arrayreal_op_18_ready;
wire    arrayreal_op_18_done;

`AESL_MEM_real_op_18 `AESL_MEM_INST_real_op_18(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_18_ce0),
    .we0        (arrayreal_op_18_we0),
    .address0   (arrayreal_op_18_address0),
    .din0       (arrayreal_op_18_din0),
    .dout0      (arrayreal_op_18_dout0),
    .ce1        (arrayreal_op_18_ce1),
    .we1        (arrayreal_op_18_we1),
    .address1   (arrayreal_op_18_address1),
    .din1       (arrayreal_op_18_din1),
    .dout1      (arrayreal_op_18_dout1),
    .ready      (arrayreal_op_18_ready),
    .done    (arrayreal_op_18_done)
);

// Assignment between dut and arrayreal_op_18
assign arrayreal_op_18_address0 = real_op_18_address0;
assign arrayreal_op_18_ce0 = real_op_18_ce0;
assign arrayreal_op_18_we0[0] = real_op_18_we0;
assign arrayreal_op_18_we0[1] = real_op_18_we0;
assign arrayreal_op_18_we0[2] = real_op_18_we0;
assign arrayreal_op_18_we0[3] = real_op_18_we0;
assign arrayreal_op_18_din0 = real_op_18_d0;
assign arrayreal_op_18_address1 = real_op_18_address1;
assign arrayreal_op_18_ce1 = real_op_18_ce1;
assign real_op_18_q1 = arrayreal_op_18_dout1;
assign arrayreal_op_18_we1 = 0;
assign arrayreal_op_18_din1 = 0;
assign arrayreal_op_18_ready= ready;
assign arrayreal_op_18_done = interface_done;


//------------------------arrayreal_op_19 Instantiation--------------

// The input and output of arrayreal_op_19
wire    arrayreal_op_19_ce0, arrayreal_op_19_ce1;
wire [4 - 1 : 0]    arrayreal_op_19_we0, arrayreal_op_19_we1;
wire    [5 : 0]    arrayreal_op_19_address0, arrayreal_op_19_address1;
wire    [31 : 0]    arrayreal_op_19_din0, arrayreal_op_19_din1;
wire    [31 : 0]    arrayreal_op_19_dout0, arrayreal_op_19_dout1;
wire    arrayreal_op_19_ready;
wire    arrayreal_op_19_done;

`AESL_MEM_real_op_19 `AESL_MEM_INST_real_op_19(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_19_ce0),
    .we0        (arrayreal_op_19_we0),
    .address0   (arrayreal_op_19_address0),
    .din0       (arrayreal_op_19_din0),
    .dout0      (arrayreal_op_19_dout0),
    .ce1        (arrayreal_op_19_ce1),
    .we1        (arrayreal_op_19_we1),
    .address1   (arrayreal_op_19_address1),
    .din1       (arrayreal_op_19_din1),
    .dout1      (arrayreal_op_19_dout1),
    .ready      (arrayreal_op_19_ready),
    .done    (arrayreal_op_19_done)
);

// Assignment between dut and arrayreal_op_19
assign arrayreal_op_19_address0 = real_op_19_address0;
assign arrayreal_op_19_ce0 = real_op_19_ce0;
assign arrayreal_op_19_we0[0] = real_op_19_we0;
assign arrayreal_op_19_we0[1] = real_op_19_we0;
assign arrayreal_op_19_we0[2] = real_op_19_we0;
assign arrayreal_op_19_we0[3] = real_op_19_we0;
assign arrayreal_op_19_din0 = real_op_19_d0;
assign arrayreal_op_19_address1 = real_op_19_address1;
assign arrayreal_op_19_ce1 = real_op_19_ce1;
assign real_op_19_q1 = arrayreal_op_19_dout1;
assign arrayreal_op_19_we1 = 0;
assign arrayreal_op_19_din1 = 0;
assign arrayreal_op_19_ready= ready;
assign arrayreal_op_19_done = interface_done;


//------------------------arrayreal_op_20 Instantiation--------------

// The input and output of arrayreal_op_20
wire    arrayreal_op_20_ce0, arrayreal_op_20_ce1;
wire [4 - 1 : 0]    arrayreal_op_20_we0, arrayreal_op_20_we1;
wire    [5 : 0]    arrayreal_op_20_address0, arrayreal_op_20_address1;
wire    [31 : 0]    arrayreal_op_20_din0, arrayreal_op_20_din1;
wire    [31 : 0]    arrayreal_op_20_dout0, arrayreal_op_20_dout1;
wire    arrayreal_op_20_ready;
wire    arrayreal_op_20_done;

`AESL_MEM_real_op_20 `AESL_MEM_INST_real_op_20(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayreal_op_20_ce0),
    .we0        (arrayreal_op_20_we0),
    .address0   (arrayreal_op_20_address0),
    .din0       (arrayreal_op_20_din0),
    .dout0      (arrayreal_op_20_dout0),
    .ce1        (arrayreal_op_20_ce1),
    .we1        (arrayreal_op_20_we1),
    .address1   (arrayreal_op_20_address1),
    .din1       (arrayreal_op_20_din1),
    .dout1      (arrayreal_op_20_dout1),
    .ready      (arrayreal_op_20_ready),
    .done    (arrayreal_op_20_done)
);

// Assignment between dut and arrayreal_op_20
assign arrayreal_op_20_address0 = real_op_20_address0;
assign arrayreal_op_20_ce0 = real_op_20_ce0;
assign arrayreal_op_20_we0[0] = real_op_20_we0;
assign arrayreal_op_20_we0[1] = real_op_20_we0;
assign arrayreal_op_20_we0[2] = real_op_20_we0;
assign arrayreal_op_20_we0[3] = real_op_20_we0;
assign arrayreal_op_20_din0 = real_op_20_d0;
assign arrayreal_op_20_address1 = real_op_20_address1;
assign arrayreal_op_20_ce1 = real_op_20_ce1;
assign real_op_20_q1 = arrayreal_op_20_dout1;
assign arrayreal_op_20_we1 = 0;
assign arrayreal_op_20_din1 = 0;
assign arrayreal_op_20_ready= ready;
assign arrayreal_op_20_done = interface_done;


//------------------------arrayimag_op_0 Instantiation--------------

// The input and output of arrayimag_op_0
wire    arrayimag_op_0_ce0, arrayimag_op_0_ce1;
wire [4 - 1 : 0]    arrayimag_op_0_we0, arrayimag_op_0_we1;
wire    [5 : 0]    arrayimag_op_0_address0, arrayimag_op_0_address1;
wire    [31 : 0]    arrayimag_op_0_din0, arrayimag_op_0_din1;
wire    [31 : 0]    arrayimag_op_0_dout0, arrayimag_op_0_dout1;
wire    arrayimag_op_0_ready;
wire    arrayimag_op_0_done;

`AESL_MEM_imag_op_0 `AESL_MEM_INST_imag_op_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_0_ce0),
    .we0        (arrayimag_op_0_we0),
    .address0   (arrayimag_op_0_address0),
    .din0       (arrayimag_op_0_din0),
    .dout0      (arrayimag_op_0_dout0),
    .ce1        (arrayimag_op_0_ce1),
    .we1        (arrayimag_op_0_we1),
    .address1   (arrayimag_op_0_address1),
    .din1       (arrayimag_op_0_din1),
    .dout1      (arrayimag_op_0_dout1),
    .ready      (arrayimag_op_0_ready),
    .done    (arrayimag_op_0_done)
);

// Assignment between dut and arrayimag_op_0
assign arrayimag_op_0_address0 = imag_op_0_address0;
assign arrayimag_op_0_ce0 = imag_op_0_ce0;
assign arrayimag_op_0_we0[0] = imag_op_0_we0;
assign arrayimag_op_0_we0[1] = imag_op_0_we0;
assign arrayimag_op_0_we0[2] = imag_op_0_we0;
assign arrayimag_op_0_we0[3] = imag_op_0_we0;
assign arrayimag_op_0_din0 = imag_op_0_d0;
assign arrayimag_op_0_address1 = imag_op_0_address1;
assign arrayimag_op_0_ce1 = imag_op_0_ce1;
assign imag_op_0_q1 = arrayimag_op_0_dout1;
assign arrayimag_op_0_we1 = 0;
assign arrayimag_op_0_din1 = 0;
assign arrayimag_op_0_ready= ready;
assign arrayimag_op_0_done = interface_done;


//------------------------arrayimag_op_1 Instantiation--------------

// The input and output of arrayimag_op_1
wire    arrayimag_op_1_ce0, arrayimag_op_1_ce1;
wire [4 - 1 : 0]    arrayimag_op_1_we0, arrayimag_op_1_we1;
wire    [5 : 0]    arrayimag_op_1_address0, arrayimag_op_1_address1;
wire    [31 : 0]    arrayimag_op_1_din0, arrayimag_op_1_din1;
wire    [31 : 0]    arrayimag_op_1_dout0, arrayimag_op_1_dout1;
wire    arrayimag_op_1_ready;
wire    arrayimag_op_1_done;

`AESL_MEM_imag_op_1 `AESL_MEM_INST_imag_op_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_1_ce0),
    .we0        (arrayimag_op_1_we0),
    .address0   (arrayimag_op_1_address0),
    .din0       (arrayimag_op_1_din0),
    .dout0      (arrayimag_op_1_dout0),
    .ce1        (arrayimag_op_1_ce1),
    .we1        (arrayimag_op_1_we1),
    .address1   (arrayimag_op_1_address1),
    .din1       (arrayimag_op_1_din1),
    .dout1      (arrayimag_op_1_dout1),
    .ready      (arrayimag_op_1_ready),
    .done    (arrayimag_op_1_done)
);

// Assignment between dut and arrayimag_op_1
assign arrayimag_op_1_address0 = imag_op_1_address0;
assign arrayimag_op_1_ce0 = imag_op_1_ce0;
assign arrayimag_op_1_we0[0] = imag_op_1_we0;
assign arrayimag_op_1_we0[1] = imag_op_1_we0;
assign arrayimag_op_1_we0[2] = imag_op_1_we0;
assign arrayimag_op_1_we0[3] = imag_op_1_we0;
assign arrayimag_op_1_din0 = imag_op_1_d0;
assign arrayimag_op_1_address1 = imag_op_1_address1;
assign arrayimag_op_1_ce1 = imag_op_1_ce1;
assign imag_op_1_q1 = arrayimag_op_1_dout1;
assign arrayimag_op_1_we1 = 0;
assign arrayimag_op_1_din1 = 0;
assign arrayimag_op_1_ready= ready;
assign arrayimag_op_1_done = interface_done;


//------------------------arrayimag_op_2 Instantiation--------------

// The input and output of arrayimag_op_2
wire    arrayimag_op_2_ce0, arrayimag_op_2_ce1;
wire [4 - 1 : 0]    arrayimag_op_2_we0, arrayimag_op_2_we1;
wire    [5 : 0]    arrayimag_op_2_address0, arrayimag_op_2_address1;
wire    [31 : 0]    arrayimag_op_2_din0, arrayimag_op_2_din1;
wire    [31 : 0]    arrayimag_op_2_dout0, arrayimag_op_2_dout1;
wire    arrayimag_op_2_ready;
wire    arrayimag_op_2_done;

`AESL_MEM_imag_op_2 `AESL_MEM_INST_imag_op_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_2_ce0),
    .we0        (arrayimag_op_2_we0),
    .address0   (arrayimag_op_2_address0),
    .din0       (arrayimag_op_2_din0),
    .dout0      (arrayimag_op_2_dout0),
    .ce1        (arrayimag_op_2_ce1),
    .we1        (arrayimag_op_2_we1),
    .address1   (arrayimag_op_2_address1),
    .din1       (arrayimag_op_2_din1),
    .dout1      (arrayimag_op_2_dout1),
    .ready      (arrayimag_op_2_ready),
    .done    (arrayimag_op_2_done)
);

// Assignment between dut and arrayimag_op_2
assign arrayimag_op_2_address0 = imag_op_2_address0;
assign arrayimag_op_2_ce0 = imag_op_2_ce0;
assign arrayimag_op_2_we0[0] = imag_op_2_we0;
assign arrayimag_op_2_we0[1] = imag_op_2_we0;
assign arrayimag_op_2_we0[2] = imag_op_2_we0;
assign arrayimag_op_2_we0[3] = imag_op_2_we0;
assign arrayimag_op_2_din0 = imag_op_2_d0;
assign arrayimag_op_2_address1 = imag_op_2_address1;
assign arrayimag_op_2_ce1 = imag_op_2_ce1;
assign imag_op_2_q1 = arrayimag_op_2_dout1;
assign arrayimag_op_2_we1 = 0;
assign arrayimag_op_2_din1 = 0;
assign arrayimag_op_2_ready= ready;
assign arrayimag_op_2_done = interface_done;


//------------------------arrayimag_op_3 Instantiation--------------

// The input and output of arrayimag_op_3
wire    arrayimag_op_3_ce0, arrayimag_op_3_ce1;
wire [4 - 1 : 0]    arrayimag_op_3_we0, arrayimag_op_3_we1;
wire    [5 : 0]    arrayimag_op_3_address0, arrayimag_op_3_address1;
wire    [31 : 0]    arrayimag_op_3_din0, arrayimag_op_3_din1;
wire    [31 : 0]    arrayimag_op_3_dout0, arrayimag_op_3_dout1;
wire    arrayimag_op_3_ready;
wire    arrayimag_op_3_done;

`AESL_MEM_imag_op_3 `AESL_MEM_INST_imag_op_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_3_ce0),
    .we0        (arrayimag_op_3_we0),
    .address0   (arrayimag_op_3_address0),
    .din0       (arrayimag_op_3_din0),
    .dout0      (arrayimag_op_3_dout0),
    .ce1        (arrayimag_op_3_ce1),
    .we1        (arrayimag_op_3_we1),
    .address1   (arrayimag_op_3_address1),
    .din1       (arrayimag_op_3_din1),
    .dout1      (arrayimag_op_3_dout1),
    .ready      (arrayimag_op_3_ready),
    .done    (arrayimag_op_3_done)
);

// Assignment between dut and arrayimag_op_3
assign arrayimag_op_3_address0 = imag_op_3_address0;
assign arrayimag_op_3_ce0 = imag_op_3_ce0;
assign arrayimag_op_3_we0[0] = imag_op_3_we0;
assign arrayimag_op_3_we0[1] = imag_op_3_we0;
assign arrayimag_op_3_we0[2] = imag_op_3_we0;
assign arrayimag_op_3_we0[3] = imag_op_3_we0;
assign arrayimag_op_3_din0 = imag_op_3_d0;
assign arrayimag_op_3_address1 = imag_op_3_address1;
assign arrayimag_op_3_ce1 = imag_op_3_ce1;
assign imag_op_3_q1 = arrayimag_op_3_dout1;
assign arrayimag_op_3_we1 = 0;
assign arrayimag_op_3_din1 = 0;
assign arrayimag_op_3_ready= ready;
assign arrayimag_op_3_done = interface_done;


//------------------------arrayimag_op_4 Instantiation--------------

// The input and output of arrayimag_op_4
wire    arrayimag_op_4_ce0, arrayimag_op_4_ce1;
wire [4 - 1 : 0]    arrayimag_op_4_we0, arrayimag_op_4_we1;
wire    [5 : 0]    arrayimag_op_4_address0, arrayimag_op_4_address1;
wire    [31 : 0]    arrayimag_op_4_din0, arrayimag_op_4_din1;
wire    [31 : 0]    arrayimag_op_4_dout0, arrayimag_op_4_dout1;
wire    arrayimag_op_4_ready;
wire    arrayimag_op_4_done;

`AESL_MEM_imag_op_4 `AESL_MEM_INST_imag_op_4(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_4_ce0),
    .we0        (arrayimag_op_4_we0),
    .address0   (arrayimag_op_4_address0),
    .din0       (arrayimag_op_4_din0),
    .dout0      (arrayimag_op_4_dout0),
    .ce1        (arrayimag_op_4_ce1),
    .we1        (arrayimag_op_4_we1),
    .address1   (arrayimag_op_4_address1),
    .din1       (arrayimag_op_4_din1),
    .dout1      (arrayimag_op_4_dout1),
    .ready      (arrayimag_op_4_ready),
    .done    (arrayimag_op_4_done)
);

// Assignment between dut and arrayimag_op_4
assign arrayimag_op_4_address0 = imag_op_4_address0;
assign arrayimag_op_4_ce0 = imag_op_4_ce0;
assign arrayimag_op_4_we0[0] = imag_op_4_we0;
assign arrayimag_op_4_we0[1] = imag_op_4_we0;
assign arrayimag_op_4_we0[2] = imag_op_4_we0;
assign arrayimag_op_4_we0[3] = imag_op_4_we0;
assign arrayimag_op_4_din0 = imag_op_4_d0;
assign arrayimag_op_4_address1 = imag_op_4_address1;
assign arrayimag_op_4_ce1 = imag_op_4_ce1;
assign imag_op_4_q1 = arrayimag_op_4_dout1;
assign arrayimag_op_4_we1 = 0;
assign arrayimag_op_4_din1 = 0;
assign arrayimag_op_4_ready= ready;
assign arrayimag_op_4_done = interface_done;


//------------------------arrayimag_op_5 Instantiation--------------

// The input and output of arrayimag_op_5
wire    arrayimag_op_5_ce0, arrayimag_op_5_ce1;
wire [4 - 1 : 0]    arrayimag_op_5_we0, arrayimag_op_5_we1;
wire    [5 : 0]    arrayimag_op_5_address0, arrayimag_op_5_address1;
wire    [31 : 0]    arrayimag_op_5_din0, arrayimag_op_5_din1;
wire    [31 : 0]    arrayimag_op_5_dout0, arrayimag_op_5_dout1;
wire    arrayimag_op_5_ready;
wire    arrayimag_op_5_done;

`AESL_MEM_imag_op_5 `AESL_MEM_INST_imag_op_5(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_5_ce0),
    .we0        (arrayimag_op_5_we0),
    .address0   (arrayimag_op_5_address0),
    .din0       (arrayimag_op_5_din0),
    .dout0      (arrayimag_op_5_dout0),
    .ce1        (arrayimag_op_5_ce1),
    .we1        (arrayimag_op_5_we1),
    .address1   (arrayimag_op_5_address1),
    .din1       (arrayimag_op_5_din1),
    .dout1      (arrayimag_op_5_dout1),
    .ready      (arrayimag_op_5_ready),
    .done    (arrayimag_op_5_done)
);

// Assignment between dut and arrayimag_op_5
assign arrayimag_op_5_address0 = imag_op_5_address0;
assign arrayimag_op_5_ce0 = imag_op_5_ce0;
assign arrayimag_op_5_we0[0] = imag_op_5_we0;
assign arrayimag_op_5_we0[1] = imag_op_5_we0;
assign arrayimag_op_5_we0[2] = imag_op_5_we0;
assign arrayimag_op_5_we0[3] = imag_op_5_we0;
assign arrayimag_op_5_din0 = imag_op_5_d0;
assign arrayimag_op_5_address1 = imag_op_5_address1;
assign arrayimag_op_5_ce1 = imag_op_5_ce1;
assign imag_op_5_q1 = arrayimag_op_5_dout1;
assign arrayimag_op_5_we1 = 0;
assign arrayimag_op_5_din1 = 0;
assign arrayimag_op_5_ready= ready;
assign arrayimag_op_5_done = interface_done;


//------------------------arrayimag_op_6 Instantiation--------------

// The input and output of arrayimag_op_6
wire    arrayimag_op_6_ce0, arrayimag_op_6_ce1;
wire [4 - 1 : 0]    arrayimag_op_6_we0, arrayimag_op_6_we1;
wire    [5 : 0]    arrayimag_op_6_address0, arrayimag_op_6_address1;
wire    [31 : 0]    arrayimag_op_6_din0, arrayimag_op_6_din1;
wire    [31 : 0]    arrayimag_op_6_dout0, arrayimag_op_6_dout1;
wire    arrayimag_op_6_ready;
wire    arrayimag_op_6_done;

`AESL_MEM_imag_op_6 `AESL_MEM_INST_imag_op_6(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_6_ce0),
    .we0        (arrayimag_op_6_we0),
    .address0   (arrayimag_op_6_address0),
    .din0       (arrayimag_op_6_din0),
    .dout0      (arrayimag_op_6_dout0),
    .ce1        (arrayimag_op_6_ce1),
    .we1        (arrayimag_op_6_we1),
    .address1   (arrayimag_op_6_address1),
    .din1       (arrayimag_op_6_din1),
    .dout1      (arrayimag_op_6_dout1),
    .ready      (arrayimag_op_6_ready),
    .done    (arrayimag_op_6_done)
);

// Assignment between dut and arrayimag_op_6
assign arrayimag_op_6_address0 = imag_op_6_address0;
assign arrayimag_op_6_ce0 = imag_op_6_ce0;
assign arrayimag_op_6_we0[0] = imag_op_6_we0;
assign arrayimag_op_6_we0[1] = imag_op_6_we0;
assign arrayimag_op_6_we0[2] = imag_op_6_we0;
assign arrayimag_op_6_we0[3] = imag_op_6_we0;
assign arrayimag_op_6_din0 = imag_op_6_d0;
assign arrayimag_op_6_address1 = imag_op_6_address1;
assign arrayimag_op_6_ce1 = imag_op_6_ce1;
assign imag_op_6_q1 = arrayimag_op_6_dout1;
assign arrayimag_op_6_we1 = 0;
assign arrayimag_op_6_din1 = 0;
assign arrayimag_op_6_ready= ready;
assign arrayimag_op_6_done = interface_done;


//------------------------arrayimag_op_7 Instantiation--------------

// The input and output of arrayimag_op_7
wire    arrayimag_op_7_ce0, arrayimag_op_7_ce1;
wire [4 - 1 : 0]    arrayimag_op_7_we0, arrayimag_op_7_we1;
wire    [5 : 0]    arrayimag_op_7_address0, arrayimag_op_7_address1;
wire    [31 : 0]    arrayimag_op_7_din0, arrayimag_op_7_din1;
wire    [31 : 0]    arrayimag_op_7_dout0, arrayimag_op_7_dout1;
wire    arrayimag_op_7_ready;
wire    arrayimag_op_7_done;

`AESL_MEM_imag_op_7 `AESL_MEM_INST_imag_op_7(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_7_ce0),
    .we0        (arrayimag_op_7_we0),
    .address0   (arrayimag_op_7_address0),
    .din0       (arrayimag_op_7_din0),
    .dout0      (arrayimag_op_7_dout0),
    .ce1        (arrayimag_op_7_ce1),
    .we1        (arrayimag_op_7_we1),
    .address1   (arrayimag_op_7_address1),
    .din1       (arrayimag_op_7_din1),
    .dout1      (arrayimag_op_7_dout1),
    .ready      (arrayimag_op_7_ready),
    .done    (arrayimag_op_7_done)
);

// Assignment between dut and arrayimag_op_7
assign arrayimag_op_7_address0 = imag_op_7_address0;
assign arrayimag_op_7_ce0 = imag_op_7_ce0;
assign arrayimag_op_7_we0[0] = imag_op_7_we0;
assign arrayimag_op_7_we0[1] = imag_op_7_we0;
assign arrayimag_op_7_we0[2] = imag_op_7_we0;
assign arrayimag_op_7_we0[3] = imag_op_7_we0;
assign arrayimag_op_7_din0 = imag_op_7_d0;
assign arrayimag_op_7_address1 = imag_op_7_address1;
assign arrayimag_op_7_ce1 = imag_op_7_ce1;
assign imag_op_7_q1 = arrayimag_op_7_dout1;
assign arrayimag_op_7_we1 = 0;
assign arrayimag_op_7_din1 = 0;
assign arrayimag_op_7_ready= ready;
assign arrayimag_op_7_done = interface_done;


//------------------------arrayimag_op_8 Instantiation--------------

// The input and output of arrayimag_op_8
wire    arrayimag_op_8_ce0, arrayimag_op_8_ce1;
wire [4 - 1 : 0]    arrayimag_op_8_we0, arrayimag_op_8_we1;
wire    [5 : 0]    arrayimag_op_8_address0, arrayimag_op_8_address1;
wire    [31 : 0]    arrayimag_op_8_din0, arrayimag_op_8_din1;
wire    [31 : 0]    arrayimag_op_8_dout0, arrayimag_op_8_dout1;
wire    arrayimag_op_8_ready;
wire    arrayimag_op_8_done;

`AESL_MEM_imag_op_8 `AESL_MEM_INST_imag_op_8(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_8_ce0),
    .we0        (arrayimag_op_8_we0),
    .address0   (arrayimag_op_8_address0),
    .din0       (arrayimag_op_8_din0),
    .dout0      (arrayimag_op_8_dout0),
    .ce1        (arrayimag_op_8_ce1),
    .we1        (arrayimag_op_8_we1),
    .address1   (arrayimag_op_8_address1),
    .din1       (arrayimag_op_8_din1),
    .dout1      (arrayimag_op_8_dout1),
    .ready      (arrayimag_op_8_ready),
    .done    (arrayimag_op_8_done)
);

// Assignment between dut and arrayimag_op_8
assign arrayimag_op_8_address0 = imag_op_8_address0;
assign arrayimag_op_8_ce0 = imag_op_8_ce0;
assign arrayimag_op_8_we0[0] = imag_op_8_we0;
assign arrayimag_op_8_we0[1] = imag_op_8_we0;
assign arrayimag_op_8_we0[2] = imag_op_8_we0;
assign arrayimag_op_8_we0[3] = imag_op_8_we0;
assign arrayimag_op_8_din0 = imag_op_8_d0;
assign arrayimag_op_8_address1 = imag_op_8_address1;
assign arrayimag_op_8_ce1 = imag_op_8_ce1;
assign imag_op_8_q1 = arrayimag_op_8_dout1;
assign arrayimag_op_8_we1 = 0;
assign arrayimag_op_8_din1 = 0;
assign arrayimag_op_8_ready= ready;
assign arrayimag_op_8_done = interface_done;


//------------------------arrayimag_op_9 Instantiation--------------

// The input and output of arrayimag_op_9
wire    arrayimag_op_9_ce0, arrayimag_op_9_ce1;
wire [4 - 1 : 0]    arrayimag_op_9_we0, arrayimag_op_9_we1;
wire    [5 : 0]    arrayimag_op_9_address0, arrayimag_op_9_address1;
wire    [31 : 0]    arrayimag_op_9_din0, arrayimag_op_9_din1;
wire    [31 : 0]    arrayimag_op_9_dout0, arrayimag_op_9_dout1;
wire    arrayimag_op_9_ready;
wire    arrayimag_op_9_done;

`AESL_MEM_imag_op_9 `AESL_MEM_INST_imag_op_9(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_9_ce0),
    .we0        (arrayimag_op_9_we0),
    .address0   (arrayimag_op_9_address0),
    .din0       (arrayimag_op_9_din0),
    .dout0      (arrayimag_op_9_dout0),
    .ce1        (arrayimag_op_9_ce1),
    .we1        (arrayimag_op_9_we1),
    .address1   (arrayimag_op_9_address1),
    .din1       (arrayimag_op_9_din1),
    .dout1      (arrayimag_op_9_dout1),
    .ready      (arrayimag_op_9_ready),
    .done    (arrayimag_op_9_done)
);

// Assignment between dut and arrayimag_op_9
assign arrayimag_op_9_address0 = imag_op_9_address0;
assign arrayimag_op_9_ce0 = imag_op_9_ce0;
assign arrayimag_op_9_we0[0] = imag_op_9_we0;
assign arrayimag_op_9_we0[1] = imag_op_9_we0;
assign arrayimag_op_9_we0[2] = imag_op_9_we0;
assign arrayimag_op_9_we0[3] = imag_op_9_we0;
assign arrayimag_op_9_din0 = imag_op_9_d0;
assign arrayimag_op_9_address1 = imag_op_9_address1;
assign arrayimag_op_9_ce1 = imag_op_9_ce1;
assign imag_op_9_q1 = arrayimag_op_9_dout1;
assign arrayimag_op_9_we1 = 0;
assign arrayimag_op_9_din1 = 0;
assign arrayimag_op_9_ready= ready;
assign arrayimag_op_9_done = interface_done;


//------------------------arrayimag_op_10 Instantiation--------------

// The input and output of arrayimag_op_10
wire    arrayimag_op_10_ce0, arrayimag_op_10_ce1;
wire [4 - 1 : 0]    arrayimag_op_10_we0, arrayimag_op_10_we1;
wire    [5 : 0]    arrayimag_op_10_address0, arrayimag_op_10_address1;
wire    [31 : 0]    arrayimag_op_10_din0, arrayimag_op_10_din1;
wire    [31 : 0]    arrayimag_op_10_dout0, arrayimag_op_10_dout1;
wire    arrayimag_op_10_ready;
wire    arrayimag_op_10_done;

`AESL_MEM_imag_op_10 `AESL_MEM_INST_imag_op_10(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_10_ce0),
    .we0        (arrayimag_op_10_we0),
    .address0   (arrayimag_op_10_address0),
    .din0       (arrayimag_op_10_din0),
    .dout0      (arrayimag_op_10_dout0),
    .ce1        (arrayimag_op_10_ce1),
    .we1        (arrayimag_op_10_we1),
    .address1   (arrayimag_op_10_address1),
    .din1       (arrayimag_op_10_din1),
    .dout1      (arrayimag_op_10_dout1),
    .ready      (arrayimag_op_10_ready),
    .done    (arrayimag_op_10_done)
);

// Assignment between dut and arrayimag_op_10
assign arrayimag_op_10_address0 = imag_op_10_address0;
assign arrayimag_op_10_ce0 = imag_op_10_ce0;
assign arrayimag_op_10_we0[0] = imag_op_10_we0;
assign arrayimag_op_10_we0[1] = imag_op_10_we0;
assign arrayimag_op_10_we0[2] = imag_op_10_we0;
assign arrayimag_op_10_we0[3] = imag_op_10_we0;
assign arrayimag_op_10_din0 = imag_op_10_d0;
assign arrayimag_op_10_address1 = imag_op_10_address1;
assign arrayimag_op_10_ce1 = imag_op_10_ce1;
assign imag_op_10_q1 = arrayimag_op_10_dout1;
assign arrayimag_op_10_we1 = 0;
assign arrayimag_op_10_din1 = 0;
assign arrayimag_op_10_ready= ready;
assign arrayimag_op_10_done = interface_done;


//------------------------arrayimag_op_11 Instantiation--------------

// The input and output of arrayimag_op_11
wire    arrayimag_op_11_ce0, arrayimag_op_11_ce1;
wire [4 - 1 : 0]    arrayimag_op_11_we0, arrayimag_op_11_we1;
wire    [5 : 0]    arrayimag_op_11_address0, arrayimag_op_11_address1;
wire    [31 : 0]    arrayimag_op_11_din0, arrayimag_op_11_din1;
wire    [31 : 0]    arrayimag_op_11_dout0, arrayimag_op_11_dout1;
wire    arrayimag_op_11_ready;
wire    arrayimag_op_11_done;

`AESL_MEM_imag_op_11 `AESL_MEM_INST_imag_op_11(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_11_ce0),
    .we0        (arrayimag_op_11_we0),
    .address0   (arrayimag_op_11_address0),
    .din0       (arrayimag_op_11_din0),
    .dout0      (arrayimag_op_11_dout0),
    .ce1        (arrayimag_op_11_ce1),
    .we1        (arrayimag_op_11_we1),
    .address1   (arrayimag_op_11_address1),
    .din1       (arrayimag_op_11_din1),
    .dout1      (arrayimag_op_11_dout1),
    .ready      (arrayimag_op_11_ready),
    .done    (arrayimag_op_11_done)
);

// Assignment between dut and arrayimag_op_11
assign arrayimag_op_11_address0 = imag_op_11_address0;
assign arrayimag_op_11_ce0 = imag_op_11_ce0;
assign arrayimag_op_11_we0[0] = imag_op_11_we0;
assign arrayimag_op_11_we0[1] = imag_op_11_we0;
assign arrayimag_op_11_we0[2] = imag_op_11_we0;
assign arrayimag_op_11_we0[3] = imag_op_11_we0;
assign arrayimag_op_11_din0 = imag_op_11_d0;
assign arrayimag_op_11_address1 = imag_op_11_address1;
assign arrayimag_op_11_ce1 = imag_op_11_ce1;
assign imag_op_11_q1 = arrayimag_op_11_dout1;
assign arrayimag_op_11_we1 = 0;
assign arrayimag_op_11_din1 = 0;
assign arrayimag_op_11_ready= ready;
assign arrayimag_op_11_done = interface_done;


//------------------------arrayimag_op_12 Instantiation--------------

// The input and output of arrayimag_op_12
wire    arrayimag_op_12_ce0, arrayimag_op_12_ce1;
wire [4 - 1 : 0]    arrayimag_op_12_we0, arrayimag_op_12_we1;
wire    [5 : 0]    arrayimag_op_12_address0, arrayimag_op_12_address1;
wire    [31 : 0]    arrayimag_op_12_din0, arrayimag_op_12_din1;
wire    [31 : 0]    arrayimag_op_12_dout0, arrayimag_op_12_dout1;
wire    arrayimag_op_12_ready;
wire    arrayimag_op_12_done;

`AESL_MEM_imag_op_12 `AESL_MEM_INST_imag_op_12(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_12_ce0),
    .we0        (arrayimag_op_12_we0),
    .address0   (arrayimag_op_12_address0),
    .din0       (arrayimag_op_12_din0),
    .dout0      (arrayimag_op_12_dout0),
    .ce1        (arrayimag_op_12_ce1),
    .we1        (arrayimag_op_12_we1),
    .address1   (arrayimag_op_12_address1),
    .din1       (arrayimag_op_12_din1),
    .dout1      (arrayimag_op_12_dout1),
    .ready      (arrayimag_op_12_ready),
    .done    (arrayimag_op_12_done)
);

// Assignment between dut and arrayimag_op_12
assign arrayimag_op_12_address0 = imag_op_12_address0;
assign arrayimag_op_12_ce0 = imag_op_12_ce0;
assign arrayimag_op_12_we0[0] = imag_op_12_we0;
assign arrayimag_op_12_we0[1] = imag_op_12_we0;
assign arrayimag_op_12_we0[2] = imag_op_12_we0;
assign arrayimag_op_12_we0[3] = imag_op_12_we0;
assign arrayimag_op_12_din0 = imag_op_12_d0;
assign arrayimag_op_12_address1 = imag_op_12_address1;
assign arrayimag_op_12_ce1 = imag_op_12_ce1;
assign imag_op_12_q1 = arrayimag_op_12_dout1;
assign arrayimag_op_12_we1 = 0;
assign arrayimag_op_12_din1 = 0;
assign arrayimag_op_12_ready= ready;
assign arrayimag_op_12_done = interface_done;


//------------------------arrayimag_op_13 Instantiation--------------

// The input and output of arrayimag_op_13
wire    arrayimag_op_13_ce0, arrayimag_op_13_ce1;
wire [4 - 1 : 0]    arrayimag_op_13_we0, arrayimag_op_13_we1;
wire    [5 : 0]    arrayimag_op_13_address0, arrayimag_op_13_address1;
wire    [31 : 0]    arrayimag_op_13_din0, arrayimag_op_13_din1;
wire    [31 : 0]    arrayimag_op_13_dout0, arrayimag_op_13_dout1;
wire    arrayimag_op_13_ready;
wire    arrayimag_op_13_done;

`AESL_MEM_imag_op_13 `AESL_MEM_INST_imag_op_13(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_13_ce0),
    .we0        (arrayimag_op_13_we0),
    .address0   (arrayimag_op_13_address0),
    .din0       (arrayimag_op_13_din0),
    .dout0      (arrayimag_op_13_dout0),
    .ce1        (arrayimag_op_13_ce1),
    .we1        (arrayimag_op_13_we1),
    .address1   (arrayimag_op_13_address1),
    .din1       (arrayimag_op_13_din1),
    .dout1      (arrayimag_op_13_dout1),
    .ready      (arrayimag_op_13_ready),
    .done    (arrayimag_op_13_done)
);

// Assignment between dut and arrayimag_op_13
assign arrayimag_op_13_address0 = imag_op_13_address0;
assign arrayimag_op_13_ce0 = imag_op_13_ce0;
assign arrayimag_op_13_we0[0] = imag_op_13_we0;
assign arrayimag_op_13_we0[1] = imag_op_13_we0;
assign arrayimag_op_13_we0[2] = imag_op_13_we0;
assign arrayimag_op_13_we0[3] = imag_op_13_we0;
assign arrayimag_op_13_din0 = imag_op_13_d0;
assign arrayimag_op_13_address1 = imag_op_13_address1;
assign arrayimag_op_13_ce1 = imag_op_13_ce1;
assign imag_op_13_q1 = arrayimag_op_13_dout1;
assign arrayimag_op_13_we1 = 0;
assign arrayimag_op_13_din1 = 0;
assign arrayimag_op_13_ready= ready;
assign arrayimag_op_13_done = interface_done;


//------------------------arrayimag_op_14 Instantiation--------------

// The input and output of arrayimag_op_14
wire    arrayimag_op_14_ce0, arrayimag_op_14_ce1;
wire [4 - 1 : 0]    arrayimag_op_14_we0, arrayimag_op_14_we1;
wire    [5 : 0]    arrayimag_op_14_address0, arrayimag_op_14_address1;
wire    [31 : 0]    arrayimag_op_14_din0, arrayimag_op_14_din1;
wire    [31 : 0]    arrayimag_op_14_dout0, arrayimag_op_14_dout1;
wire    arrayimag_op_14_ready;
wire    arrayimag_op_14_done;

`AESL_MEM_imag_op_14 `AESL_MEM_INST_imag_op_14(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_14_ce0),
    .we0        (arrayimag_op_14_we0),
    .address0   (arrayimag_op_14_address0),
    .din0       (arrayimag_op_14_din0),
    .dout0      (arrayimag_op_14_dout0),
    .ce1        (arrayimag_op_14_ce1),
    .we1        (arrayimag_op_14_we1),
    .address1   (arrayimag_op_14_address1),
    .din1       (arrayimag_op_14_din1),
    .dout1      (arrayimag_op_14_dout1),
    .ready      (arrayimag_op_14_ready),
    .done    (arrayimag_op_14_done)
);

// Assignment between dut and arrayimag_op_14
assign arrayimag_op_14_address0 = imag_op_14_address0;
assign arrayimag_op_14_ce0 = imag_op_14_ce0;
assign arrayimag_op_14_we0[0] = imag_op_14_we0;
assign arrayimag_op_14_we0[1] = imag_op_14_we0;
assign arrayimag_op_14_we0[2] = imag_op_14_we0;
assign arrayimag_op_14_we0[3] = imag_op_14_we0;
assign arrayimag_op_14_din0 = imag_op_14_d0;
assign arrayimag_op_14_address1 = imag_op_14_address1;
assign arrayimag_op_14_ce1 = imag_op_14_ce1;
assign imag_op_14_q1 = arrayimag_op_14_dout1;
assign arrayimag_op_14_we1 = 0;
assign arrayimag_op_14_din1 = 0;
assign arrayimag_op_14_ready= ready;
assign arrayimag_op_14_done = interface_done;


//------------------------arrayimag_op_15 Instantiation--------------

// The input and output of arrayimag_op_15
wire    arrayimag_op_15_ce0, arrayimag_op_15_ce1;
wire [4 - 1 : 0]    arrayimag_op_15_we0, arrayimag_op_15_we1;
wire    [5 : 0]    arrayimag_op_15_address0, arrayimag_op_15_address1;
wire    [31 : 0]    arrayimag_op_15_din0, arrayimag_op_15_din1;
wire    [31 : 0]    arrayimag_op_15_dout0, arrayimag_op_15_dout1;
wire    arrayimag_op_15_ready;
wire    arrayimag_op_15_done;

`AESL_MEM_imag_op_15 `AESL_MEM_INST_imag_op_15(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_15_ce0),
    .we0        (arrayimag_op_15_we0),
    .address0   (arrayimag_op_15_address0),
    .din0       (arrayimag_op_15_din0),
    .dout0      (arrayimag_op_15_dout0),
    .ce1        (arrayimag_op_15_ce1),
    .we1        (arrayimag_op_15_we1),
    .address1   (arrayimag_op_15_address1),
    .din1       (arrayimag_op_15_din1),
    .dout1      (arrayimag_op_15_dout1),
    .ready      (arrayimag_op_15_ready),
    .done    (arrayimag_op_15_done)
);

// Assignment between dut and arrayimag_op_15
assign arrayimag_op_15_address0 = imag_op_15_address0;
assign arrayimag_op_15_ce0 = imag_op_15_ce0;
assign arrayimag_op_15_we0[0] = imag_op_15_we0;
assign arrayimag_op_15_we0[1] = imag_op_15_we0;
assign arrayimag_op_15_we0[2] = imag_op_15_we0;
assign arrayimag_op_15_we0[3] = imag_op_15_we0;
assign arrayimag_op_15_din0 = imag_op_15_d0;
assign arrayimag_op_15_address1 = imag_op_15_address1;
assign arrayimag_op_15_ce1 = imag_op_15_ce1;
assign imag_op_15_q1 = arrayimag_op_15_dout1;
assign arrayimag_op_15_we1 = 0;
assign arrayimag_op_15_din1 = 0;
assign arrayimag_op_15_ready= ready;
assign arrayimag_op_15_done = interface_done;


//------------------------arrayimag_op_16 Instantiation--------------

// The input and output of arrayimag_op_16
wire    arrayimag_op_16_ce0, arrayimag_op_16_ce1;
wire [4 - 1 : 0]    arrayimag_op_16_we0, arrayimag_op_16_we1;
wire    [5 : 0]    arrayimag_op_16_address0, arrayimag_op_16_address1;
wire    [31 : 0]    arrayimag_op_16_din0, arrayimag_op_16_din1;
wire    [31 : 0]    arrayimag_op_16_dout0, arrayimag_op_16_dout1;
wire    arrayimag_op_16_ready;
wire    arrayimag_op_16_done;

`AESL_MEM_imag_op_16 `AESL_MEM_INST_imag_op_16(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_16_ce0),
    .we0        (arrayimag_op_16_we0),
    .address0   (arrayimag_op_16_address0),
    .din0       (arrayimag_op_16_din0),
    .dout0      (arrayimag_op_16_dout0),
    .ce1        (arrayimag_op_16_ce1),
    .we1        (arrayimag_op_16_we1),
    .address1   (arrayimag_op_16_address1),
    .din1       (arrayimag_op_16_din1),
    .dout1      (arrayimag_op_16_dout1),
    .ready      (arrayimag_op_16_ready),
    .done    (arrayimag_op_16_done)
);

// Assignment between dut and arrayimag_op_16
assign arrayimag_op_16_address0 = imag_op_16_address0;
assign arrayimag_op_16_ce0 = imag_op_16_ce0;
assign arrayimag_op_16_we0[0] = imag_op_16_we0;
assign arrayimag_op_16_we0[1] = imag_op_16_we0;
assign arrayimag_op_16_we0[2] = imag_op_16_we0;
assign arrayimag_op_16_we0[3] = imag_op_16_we0;
assign arrayimag_op_16_din0 = imag_op_16_d0;
assign arrayimag_op_16_address1 = imag_op_16_address1;
assign arrayimag_op_16_ce1 = imag_op_16_ce1;
assign imag_op_16_q1 = arrayimag_op_16_dout1;
assign arrayimag_op_16_we1 = 0;
assign arrayimag_op_16_din1 = 0;
assign arrayimag_op_16_ready= ready;
assign arrayimag_op_16_done = interface_done;


//------------------------arrayimag_op_17 Instantiation--------------

// The input and output of arrayimag_op_17
wire    arrayimag_op_17_ce0, arrayimag_op_17_ce1;
wire [4 - 1 : 0]    arrayimag_op_17_we0, arrayimag_op_17_we1;
wire    [5 : 0]    arrayimag_op_17_address0, arrayimag_op_17_address1;
wire    [31 : 0]    arrayimag_op_17_din0, arrayimag_op_17_din1;
wire    [31 : 0]    arrayimag_op_17_dout0, arrayimag_op_17_dout1;
wire    arrayimag_op_17_ready;
wire    arrayimag_op_17_done;

`AESL_MEM_imag_op_17 `AESL_MEM_INST_imag_op_17(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_17_ce0),
    .we0        (arrayimag_op_17_we0),
    .address0   (arrayimag_op_17_address0),
    .din0       (arrayimag_op_17_din0),
    .dout0      (arrayimag_op_17_dout0),
    .ce1        (arrayimag_op_17_ce1),
    .we1        (arrayimag_op_17_we1),
    .address1   (arrayimag_op_17_address1),
    .din1       (arrayimag_op_17_din1),
    .dout1      (arrayimag_op_17_dout1),
    .ready      (arrayimag_op_17_ready),
    .done    (arrayimag_op_17_done)
);

// Assignment between dut and arrayimag_op_17
assign arrayimag_op_17_address0 = imag_op_17_address0;
assign arrayimag_op_17_ce0 = imag_op_17_ce0;
assign arrayimag_op_17_we0[0] = imag_op_17_we0;
assign arrayimag_op_17_we0[1] = imag_op_17_we0;
assign arrayimag_op_17_we0[2] = imag_op_17_we0;
assign arrayimag_op_17_we0[3] = imag_op_17_we0;
assign arrayimag_op_17_din0 = imag_op_17_d0;
assign arrayimag_op_17_address1 = imag_op_17_address1;
assign arrayimag_op_17_ce1 = imag_op_17_ce1;
assign imag_op_17_q1 = arrayimag_op_17_dout1;
assign arrayimag_op_17_we1 = 0;
assign arrayimag_op_17_din1 = 0;
assign arrayimag_op_17_ready= ready;
assign arrayimag_op_17_done = interface_done;


//------------------------arrayimag_op_18 Instantiation--------------

// The input and output of arrayimag_op_18
wire    arrayimag_op_18_ce0, arrayimag_op_18_ce1;
wire [4 - 1 : 0]    arrayimag_op_18_we0, arrayimag_op_18_we1;
wire    [5 : 0]    arrayimag_op_18_address0, arrayimag_op_18_address1;
wire    [31 : 0]    arrayimag_op_18_din0, arrayimag_op_18_din1;
wire    [31 : 0]    arrayimag_op_18_dout0, arrayimag_op_18_dout1;
wire    arrayimag_op_18_ready;
wire    arrayimag_op_18_done;

`AESL_MEM_imag_op_18 `AESL_MEM_INST_imag_op_18(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_18_ce0),
    .we0        (arrayimag_op_18_we0),
    .address0   (arrayimag_op_18_address0),
    .din0       (arrayimag_op_18_din0),
    .dout0      (arrayimag_op_18_dout0),
    .ce1        (arrayimag_op_18_ce1),
    .we1        (arrayimag_op_18_we1),
    .address1   (arrayimag_op_18_address1),
    .din1       (arrayimag_op_18_din1),
    .dout1      (arrayimag_op_18_dout1),
    .ready      (arrayimag_op_18_ready),
    .done    (arrayimag_op_18_done)
);

// Assignment between dut and arrayimag_op_18
assign arrayimag_op_18_address0 = imag_op_18_address0;
assign arrayimag_op_18_ce0 = imag_op_18_ce0;
assign arrayimag_op_18_we0[0] = imag_op_18_we0;
assign arrayimag_op_18_we0[1] = imag_op_18_we0;
assign arrayimag_op_18_we0[2] = imag_op_18_we0;
assign arrayimag_op_18_we0[3] = imag_op_18_we0;
assign arrayimag_op_18_din0 = imag_op_18_d0;
assign arrayimag_op_18_address1 = imag_op_18_address1;
assign arrayimag_op_18_ce1 = imag_op_18_ce1;
assign imag_op_18_q1 = arrayimag_op_18_dout1;
assign arrayimag_op_18_we1 = 0;
assign arrayimag_op_18_din1 = 0;
assign arrayimag_op_18_ready= ready;
assign arrayimag_op_18_done = interface_done;


//------------------------arrayimag_op_19 Instantiation--------------

// The input and output of arrayimag_op_19
wire    arrayimag_op_19_ce0, arrayimag_op_19_ce1;
wire [4 - 1 : 0]    arrayimag_op_19_we0, arrayimag_op_19_we1;
wire    [5 : 0]    arrayimag_op_19_address0, arrayimag_op_19_address1;
wire    [31 : 0]    arrayimag_op_19_din0, arrayimag_op_19_din1;
wire    [31 : 0]    arrayimag_op_19_dout0, arrayimag_op_19_dout1;
wire    arrayimag_op_19_ready;
wire    arrayimag_op_19_done;

`AESL_MEM_imag_op_19 `AESL_MEM_INST_imag_op_19(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_19_ce0),
    .we0        (arrayimag_op_19_we0),
    .address0   (arrayimag_op_19_address0),
    .din0       (arrayimag_op_19_din0),
    .dout0      (arrayimag_op_19_dout0),
    .ce1        (arrayimag_op_19_ce1),
    .we1        (arrayimag_op_19_we1),
    .address1   (arrayimag_op_19_address1),
    .din1       (arrayimag_op_19_din1),
    .dout1      (arrayimag_op_19_dout1),
    .ready      (arrayimag_op_19_ready),
    .done    (arrayimag_op_19_done)
);

// Assignment between dut and arrayimag_op_19
assign arrayimag_op_19_address0 = imag_op_19_address0;
assign arrayimag_op_19_ce0 = imag_op_19_ce0;
assign arrayimag_op_19_we0[0] = imag_op_19_we0;
assign arrayimag_op_19_we0[1] = imag_op_19_we0;
assign arrayimag_op_19_we0[2] = imag_op_19_we0;
assign arrayimag_op_19_we0[3] = imag_op_19_we0;
assign arrayimag_op_19_din0 = imag_op_19_d0;
assign arrayimag_op_19_address1 = imag_op_19_address1;
assign arrayimag_op_19_ce1 = imag_op_19_ce1;
assign imag_op_19_q1 = arrayimag_op_19_dout1;
assign arrayimag_op_19_we1 = 0;
assign arrayimag_op_19_din1 = 0;
assign arrayimag_op_19_ready= ready;
assign arrayimag_op_19_done = interface_done;


//------------------------arrayimag_op_20 Instantiation--------------

// The input and output of arrayimag_op_20
wire    arrayimag_op_20_ce0, arrayimag_op_20_ce1;
wire [4 - 1 : 0]    arrayimag_op_20_we0, arrayimag_op_20_we1;
wire    [5 : 0]    arrayimag_op_20_address0, arrayimag_op_20_address1;
wire    [31 : 0]    arrayimag_op_20_din0, arrayimag_op_20_din1;
wire    [31 : 0]    arrayimag_op_20_dout0, arrayimag_op_20_dout1;
wire    arrayimag_op_20_ready;
wire    arrayimag_op_20_done;

`AESL_MEM_imag_op_20 `AESL_MEM_INST_imag_op_20(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayimag_op_20_ce0),
    .we0        (arrayimag_op_20_we0),
    .address0   (arrayimag_op_20_address0),
    .din0       (arrayimag_op_20_din0),
    .dout0      (arrayimag_op_20_dout0),
    .ce1        (arrayimag_op_20_ce1),
    .we1        (arrayimag_op_20_we1),
    .address1   (arrayimag_op_20_address1),
    .din1       (arrayimag_op_20_din1),
    .dout1      (arrayimag_op_20_dout1),
    .ready      (arrayimag_op_20_ready),
    .done    (arrayimag_op_20_done)
);

// Assignment between dut and arrayimag_op_20
assign arrayimag_op_20_address0 = imag_op_20_address0;
assign arrayimag_op_20_ce0 = imag_op_20_ce0;
assign arrayimag_op_20_we0[0] = imag_op_20_we0;
assign arrayimag_op_20_we0[1] = imag_op_20_we0;
assign arrayimag_op_20_we0[2] = imag_op_20_we0;
assign arrayimag_op_20_we0[3] = imag_op_20_we0;
assign arrayimag_op_20_din0 = imag_op_20_d0;
assign arrayimag_op_20_address1 = imag_op_20_address1;
assign arrayimag_op_20_ce1 = imag_op_20_ce1;
assign imag_op_20_q1 = arrayimag_op_20_dout1;
assign arrayimag_op_20_we1 = 0;
assign arrayimag_op_20_din1 = 0;
assign arrayimag_op_20_ready= ready;
assign arrayimag_op_20_done = interface_done;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_real_sample;
reg [31:0] size_real_sample;
reg [31:0] size_real_sample_backup;
reg end_real_op_0;
reg [31:0] size_real_op_0;
reg [31:0] size_real_op_0_backup;
reg end_real_op_1;
reg [31:0] size_real_op_1;
reg [31:0] size_real_op_1_backup;
reg end_real_op_2;
reg [31:0] size_real_op_2;
reg [31:0] size_real_op_2_backup;
reg end_real_op_3;
reg [31:0] size_real_op_3;
reg [31:0] size_real_op_3_backup;
reg end_real_op_4;
reg [31:0] size_real_op_4;
reg [31:0] size_real_op_4_backup;
reg end_real_op_5;
reg [31:0] size_real_op_5;
reg [31:0] size_real_op_5_backup;
reg end_real_op_6;
reg [31:0] size_real_op_6;
reg [31:0] size_real_op_6_backup;
reg end_real_op_7;
reg [31:0] size_real_op_7;
reg [31:0] size_real_op_7_backup;
reg end_real_op_8;
reg [31:0] size_real_op_8;
reg [31:0] size_real_op_8_backup;
reg end_real_op_9;
reg [31:0] size_real_op_9;
reg [31:0] size_real_op_9_backup;
reg end_real_op_10;
reg [31:0] size_real_op_10;
reg [31:0] size_real_op_10_backup;
reg end_real_op_11;
reg [31:0] size_real_op_11;
reg [31:0] size_real_op_11_backup;
reg end_real_op_12;
reg [31:0] size_real_op_12;
reg [31:0] size_real_op_12_backup;
reg end_real_op_13;
reg [31:0] size_real_op_13;
reg [31:0] size_real_op_13_backup;
reg end_real_op_14;
reg [31:0] size_real_op_14;
reg [31:0] size_real_op_14_backup;
reg end_real_op_15;
reg [31:0] size_real_op_15;
reg [31:0] size_real_op_15_backup;
reg end_real_op_16;
reg [31:0] size_real_op_16;
reg [31:0] size_real_op_16_backup;
reg end_real_op_17;
reg [31:0] size_real_op_17;
reg [31:0] size_real_op_17_backup;
reg end_real_op_18;
reg [31:0] size_real_op_18;
reg [31:0] size_real_op_18_backup;
reg end_real_op_19;
reg [31:0] size_real_op_19;
reg [31:0] size_real_op_19_backup;
reg end_real_op_20;
reg [31:0] size_real_op_20;
reg [31:0] size_real_op_20_backup;
reg end_imag_op_0;
reg [31:0] size_imag_op_0;
reg [31:0] size_imag_op_0_backup;
reg end_imag_op_1;
reg [31:0] size_imag_op_1;
reg [31:0] size_imag_op_1_backup;
reg end_imag_op_2;
reg [31:0] size_imag_op_2;
reg [31:0] size_imag_op_2_backup;
reg end_imag_op_3;
reg [31:0] size_imag_op_3;
reg [31:0] size_imag_op_3_backup;
reg end_imag_op_4;
reg [31:0] size_imag_op_4;
reg [31:0] size_imag_op_4_backup;
reg end_imag_op_5;
reg [31:0] size_imag_op_5;
reg [31:0] size_imag_op_5_backup;
reg end_imag_op_6;
reg [31:0] size_imag_op_6;
reg [31:0] size_imag_op_6_backup;
reg end_imag_op_7;
reg [31:0] size_imag_op_7;
reg [31:0] size_imag_op_7_backup;
reg end_imag_op_8;
reg [31:0] size_imag_op_8;
reg [31:0] size_imag_op_8_backup;
reg end_imag_op_9;
reg [31:0] size_imag_op_9;
reg [31:0] size_imag_op_9_backup;
reg end_imag_op_10;
reg [31:0] size_imag_op_10;
reg [31:0] size_imag_op_10_backup;
reg end_imag_op_11;
reg [31:0] size_imag_op_11;
reg [31:0] size_imag_op_11_backup;
reg end_imag_op_12;
reg [31:0] size_imag_op_12;
reg [31:0] size_imag_op_12_backup;
reg end_imag_op_13;
reg [31:0] size_imag_op_13;
reg [31:0] size_imag_op_13_backup;
reg end_imag_op_14;
reg [31:0] size_imag_op_14;
reg [31:0] size_imag_op_14_backup;
reg end_imag_op_15;
reg [31:0] size_imag_op_15;
reg [31:0] size_imag_op_15_backup;
reg end_imag_op_16;
reg [31:0] size_imag_op_16;
reg [31:0] size_imag_op_16_backup;
reg end_imag_op_17;
reg [31:0] size_imag_op_17;
reg [31:0] size_imag_op_17_backup;
reg end_imag_op_18;
reg [31:0] size_imag_op_18;
reg [31:0] size_imag_op_18_backup;
reg end_imag_op_19;
reg [31:0] size_imag_op_19;
reg [31:0] size_imag_op_19_backup;
reg end_imag_op_20;
reg [31:0] size_imag_op_20;
reg [31:0] size_imag_op_20_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    start = 0;
    ce = 1;
    wait(AESL_reset === 0);
    @ (posedge AESL_clock);
    while (1) begin
        if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
        #0 start = 1;
        end
        @ (posedge AESL_clock);
        while (AESL_ready !== 1) begin
            @ (posedge AESL_clock);
        end
        if (AESL_done !== 1) begin
            #0 start = 0;
            while (AESL_done !== 1) begin
                @ (posedge AESL_clock);
            end
            @ (posedge AESL_clock);
        end
        #0 start = 0;
        @ (negedge AESL_clock);
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = (ready_initial | AESL_done_delay);
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready_wire = (ready_initial | AESL_done_delay);
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_real_op_0;

initial begin : dump_tvout_runtime_sign_real_op_0
    integer fp;
    dump_tvout_finish_real_op_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_0 = 1;
end


reg dump_tvout_finish_real_op_1;

initial begin : dump_tvout_runtime_sign_real_op_1
    integer fp;
    dump_tvout_finish_real_op_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_1 = 1;
end


reg dump_tvout_finish_real_op_2;

initial begin : dump_tvout_runtime_sign_real_op_2
    integer fp;
    dump_tvout_finish_real_op_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_2 = 1;
end


reg dump_tvout_finish_real_op_3;

initial begin : dump_tvout_runtime_sign_real_op_3
    integer fp;
    dump_tvout_finish_real_op_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_3 = 1;
end


reg dump_tvout_finish_real_op_4;

initial begin : dump_tvout_runtime_sign_real_op_4
    integer fp;
    dump_tvout_finish_real_op_4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_4_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_4_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_4 = 1;
end


reg dump_tvout_finish_real_op_5;

initial begin : dump_tvout_runtime_sign_real_op_5
    integer fp;
    dump_tvout_finish_real_op_5 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_5_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_5_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_5 = 1;
end


reg dump_tvout_finish_real_op_6;

initial begin : dump_tvout_runtime_sign_real_op_6
    integer fp;
    dump_tvout_finish_real_op_6 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_6_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_6_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_6 = 1;
end


reg dump_tvout_finish_real_op_7;

initial begin : dump_tvout_runtime_sign_real_op_7
    integer fp;
    dump_tvout_finish_real_op_7 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_7_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_7_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_7 = 1;
end


reg dump_tvout_finish_real_op_8;

initial begin : dump_tvout_runtime_sign_real_op_8
    integer fp;
    dump_tvout_finish_real_op_8 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_8_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_8_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_8 = 1;
end


reg dump_tvout_finish_real_op_9;

initial begin : dump_tvout_runtime_sign_real_op_9
    integer fp;
    dump_tvout_finish_real_op_9 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_9_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_9_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_9 = 1;
end


reg dump_tvout_finish_real_op_10;

initial begin : dump_tvout_runtime_sign_real_op_10
    integer fp;
    dump_tvout_finish_real_op_10 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_10_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_10_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_10 = 1;
end


reg dump_tvout_finish_real_op_11;

initial begin : dump_tvout_runtime_sign_real_op_11
    integer fp;
    dump_tvout_finish_real_op_11 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_11_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_11_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_11 = 1;
end


reg dump_tvout_finish_real_op_12;

initial begin : dump_tvout_runtime_sign_real_op_12
    integer fp;
    dump_tvout_finish_real_op_12 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_12_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_12_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_12_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_12_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_12 = 1;
end


reg dump_tvout_finish_real_op_13;

initial begin : dump_tvout_runtime_sign_real_op_13
    integer fp;
    dump_tvout_finish_real_op_13 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_13_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_13_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_13_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_13_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_13 = 1;
end


reg dump_tvout_finish_real_op_14;

initial begin : dump_tvout_runtime_sign_real_op_14
    integer fp;
    dump_tvout_finish_real_op_14 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_14_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_14_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_14_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_14_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_14 = 1;
end


reg dump_tvout_finish_real_op_15;

initial begin : dump_tvout_runtime_sign_real_op_15
    integer fp;
    dump_tvout_finish_real_op_15 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_15_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_15_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_15_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_15_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_15 = 1;
end


reg dump_tvout_finish_real_op_16;

initial begin : dump_tvout_runtime_sign_real_op_16
    integer fp;
    dump_tvout_finish_real_op_16 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_16_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_16_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_16_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_16_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_16 = 1;
end


reg dump_tvout_finish_real_op_17;

initial begin : dump_tvout_runtime_sign_real_op_17
    integer fp;
    dump_tvout_finish_real_op_17 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_17_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_17_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_17_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_17_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_17 = 1;
end


reg dump_tvout_finish_real_op_18;

initial begin : dump_tvout_runtime_sign_real_op_18
    integer fp;
    dump_tvout_finish_real_op_18 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_18_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_18_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_18_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_18_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_18 = 1;
end


reg dump_tvout_finish_real_op_19;

initial begin : dump_tvout_runtime_sign_real_op_19
    integer fp;
    dump_tvout_finish_real_op_19 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_19_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_19_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_19_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_19_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_19 = 1;
end


reg dump_tvout_finish_real_op_20;

initial begin : dump_tvout_runtime_sign_real_op_20
    integer fp;
    dump_tvout_finish_real_op_20 = 0;
    fp = $fopen(`AUTOTB_TVOUT_real_op_20_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_20_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_real_op_20_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_real_op_20_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_real_op_20 = 1;
end


reg dump_tvout_finish_imag_op_0;

initial begin : dump_tvout_runtime_sign_imag_op_0
    integer fp;
    dump_tvout_finish_imag_op_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_0 = 1;
end


reg dump_tvout_finish_imag_op_1;

initial begin : dump_tvout_runtime_sign_imag_op_1
    integer fp;
    dump_tvout_finish_imag_op_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_1 = 1;
end


reg dump_tvout_finish_imag_op_2;

initial begin : dump_tvout_runtime_sign_imag_op_2
    integer fp;
    dump_tvout_finish_imag_op_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_2 = 1;
end


reg dump_tvout_finish_imag_op_3;

initial begin : dump_tvout_runtime_sign_imag_op_3
    integer fp;
    dump_tvout_finish_imag_op_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_3 = 1;
end


reg dump_tvout_finish_imag_op_4;

initial begin : dump_tvout_runtime_sign_imag_op_4
    integer fp;
    dump_tvout_finish_imag_op_4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_4_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_4_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_4 = 1;
end


reg dump_tvout_finish_imag_op_5;

initial begin : dump_tvout_runtime_sign_imag_op_5
    integer fp;
    dump_tvout_finish_imag_op_5 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_5_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_5_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_5 = 1;
end


reg dump_tvout_finish_imag_op_6;

initial begin : dump_tvout_runtime_sign_imag_op_6
    integer fp;
    dump_tvout_finish_imag_op_6 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_6_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_6_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_6 = 1;
end


reg dump_tvout_finish_imag_op_7;

initial begin : dump_tvout_runtime_sign_imag_op_7
    integer fp;
    dump_tvout_finish_imag_op_7 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_7_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_7_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_7 = 1;
end


reg dump_tvout_finish_imag_op_8;

initial begin : dump_tvout_runtime_sign_imag_op_8
    integer fp;
    dump_tvout_finish_imag_op_8 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_8_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_8_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_8 = 1;
end


reg dump_tvout_finish_imag_op_9;

initial begin : dump_tvout_runtime_sign_imag_op_9
    integer fp;
    dump_tvout_finish_imag_op_9 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_9_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_9_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_9 = 1;
end


reg dump_tvout_finish_imag_op_10;

initial begin : dump_tvout_runtime_sign_imag_op_10
    integer fp;
    dump_tvout_finish_imag_op_10 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_10_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_10_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_10 = 1;
end


reg dump_tvout_finish_imag_op_11;

initial begin : dump_tvout_runtime_sign_imag_op_11
    integer fp;
    dump_tvout_finish_imag_op_11 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_11_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_11_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_11 = 1;
end


reg dump_tvout_finish_imag_op_12;

initial begin : dump_tvout_runtime_sign_imag_op_12
    integer fp;
    dump_tvout_finish_imag_op_12 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_12_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_12_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_12_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_12_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_12 = 1;
end


reg dump_tvout_finish_imag_op_13;

initial begin : dump_tvout_runtime_sign_imag_op_13
    integer fp;
    dump_tvout_finish_imag_op_13 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_13_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_13_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_13_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_13_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_13 = 1;
end


reg dump_tvout_finish_imag_op_14;

initial begin : dump_tvout_runtime_sign_imag_op_14
    integer fp;
    dump_tvout_finish_imag_op_14 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_14_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_14_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_14_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_14_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_14 = 1;
end


reg dump_tvout_finish_imag_op_15;

initial begin : dump_tvout_runtime_sign_imag_op_15
    integer fp;
    dump_tvout_finish_imag_op_15 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_15_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_15_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_15_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_15_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_15 = 1;
end


reg dump_tvout_finish_imag_op_16;

initial begin : dump_tvout_runtime_sign_imag_op_16
    integer fp;
    dump_tvout_finish_imag_op_16 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_16_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_16_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_16_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_16_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_16 = 1;
end


reg dump_tvout_finish_imag_op_17;

initial begin : dump_tvout_runtime_sign_imag_op_17
    integer fp;
    dump_tvout_finish_imag_op_17 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_17_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_17_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_17_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_17_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_17 = 1;
end


reg dump_tvout_finish_imag_op_18;

initial begin : dump_tvout_runtime_sign_imag_op_18
    integer fp;
    dump_tvout_finish_imag_op_18 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_18_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_18_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_18_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_18_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_18 = 1;
end


reg dump_tvout_finish_imag_op_19;

initial begin : dump_tvout_runtime_sign_imag_op_19
    integer fp;
    dump_tvout_finish_imag_op_19 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_19_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_19_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_19_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_19_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_19 = 1;
end


reg dump_tvout_finish_imag_op_20;

initial begin : dump_tvout_runtime_sign_imag_op_20
    integer fp;
    dump_tvout_finish_imag_op_20 = 0;
    fp = $fopen(`AUTOTB_TVOUT_imag_op_20_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_20_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_imag_op_20_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_imag_op_20_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_imag_op_20 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
