set moduleName dft
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dft}
set C_modelType { void 0 }
set C_modelArgList {
	{ real_sample int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ imag_sample int 32 unused {array 1024 { } 0 1 }  }
	{ real_op_0 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_1 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_2 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_3 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_4 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_5 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_6 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_7 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_8 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_9 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_10 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_11 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_12 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_13 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_14 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_15 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_16 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_17 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_18 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_19 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ real_op_20 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_0 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_1 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_2 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_3 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_4 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_5 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_6 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_7 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_8 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_9 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_10 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_11 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_12 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_13 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_14 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_15 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_16 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_17 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_18 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_19 int 32 regular {array 49 { 0 1 } 1 1 }  }
	{ imag_op_20 int 32 regular {array 49 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "real_sample", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imag_sample", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "real_op_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "real_op_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "imag_op_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 313
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ real_sample_address0 sc_out sc_lv 10 signal 0 } 
	{ real_sample_ce0 sc_out sc_logic 1 signal 0 } 
	{ real_sample_q0 sc_in sc_lv 32 signal 0 } 
	{ imag_sample_address0 sc_out sc_lv 10 signal 1 } 
	{ imag_sample_ce0 sc_out sc_logic 1 signal 1 } 
	{ imag_sample_we0 sc_out sc_logic 1 signal 1 } 
	{ imag_sample_d0 sc_out sc_lv 32 signal 1 } 
	{ imag_sample_q0 sc_in sc_lv 32 signal 1 } 
	{ imag_sample_address1 sc_out sc_lv 10 signal 1 } 
	{ imag_sample_ce1 sc_out sc_logic 1 signal 1 } 
	{ imag_sample_we1 sc_out sc_logic 1 signal 1 } 
	{ imag_sample_d1 sc_out sc_lv 32 signal 1 } 
	{ imag_sample_q1 sc_in sc_lv 32 signal 1 } 
	{ real_op_0_address0 sc_out sc_lv 6 signal 2 } 
	{ real_op_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ real_op_0_we0 sc_out sc_logic 1 signal 2 } 
	{ real_op_0_d0 sc_out sc_lv 32 signal 2 } 
	{ real_op_0_address1 sc_out sc_lv 6 signal 2 } 
	{ real_op_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ real_op_0_q1 sc_in sc_lv 32 signal 2 } 
	{ real_op_1_address0 sc_out sc_lv 6 signal 3 } 
	{ real_op_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ real_op_1_we0 sc_out sc_logic 1 signal 3 } 
	{ real_op_1_d0 sc_out sc_lv 32 signal 3 } 
	{ real_op_1_address1 sc_out sc_lv 6 signal 3 } 
	{ real_op_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ real_op_1_q1 sc_in sc_lv 32 signal 3 } 
	{ real_op_2_address0 sc_out sc_lv 6 signal 4 } 
	{ real_op_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ real_op_2_we0 sc_out sc_logic 1 signal 4 } 
	{ real_op_2_d0 sc_out sc_lv 32 signal 4 } 
	{ real_op_2_address1 sc_out sc_lv 6 signal 4 } 
	{ real_op_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ real_op_2_q1 sc_in sc_lv 32 signal 4 } 
	{ real_op_3_address0 sc_out sc_lv 6 signal 5 } 
	{ real_op_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ real_op_3_we0 sc_out sc_logic 1 signal 5 } 
	{ real_op_3_d0 sc_out sc_lv 32 signal 5 } 
	{ real_op_3_address1 sc_out sc_lv 6 signal 5 } 
	{ real_op_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ real_op_3_q1 sc_in sc_lv 32 signal 5 } 
	{ real_op_4_address0 sc_out sc_lv 6 signal 6 } 
	{ real_op_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ real_op_4_we0 sc_out sc_logic 1 signal 6 } 
	{ real_op_4_d0 sc_out sc_lv 32 signal 6 } 
	{ real_op_4_address1 sc_out sc_lv 6 signal 6 } 
	{ real_op_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ real_op_4_q1 sc_in sc_lv 32 signal 6 } 
	{ real_op_5_address0 sc_out sc_lv 6 signal 7 } 
	{ real_op_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ real_op_5_we0 sc_out sc_logic 1 signal 7 } 
	{ real_op_5_d0 sc_out sc_lv 32 signal 7 } 
	{ real_op_5_address1 sc_out sc_lv 6 signal 7 } 
	{ real_op_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ real_op_5_q1 sc_in sc_lv 32 signal 7 } 
	{ real_op_6_address0 sc_out sc_lv 6 signal 8 } 
	{ real_op_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ real_op_6_we0 sc_out sc_logic 1 signal 8 } 
	{ real_op_6_d0 sc_out sc_lv 32 signal 8 } 
	{ real_op_6_address1 sc_out sc_lv 6 signal 8 } 
	{ real_op_6_ce1 sc_out sc_logic 1 signal 8 } 
	{ real_op_6_q1 sc_in sc_lv 32 signal 8 } 
	{ real_op_7_address0 sc_out sc_lv 6 signal 9 } 
	{ real_op_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ real_op_7_we0 sc_out sc_logic 1 signal 9 } 
	{ real_op_7_d0 sc_out sc_lv 32 signal 9 } 
	{ real_op_7_address1 sc_out sc_lv 6 signal 9 } 
	{ real_op_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ real_op_7_q1 sc_in sc_lv 32 signal 9 } 
	{ real_op_8_address0 sc_out sc_lv 6 signal 10 } 
	{ real_op_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ real_op_8_we0 sc_out sc_logic 1 signal 10 } 
	{ real_op_8_d0 sc_out sc_lv 32 signal 10 } 
	{ real_op_8_address1 sc_out sc_lv 6 signal 10 } 
	{ real_op_8_ce1 sc_out sc_logic 1 signal 10 } 
	{ real_op_8_q1 sc_in sc_lv 32 signal 10 } 
	{ real_op_9_address0 sc_out sc_lv 6 signal 11 } 
	{ real_op_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ real_op_9_we0 sc_out sc_logic 1 signal 11 } 
	{ real_op_9_d0 sc_out sc_lv 32 signal 11 } 
	{ real_op_9_address1 sc_out sc_lv 6 signal 11 } 
	{ real_op_9_ce1 sc_out sc_logic 1 signal 11 } 
	{ real_op_9_q1 sc_in sc_lv 32 signal 11 } 
	{ real_op_10_address0 sc_out sc_lv 6 signal 12 } 
	{ real_op_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ real_op_10_we0 sc_out sc_logic 1 signal 12 } 
	{ real_op_10_d0 sc_out sc_lv 32 signal 12 } 
	{ real_op_10_address1 sc_out sc_lv 6 signal 12 } 
	{ real_op_10_ce1 sc_out sc_logic 1 signal 12 } 
	{ real_op_10_q1 sc_in sc_lv 32 signal 12 } 
	{ real_op_11_address0 sc_out sc_lv 6 signal 13 } 
	{ real_op_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ real_op_11_we0 sc_out sc_logic 1 signal 13 } 
	{ real_op_11_d0 sc_out sc_lv 32 signal 13 } 
	{ real_op_11_address1 sc_out sc_lv 6 signal 13 } 
	{ real_op_11_ce1 sc_out sc_logic 1 signal 13 } 
	{ real_op_11_q1 sc_in sc_lv 32 signal 13 } 
	{ real_op_12_address0 sc_out sc_lv 6 signal 14 } 
	{ real_op_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ real_op_12_we0 sc_out sc_logic 1 signal 14 } 
	{ real_op_12_d0 sc_out sc_lv 32 signal 14 } 
	{ real_op_12_address1 sc_out sc_lv 6 signal 14 } 
	{ real_op_12_ce1 sc_out sc_logic 1 signal 14 } 
	{ real_op_12_q1 sc_in sc_lv 32 signal 14 } 
	{ real_op_13_address0 sc_out sc_lv 6 signal 15 } 
	{ real_op_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ real_op_13_we0 sc_out sc_logic 1 signal 15 } 
	{ real_op_13_d0 sc_out sc_lv 32 signal 15 } 
	{ real_op_13_address1 sc_out sc_lv 6 signal 15 } 
	{ real_op_13_ce1 sc_out sc_logic 1 signal 15 } 
	{ real_op_13_q1 sc_in sc_lv 32 signal 15 } 
	{ real_op_14_address0 sc_out sc_lv 6 signal 16 } 
	{ real_op_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ real_op_14_we0 sc_out sc_logic 1 signal 16 } 
	{ real_op_14_d0 sc_out sc_lv 32 signal 16 } 
	{ real_op_14_address1 sc_out sc_lv 6 signal 16 } 
	{ real_op_14_ce1 sc_out sc_logic 1 signal 16 } 
	{ real_op_14_q1 sc_in sc_lv 32 signal 16 } 
	{ real_op_15_address0 sc_out sc_lv 6 signal 17 } 
	{ real_op_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ real_op_15_we0 sc_out sc_logic 1 signal 17 } 
	{ real_op_15_d0 sc_out sc_lv 32 signal 17 } 
	{ real_op_15_address1 sc_out sc_lv 6 signal 17 } 
	{ real_op_15_ce1 sc_out sc_logic 1 signal 17 } 
	{ real_op_15_q1 sc_in sc_lv 32 signal 17 } 
	{ real_op_16_address0 sc_out sc_lv 6 signal 18 } 
	{ real_op_16_ce0 sc_out sc_logic 1 signal 18 } 
	{ real_op_16_we0 sc_out sc_logic 1 signal 18 } 
	{ real_op_16_d0 sc_out sc_lv 32 signal 18 } 
	{ real_op_16_address1 sc_out sc_lv 6 signal 18 } 
	{ real_op_16_ce1 sc_out sc_logic 1 signal 18 } 
	{ real_op_16_q1 sc_in sc_lv 32 signal 18 } 
	{ real_op_17_address0 sc_out sc_lv 6 signal 19 } 
	{ real_op_17_ce0 sc_out sc_logic 1 signal 19 } 
	{ real_op_17_we0 sc_out sc_logic 1 signal 19 } 
	{ real_op_17_d0 sc_out sc_lv 32 signal 19 } 
	{ real_op_17_address1 sc_out sc_lv 6 signal 19 } 
	{ real_op_17_ce1 sc_out sc_logic 1 signal 19 } 
	{ real_op_17_q1 sc_in sc_lv 32 signal 19 } 
	{ real_op_18_address0 sc_out sc_lv 6 signal 20 } 
	{ real_op_18_ce0 sc_out sc_logic 1 signal 20 } 
	{ real_op_18_we0 sc_out sc_logic 1 signal 20 } 
	{ real_op_18_d0 sc_out sc_lv 32 signal 20 } 
	{ real_op_18_address1 sc_out sc_lv 6 signal 20 } 
	{ real_op_18_ce1 sc_out sc_logic 1 signal 20 } 
	{ real_op_18_q1 sc_in sc_lv 32 signal 20 } 
	{ real_op_19_address0 sc_out sc_lv 6 signal 21 } 
	{ real_op_19_ce0 sc_out sc_logic 1 signal 21 } 
	{ real_op_19_we0 sc_out sc_logic 1 signal 21 } 
	{ real_op_19_d0 sc_out sc_lv 32 signal 21 } 
	{ real_op_19_address1 sc_out sc_lv 6 signal 21 } 
	{ real_op_19_ce1 sc_out sc_logic 1 signal 21 } 
	{ real_op_19_q1 sc_in sc_lv 32 signal 21 } 
	{ real_op_20_address0 sc_out sc_lv 6 signal 22 } 
	{ real_op_20_ce0 sc_out sc_logic 1 signal 22 } 
	{ real_op_20_we0 sc_out sc_logic 1 signal 22 } 
	{ real_op_20_d0 sc_out sc_lv 32 signal 22 } 
	{ real_op_20_address1 sc_out sc_lv 6 signal 22 } 
	{ real_op_20_ce1 sc_out sc_logic 1 signal 22 } 
	{ real_op_20_q1 sc_in sc_lv 32 signal 22 } 
	{ imag_op_0_address0 sc_out sc_lv 6 signal 23 } 
	{ imag_op_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ imag_op_0_we0 sc_out sc_logic 1 signal 23 } 
	{ imag_op_0_d0 sc_out sc_lv 32 signal 23 } 
	{ imag_op_0_address1 sc_out sc_lv 6 signal 23 } 
	{ imag_op_0_ce1 sc_out sc_logic 1 signal 23 } 
	{ imag_op_0_q1 sc_in sc_lv 32 signal 23 } 
	{ imag_op_1_address0 sc_out sc_lv 6 signal 24 } 
	{ imag_op_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ imag_op_1_we0 sc_out sc_logic 1 signal 24 } 
	{ imag_op_1_d0 sc_out sc_lv 32 signal 24 } 
	{ imag_op_1_address1 sc_out sc_lv 6 signal 24 } 
	{ imag_op_1_ce1 sc_out sc_logic 1 signal 24 } 
	{ imag_op_1_q1 sc_in sc_lv 32 signal 24 } 
	{ imag_op_2_address0 sc_out sc_lv 6 signal 25 } 
	{ imag_op_2_ce0 sc_out sc_logic 1 signal 25 } 
	{ imag_op_2_we0 sc_out sc_logic 1 signal 25 } 
	{ imag_op_2_d0 sc_out sc_lv 32 signal 25 } 
	{ imag_op_2_address1 sc_out sc_lv 6 signal 25 } 
	{ imag_op_2_ce1 sc_out sc_logic 1 signal 25 } 
	{ imag_op_2_q1 sc_in sc_lv 32 signal 25 } 
	{ imag_op_3_address0 sc_out sc_lv 6 signal 26 } 
	{ imag_op_3_ce0 sc_out sc_logic 1 signal 26 } 
	{ imag_op_3_we0 sc_out sc_logic 1 signal 26 } 
	{ imag_op_3_d0 sc_out sc_lv 32 signal 26 } 
	{ imag_op_3_address1 sc_out sc_lv 6 signal 26 } 
	{ imag_op_3_ce1 sc_out sc_logic 1 signal 26 } 
	{ imag_op_3_q1 sc_in sc_lv 32 signal 26 } 
	{ imag_op_4_address0 sc_out sc_lv 6 signal 27 } 
	{ imag_op_4_ce0 sc_out sc_logic 1 signal 27 } 
	{ imag_op_4_we0 sc_out sc_logic 1 signal 27 } 
	{ imag_op_4_d0 sc_out sc_lv 32 signal 27 } 
	{ imag_op_4_address1 sc_out sc_lv 6 signal 27 } 
	{ imag_op_4_ce1 sc_out sc_logic 1 signal 27 } 
	{ imag_op_4_q1 sc_in sc_lv 32 signal 27 } 
	{ imag_op_5_address0 sc_out sc_lv 6 signal 28 } 
	{ imag_op_5_ce0 sc_out sc_logic 1 signal 28 } 
	{ imag_op_5_we0 sc_out sc_logic 1 signal 28 } 
	{ imag_op_5_d0 sc_out sc_lv 32 signal 28 } 
	{ imag_op_5_address1 sc_out sc_lv 6 signal 28 } 
	{ imag_op_5_ce1 sc_out sc_logic 1 signal 28 } 
	{ imag_op_5_q1 sc_in sc_lv 32 signal 28 } 
	{ imag_op_6_address0 sc_out sc_lv 6 signal 29 } 
	{ imag_op_6_ce0 sc_out sc_logic 1 signal 29 } 
	{ imag_op_6_we0 sc_out sc_logic 1 signal 29 } 
	{ imag_op_6_d0 sc_out sc_lv 32 signal 29 } 
	{ imag_op_6_address1 sc_out sc_lv 6 signal 29 } 
	{ imag_op_6_ce1 sc_out sc_logic 1 signal 29 } 
	{ imag_op_6_q1 sc_in sc_lv 32 signal 29 } 
	{ imag_op_7_address0 sc_out sc_lv 6 signal 30 } 
	{ imag_op_7_ce0 sc_out sc_logic 1 signal 30 } 
	{ imag_op_7_we0 sc_out sc_logic 1 signal 30 } 
	{ imag_op_7_d0 sc_out sc_lv 32 signal 30 } 
	{ imag_op_7_address1 sc_out sc_lv 6 signal 30 } 
	{ imag_op_7_ce1 sc_out sc_logic 1 signal 30 } 
	{ imag_op_7_q1 sc_in sc_lv 32 signal 30 } 
	{ imag_op_8_address0 sc_out sc_lv 6 signal 31 } 
	{ imag_op_8_ce0 sc_out sc_logic 1 signal 31 } 
	{ imag_op_8_we0 sc_out sc_logic 1 signal 31 } 
	{ imag_op_8_d0 sc_out sc_lv 32 signal 31 } 
	{ imag_op_8_address1 sc_out sc_lv 6 signal 31 } 
	{ imag_op_8_ce1 sc_out sc_logic 1 signal 31 } 
	{ imag_op_8_q1 sc_in sc_lv 32 signal 31 } 
	{ imag_op_9_address0 sc_out sc_lv 6 signal 32 } 
	{ imag_op_9_ce0 sc_out sc_logic 1 signal 32 } 
	{ imag_op_9_we0 sc_out sc_logic 1 signal 32 } 
	{ imag_op_9_d0 sc_out sc_lv 32 signal 32 } 
	{ imag_op_9_address1 sc_out sc_lv 6 signal 32 } 
	{ imag_op_9_ce1 sc_out sc_logic 1 signal 32 } 
	{ imag_op_9_q1 sc_in sc_lv 32 signal 32 } 
	{ imag_op_10_address0 sc_out sc_lv 6 signal 33 } 
	{ imag_op_10_ce0 sc_out sc_logic 1 signal 33 } 
	{ imag_op_10_we0 sc_out sc_logic 1 signal 33 } 
	{ imag_op_10_d0 sc_out sc_lv 32 signal 33 } 
	{ imag_op_10_address1 sc_out sc_lv 6 signal 33 } 
	{ imag_op_10_ce1 sc_out sc_logic 1 signal 33 } 
	{ imag_op_10_q1 sc_in sc_lv 32 signal 33 } 
	{ imag_op_11_address0 sc_out sc_lv 6 signal 34 } 
	{ imag_op_11_ce0 sc_out sc_logic 1 signal 34 } 
	{ imag_op_11_we0 sc_out sc_logic 1 signal 34 } 
	{ imag_op_11_d0 sc_out sc_lv 32 signal 34 } 
	{ imag_op_11_address1 sc_out sc_lv 6 signal 34 } 
	{ imag_op_11_ce1 sc_out sc_logic 1 signal 34 } 
	{ imag_op_11_q1 sc_in sc_lv 32 signal 34 } 
	{ imag_op_12_address0 sc_out sc_lv 6 signal 35 } 
	{ imag_op_12_ce0 sc_out sc_logic 1 signal 35 } 
	{ imag_op_12_we0 sc_out sc_logic 1 signal 35 } 
	{ imag_op_12_d0 sc_out sc_lv 32 signal 35 } 
	{ imag_op_12_address1 sc_out sc_lv 6 signal 35 } 
	{ imag_op_12_ce1 sc_out sc_logic 1 signal 35 } 
	{ imag_op_12_q1 sc_in sc_lv 32 signal 35 } 
	{ imag_op_13_address0 sc_out sc_lv 6 signal 36 } 
	{ imag_op_13_ce0 sc_out sc_logic 1 signal 36 } 
	{ imag_op_13_we0 sc_out sc_logic 1 signal 36 } 
	{ imag_op_13_d0 sc_out sc_lv 32 signal 36 } 
	{ imag_op_13_address1 sc_out sc_lv 6 signal 36 } 
	{ imag_op_13_ce1 sc_out sc_logic 1 signal 36 } 
	{ imag_op_13_q1 sc_in sc_lv 32 signal 36 } 
	{ imag_op_14_address0 sc_out sc_lv 6 signal 37 } 
	{ imag_op_14_ce0 sc_out sc_logic 1 signal 37 } 
	{ imag_op_14_we0 sc_out sc_logic 1 signal 37 } 
	{ imag_op_14_d0 sc_out sc_lv 32 signal 37 } 
	{ imag_op_14_address1 sc_out sc_lv 6 signal 37 } 
	{ imag_op_14_ce1 sc_out sc_logic 1 signal 37 } 
	{ imag_op_14_q1 sc_in sc_lv 32 signal 37 } 
	{ imag_op_15_address0 sc_out sc_lv 6 signal 38 } 
	{ imag_op_15_ce0 sc_out sc_logic 1 signal 38 } 
	{ imag_op_15_we0 sc_out sc_logic 1 signal 38 } 
	{ imag_op_15_d0 sc_out sc_lv 32 signal 38 } 
	{ imag_op_15_address1 sc_out sc_lv 6 signal 38 } 
	{ imag_op_15_ce1 sc_out sc_logic 1 signal 38 } 
	{ imag_op_15_q1 sc_in sc_lv 32 signal 38 } 
	{ imag_op_16_address0 sc_out sc_lv 6 signal 39 } 
	{ imag_op_16_ce0 sc_out sc_logic 1 signal 39 } 
	{ imag_op_16_we0 sc_out sc_logic 1 signal 39 } 
	{ imag_op_16_d0 sc_out sc_lv 32 signal 39 } 
	{ imag_op_16_address1 sc_out sc_lv 6 signal 39 } 
	{ imag_op_16_ce1 sc_out sc_logic 1 signal 39 } 
	{ imag_op_16_q1 sc_in sc_lv 32 signal 39 } 
	{ imag_op_17_address0 sc_out sc_lv 6 signal 40 } 
	{ imag_op_17_ce0 sc_out sc_logic 1 signal 40 } 
	{ imag_op_17_we0 sc_out sc_logic 1 signal 40 } 
	{ imag_op_17_d0 sc_out sc_lv 32 signal 40 } 
	{ imag_op_17_address1 sc_out sc_lv 6 signal 40 } 
	{ imag_op_17_ce1 sc_out sc_logic 1 signal 40 } 
	{ imag_op_17_q1 sc_in sc_lv 32 signal 40 } 
	{ imag_op_18_address0 sc_out sc_lv 6 signal 41 } 
	{ imag_op_18_ce0 sc_out sc_logic 1 signal 41 } 
	{ imag_op_18_we0 sc_out sc_logic 1 signal 41 } 
	{ imag_op_18_d0 sc_out sc_lv 32 signal 41 } 
	{ imag_op_18_address1 sc_out sc_lv 6 signal 41 } 
	{ imag_op_18_ce1 sc_out sc_logic 1 signal 41 } 
	{ imag_op_18_q1 sc_in sc_lv 32 signal 41 } 
	{ imag_op_19_address0 sc_out sc_lv 6 signal 42 } 
	{ imag_op_19_ce0 sc_out sc_logic 1 signal 42 } 
	{ imag_op_19_we0 sc_out sc_logic 1 signal 42 } 
	{ imag_op_19_d0 sc_out sc_lv 32 signal 42 } 
	{ imag_op_19_address1 sc_out sc_lv 6 signal 42 } 
	{ imag_op_19_ce1 sc_out sc_logic 1 signal 42 } 
	{ imag_op_19_q1 sc_in sc_lv 32 signal 42 } 
	{ imag_op_20_address0 sc_out sc_lv 6 signal 43 } 
	{ imag_op_20_ce0 sc_out sc_logic 1 signal 43 } 
	{ imag_op_20_we0 sc_out sc_logic 1 signal 43 } 
	{ imag_op_20_d0 sc_out sc_lv 32 signal 43 } 
	{ imag_op_20_address1 sc_out sc_lv 6 signal 43 } 
	{ imag_op_20_ce1 sc_out sc_logic 1 signal 43 } 
	{ imag_op_20_q1 sc_in sc_lv 32 signal 43 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "real_sample_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_sample", "role": "address0" }} , 
 	{ "name": "real_sample_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample", "role": "ce0" }} , 
 	{ "name": "real_sample_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample", "role": "q0" }} , 
 	{ "name": "imag_sample_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_sample", "role": "address0" }} , 
 	{ "name": "imag_sample_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample", "role": "ce0" }} , 
 	{ "name": "imag_sample_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample", "role": "we0" }} , 
 	{ "name": "imag_sample_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample", "role": "d0" }} , 
 	{ "name": "imag_sample_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample", "role": "q0" }} , 
 	{ "name": "imag_sample_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_sample", "role": "address1" }} , 
 	{ "name": "imag_sample_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample", "role": "ce1" }} , 
 	{ "name": "imag_sample_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_sample", "role": "we1" }} , 
 	{ "name": "imag_sample_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample", "role": "d1" }} , 
 	{ "name": "imag_sample_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_sample", "role": "q1" }} , 
 	{ "name": "real_op_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_0", "role": "address0" }} , 
 	{ "name": "real_op_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_0", "role": "ce0" }} , 
 	{ "name": "real_op_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_0", "role": "we0" }} , 
 	{ "name": "real_op_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_0", "role": "d0" }} , 
 	{ "name": "real_op_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_0", "role": "address1" }} , 
 	{ "name": "real_op_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_0", "role": "ce1" }} , 
 	{ "name": "real_op_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_0", "role": "q1" }} , 
 	{ "name": "real_op_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_1", "role": "address0" }} , 
 	{ "name": "real_op_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_1", "role": "ce0" }} , 
 	{ "name": "real_op_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_1", "role": "we0" }} , 
 	{ "name": "real_op_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_1", "role": "d0" }} , 
 	{ "name": "real_op_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_1", "role": "address1" }} , 
 	{ "name": "real_op_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_1", "role": "ce1" }} , 
 	{ "name": "real_op_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_1", "role": "q1" }} , 
 	{ "name": "real_op_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_2", "role": "address0" }} , 
 	{ "name": "real_op_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_2", "role": "ce0" }} , 
 	{ "name": "real_op_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_2", "role": "we0" }} , 
 	{ "name": "real_op_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_2", "role": "d0" }} , 
 	{ "name": "real_op_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_2", "role": "address1" }} , 
 	{ "name": "real_op_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_2", "role": "ce1" }} , 
 	{ "name": "real_op_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_2", "role": "q1" }} , 
 	{ "name": "real_op_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_3", "role": "address0" }} , 
 	{ "name": "real_op_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_3", "role": "ce0" }} , 
 	{ "name": "real_op_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_3", "role": "we0" }} , 
 	{ "name": "real_op_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_3", "role": "d0" }} , 
 	{ "name": "real_op_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_3", "role": "address1" }} , 
 	{ "name": "real_op_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_3", "role": "ce1" }} , 
 	{ "name": "real_op_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_3", "role": "q1" }} , 
 	{ "name": "real_op_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_4", "role": "address0" }} , 
 	{ "name": "real_op_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_4", "role": "ce0" }} , 
 	{ "name": "real_op_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_4", "role": "we0" }} , 
 	{ "name": "real_op_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_4", "role": "d0" }} , 
 	{ "name": "real_op_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_4", "role": "address1" }} , 
 	{ "name": "real_op_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_4", "role": "ce1" }} , 
 	{ "name": "real_op_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_4", "role": "q1" }} , 
 	{ "name": "real_op_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_5", "role": "address0" }} , 
 	{ "name": "real_op_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_5", "role": "ce0" }} , 
 	{ "name": "real_op_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_5", "role": "we0" }} , 
 	{ "name": "real_op_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_5", "role": "d0" }} , 
 	{ "name": "real_op_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_5", "role": "address1" }} , 
 	{ "name": "real_op_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_5", "role": "ce1" }} , 
 	{ "name": "real_op_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_5", "role": "q1" }} , 
 	{ "name": "real_op_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_6", "role": "address0" }} , 
 	{ "name": "real_op_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_6", "role": "ce0" }} , 
 	{ "name": "real_op_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_6", "role": "we0" }} , 
 	{ "name": "real_op_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_6", "role": "d0" }} , 
 	{ "name": "real_op_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_6", "role": "address1" }} , 
 	{ "name": "real_op_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_6", "role": "ce1" }} , 
 	{ "name": "real_op_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_6", "role": "q1" }} , 
 	{ "name": "real_op_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_7", "role": "address0" }} , 
 	{ "name": "real_op_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_7", "role": "ce0" }} , 
 	{ "name": "real_op_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_7", "role": "we0" }} , 
 	{ "name": "real_op_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_7", "role": "d0" }} , 
 	{ "name": "real_op_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_7", "role": "address1" }} , 
 	{ "name": "real_op_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_7", "role": "ce1" }} , 
 	{ "name": "real_op_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_7", "role": "q1" }} , 
 	{ "name": "real_op_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_8", "role": "address0" }} , 
 	{ "name": "real_op_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_8", "role": "ce0" }} , 
 	{ "name": "real_op_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_8", "role": "we0" }} , 
 	{ "name": "real_op_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_8", "role": "d0" }} , 
 	{ "name": "real_op_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_8", "role": "address1" }} , 
 	{ "name": "real_op_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_8", "role": "ce1" }} , 
 	{ "name": "real_op_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_8", "role": "q1" }} , 
 	{ "name": "real_op_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_9", "role": "address0" }} , 
 	{ "name": "real_op_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_9", "role": "ce0" }} , 
 	{ "name": "real_op_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_9", "role": "we0" }} , 
 	{ "name": "real_op_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_9", "role": "d0" }} , 
 	{ "name": "real_op_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_9", "role": "address1" }} , 
 	{ "name": "real_op_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_9", "role": "ce1" }} , 
 	{ "name": "real_op_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_9", "role": "q1" }} , 
 	{ "name": "real_op_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_10", "role": "address0" }} , 
 	{ "name": "real_op_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_10", "role": "ce0" }} , 
 	{ "name": "real_op_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_10", "role": "we0" }} , 
 	{ "name": "real_op_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_10", "role": "d0" }} , 
 	{ "name": "real_op_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_10", "role": "address1" }} , 
 	{ "name": "real_op_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_10", "role": "ce1" }} , 
 	{ "name": "real_op_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_10", "role": "q1" }} , 
 	{ "name": "real_op_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_11", "role": "address0" }} , 
 	{ "name": "real_op_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_11", "role": "ce0" }} , 
 	{ "name": "real_op_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_11", "role": "we0" }} , 
 	{ "name": "real_op_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_11", "role": "d0" }} , 
 	{ "name": "real_op_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_11", "role": "address1" }} , 
 	{ "name": "real_op_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_11", "role": "ce1" }} , 
 	{ "name": "real_op_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_11", "role": "q1" }} , 
 	{ "name": "real_op_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_12", "role": "address0" }} , 
 	{ "name": "real_op_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_12", "role": "ce0" }} , 
 	{ "name": "real_op_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_12", "role": "we0" }} , 
 	{ "name": "real_op_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_12", "role": "d0" }} , 
 	{ "name": "real_op_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_12", "role": "address1" }} , 
 	{ "name": "real_op_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_12", "role": "ce1" }} , 
 	{ "name": "real_op_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_12", "role": "q1" }} , 
 	{ "name": "real_op_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_13", "role": "address0" }} , 
 	{ "name": "real_op_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_13", "role": "ce0" }} , 
 	{ "name": "real_op_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_13", "role": "we0" }} , 
 	{ "name": "real_op_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_13", "role": "d0" }} , 
 	{ "name": "real_op_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_13", "role": "address1" }} , 
 	{ "name": "real_op_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_13", "role": "ce1" }} , 
 	{ "name": "real_op_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_13", "role": "q1" }} , 
 	{ "name": "real_op_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_14", "role": "address0" }} , 
 	{ "name": "real_op_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_14", "role": "ce0" }} , 
 	{ "name": "real_op_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_14", "role": "we0" }} , 
 	{ "name": "real_op_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_14", "role": "d0" }} , 
 	{ "name": "real_op_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_14", "role": "address1" }} , 
 	{ "name": "real_op_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_14", "role": "ce1" }} , 
 	{ "name": "real_op_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_14", "role": "q1" }} , 
 	{ "name": "real_op_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_15", "role": "address0" }} , 
 	{ "name": "real_op_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_15", "role": "ce0" }} , 
 	{ "name": "real_op_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_15", "role": "we0" }} , 
 	{ "name": "real_op_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_15", "role": "d0" }} , 
 	{ "name": "real_op_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_15", "role": "address1" }} , 
 	{ "name": "real_op_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_15", "role": "ce1" }} , 
 	{ "name": "real_op_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_15", "role": "q1" }} , 
 	{ "name": "real_op_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_16", "role": "address0" }} , 
 	{ "name": "real_op_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_16", "role": "ce0" }} , 
 	{ "name": "real_op_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_16", "role": "we0" }} , 
 	{ "name": "real_op_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_16", "role": "d0" }} , 
 	{ "name": "real_op_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_16", "role": "address1" }} , 
 	{ "name": "real_op_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_16", "role": "ce1" }} , 
 	{ "name": "real_op_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_16", "role": "q1" }} , 
 	{ "name": "real_op_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_17", "role": "address0" }} , 
 	{ "name": "real_op_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_17", "role": "ce0" }} , 
 	{ "name": "real_op_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_17", "role": "we0" }} , 
 	{ "name": "real_op_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_17", "role": "d0" }} , 
 	{ "name": "real_op_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_17", "role": "address1" }} , 
 	{ "name": "real_op_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_17", "role": "ce1" }} , 
 	{ "name": "real_op_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_17", "role": "q1" }} , 
 	{ "name": "real_op_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_18", "role": "address0" }} , 
 	{ "name": "real_op_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_18", "role": "ce0" }} , 
 	{ "name": "real_op_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_18", "role": "we0" }} , 
 	{ "name": "real_op_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_18", "role": "d0" }} , 
 	{ "name": "real_op_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_18", "role": "address1" }} , 
 	{ "name": "real_op_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_18", "role": "ce1" }} , 
 	{ "name": "real_op_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_18", "role": "q1" }} , 
 	{ "name": "real_op_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_19", "role": "address0" }} , 
 	{ "name": "real_op_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_19", "role": "ce0" }} , 
 	{ "name": "real_op_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_19", "role": "we0" }} , 
 	{ "name": "real_op_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_19", "role": "d0" }} , 
 	{ "name": "real_op_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_19", "role": "address1" }} , 
 	{ "name": "real_op_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_19", "role": "ce1" }} , 
 	{ "name": "real_op_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_19", "role": "q1" }} , 
 	{ "name": "real_op_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_20", "role": "address0" }} , 
 	{ "name": "real_op_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_20", "role": "ce0" }} , 
 	{ "name": "real_op_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_20", "role": "we0" }} , 
 	{ "name": "real_op_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_20", "role": "d0" }} , 
 	{ "name": "real_op_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "real_op_20", "role": "address1" }} , 
 	{ "name": "real_op_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op_20", "role": "ce1" }} , 
 	{ "name": "real_op_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op_20", "role": "q1" }} , 
 	{ "name": "imag_op_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_0", "role": "address0" }} , 
 	{ "name": "imag_op_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_0", "role": "ce0" }} , 
 	{ "name": "imag_op_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_0", "role": "we0" }} , 
 	{ "name": "imag_op_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_0", "role": "d0" }} , 
 	{ "name": "imag_op_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_0", "role": "address1" }} , 
 	{ "name": "imag_op_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_0", "role": "ce1" }} , 
 	{ "name": "imag_op_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_0", "role": "q1" }} , 
 	{ "name": "imag_op_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_1", "role": "address0" }} , 
 	{ "name": "imag_op_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_1", "role": "ce0" }} , 
 	{ "name": "imag_op_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_1", "role": "we0" }} , 
 	{ "name": "imag_op_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_1", "role": "d0" }} , 
 	{ "name": "imag_op_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_1", "role": "address1" }} , 
 	{ "name": "imag_op_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_1", "role": "ce1" }} , 
 	{ "name": "imag_op_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_1", "role": "q1" }} , 
 	{ "name": "imag_op_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_2", "role": "address0" }} , 
 	{ "name": "imag_op_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_2", "role": "ce0" }} , 
 	{ "name": "imag_op_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_2", "role": "we0" }} , 
 	{ "name": "imag_op_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_2", "role": "d0" }} , 
 	{ "name": "imag_op_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_2", "role": "address1" }} , 
 	{ "name": "imag_op_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_2", "role": "ce1" }} , 
 	{ "name": "imag_op_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_2", "role": "q1" }} , 
 	{ "name": "imag_op_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_3", "role": "address0" }} , 
 	{ "name": "imag_op_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_3", "role": "ce0" }} , 
 	{ "name": "imag_op_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_3", "role": "we0" }} , 
 	{ "name": "imag_op_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_3", "role": "d0" }} , 
 	{ "name": "imag_op_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_3", "role": "address1" }} , 
 	{ "name": "imag_op_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_3", "role": "ce1" }} , 
 	{ "name": "imag_op_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_3", "role": "q1" }} , 
 	{ "name": "imag_op_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_4", "role": "address0" }} , 
 	{ "name": "imag_op_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_4", "role": "ce0" }} , 
 	{ "name": "imag_op_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_4", "role": "we0" }} , 
 	{ "name": "imag_op_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_4", "role": "d0" }} , 
 	{ "name": "imag_op_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_4", "role": "address1" }} , 
 	{ "name": "imag_op_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_4", "role": "ce1" }} , 
 	{ "name": "imag_op_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_4", "role": "q1" }} , 
 	{ "name": "imag_op_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_5", "role": "address0" }} , 
 	{ "name": "imag_op_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_5", "role": "ce0" }} , 
 	{ "name": "imag_op_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_5", "role": "we0" }} , 
 	{ "name": "imag_op_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_5", "role": "d0" }} , 
 	{ "name": "imag_op_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_5", "role": "address1" }} , 
 	{ "name": "imag_op_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_5", "role": "ce1" }} , 
 	{ "name": "imag_op_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_5", "role": "q1" }} , 
 	{ "name": "imag_op_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_6", "role": "address0" }} , 
 	{ "name": "imag_op_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_6", "role": "ce0" }} , 
 	{ "name": "imag_op_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_6", "role": "we0" }} , 
 	{ "name": "imag_op_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_6", "role": "d0" }} , 
 	{ "name": "imag_op_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_6", "role": "address1" }} , 
 	{ "name": "imag_op_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_6", "role": "ce1" }} , 
 	{ "name": "imag_op_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_6", "role": "q1" }} , 
 	{ "name": "imag_op_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_7", "role": "address0" }} , 
 	{ "name": "imag_op_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_7", "role": "ce0" }} , 
 	{ "name": "imag_op_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_7", "role": "we0" }} , 
 	{ "name": "imag_op_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_7", "role": "d0" }} , 
 	{ "name": "imag_op_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_7", "role": "address1" }} , 
 	{ "name": "imag_op_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_7", "role": "ce1" }} , 
 	{ "name": "imag_op_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_7", "role": "q1" }} , 
 	{ "name": "imag_op_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_8", "role": "address0" }} , 
 	{ "name": "imag_op_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_8", "role": "ce0" }} , 
 	{ "name": "imag_op_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_8", "role": "we0" }} , 
 	{ "name": "imag_op_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_8", "role": "d0" }} , 
 	{ "name": "imag_op_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_8", "role": "address1" }} , 
 	{ "name": "imag_op_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_8", "role": "ce1" }} , 
 	{ "name": "imag_op_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_8", "role": "q1" }} , 
 	{ "name": "imag_op_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_9", "role": "address0" }} , 
 	{ "name": "imag_op_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_9", "role": "ce0" }} , 
 	{ "name": "imag_op_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_9", "role": "we0" }} , 
 	{ "name": "imag_op_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_9", "role": "d0" }} , 
 	{ "name": "imag_op_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_9", "role": "address1" }} , 
 	{ "name": "imag_op_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_9", "role": "ce1" }} , 
 	{ "name": "imag_op_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_9", "role": "q1" }} , 
 	{ "name": "imag_op_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_10", "role": "address0" }} , 
 	{ "name": "imag_op_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_10", "role": "ce0" }} , 
 	{ "name": "imag_op_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_10", "role": "we0" }} , 
 	{ "name": "imag_op_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_10", "role": "d0" }} , 
 	{ "name": "imag_op_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_10", "role": "address1" }} , 
 	{ "name": "imag_op_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_10", "role": "ce1" }} , 
 	{ "name": "imag_op_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_10", "role": "q1" }} , 
 	{ "name": "imag_op_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_11", "role": "address0" }} , 
 	{ "name": "imag_op_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_11", "role": "ce0" }} , 
 	{ "name": "imag_op_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_11", "role": "we0" }} , 
 	{ "name": "imag_op_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_11", "role": "d0" }} , 
 	{ "name": "imag_op_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_11", "role": "address1" }} , 
 	{ "name": "imag_op_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_11", "role": "ce1" }} , 
 	{ "name": "imag_op_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_11", "role": "q1" }} , 
 	{ "name": "imag_op_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_12", "role": "address0" }} , 
 	{ "name": "imag_op_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_12", "role": "ce0" }} , 
 	{ "name": "imag_op_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_12", "role": "we0" }} , 
 	{ "name": "imag_op_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_12", "role": "d0" }} , 
 	{ "name": "imag_op_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_12", "role": "address1" }} , 
 	{ "name": "imag_op_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_12", "role": "ce1" }} , 
 	{ "name": "imag_op_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_12", "role": "q1" }} , 
 	{ "name": "imag_op_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_13", "role": "address0" }} , 
 	{ "name": "imag_op_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_13", "role": "ce0" }} , 
 	{ "name": "imag_op_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_13", "role": "we0" }} , 
 	{ "name": "imag_op_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_13", "role": "d0" }} , 
 	{ "name": "imag_op_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_13", "role": "address1" }} , 
 	{ "name": "imag_op_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_13", "role": "ce1" }} , 
 	{ "name": "imag_op_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_13", "role": "q1" }} , 
 	{ "name": "imag_op_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_14", "role": "address0" }} , 
 	{ "name": "imag_op_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_14", "role": "ce0" }} , 
 	{ "name": "imag_op_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_14", "role": "we0" }} , 
 	{ "name": "imag_op_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_14", "role": "d0" }} , 
 	{ "name": "imag_op_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_14", "role": "address1" }} , 
 	{ "name": "imag_op_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_14", "role": "ce1" }} , 
 	{ "name": "imag_op_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_14", "role": "q1" }} , 
 	{ "name": "imag_op_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_15", "role": "address0" }} , 
 	{ "name": "imag_op_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_15", "role": "ce0" }} , 
 	{ "name": "imag_op_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_15", "role": "we0" }} , 
 	{ "name": "imag_op_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_15", "role": "d0" }} , 
 	{ "name": "imag_op_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_15", "role": "address1" }} , 
 	{ "name": "imag_op_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_15", "role": "ce1" }} , 
 	{ "name": "imag_op_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_15", "role": "q1" }} , 
 	{ "name": "imag_op_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_16", "role": "address0" }} , 
 	{ "name": "imag_op_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_16", "role": "ce0" }} , 
 	{ "name": "imag_op_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_16", "role": "we0" }} , 
 	{ "name": "imag_op_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_16", "role": "d0" }} , 
 	{ "name": "imag_op_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_16", "role": "address1" }} , 
 	{ "name": "imag_op_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_16", "role": "ce1" }} , 
 	{ "name": "imag_op_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_16", "role": "q1" }} , 
 	{ "name": "imag_op_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_17", "role": "address0" }} , 
 	{ "name": "imag_op_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_17", "role": "ce0" }} , 
 	{ "name": "imag_op_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_17", "role": "we0" }} , 
 	{ "name": "imag_op_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_17", "role": "d0" }} , 
 	{ "name": "imag_op_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_17", "role": "address1" }} , 
 	{ "name": "imag_op_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_17", "role": "ce1" }} , 
 	{ "name": "imag_op_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_17", "role": "q1" }} , 
 	{ "name": "imag_op_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_18", "role": "address0" }} , 
 	{ "name": "imag_op_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_18", "role": "ce0" }} , 
 	{ "name": "imag_op_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_18", "role": "we0" }} , 
 	{ "name": "imag_op_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_18", "role": "d0" }} , 
 	{ "name": "imag_op_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_18", "role": "address1" }} , 
 	{ "name": "imag_op_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_18", "role": "ce1" }} , 
 	{ "name": "imag_op_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_18", "role": "q1" }} , 
 	{ "name": "imag_op_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_19", "role": "address0" }} , 
 	{ "name": "imag_op_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_19", "role": "ce0" }} , 
 	{ "name": "imag_op_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_19", "role": "we0" }} , 
 	{ "name": "imag_op_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_19", "role": "d0" }} , 
 	{ "name": "imag_op_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_19", "role": "address1" }} , 
 	{ "name": "imag_op_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_19", "role": "ce1" }} , 
 	{ "name": "imag_op_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_19", "role": "q1" }} , 
 	{ "name": "imag_op_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_20", "role": "address0" }} , 
 	{ "name": "imag_op_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_20", "role": "ce0" }} , 
 	{ "name": "imag_op_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_20", "role": "we0" }} , 
 	{ "name": "imag_op_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_20", "role": "d0" }} , 
 	{ "name": "imag_op_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "imag_op_20", "role": "address1" }} , 
 	{ "name": "imag_op_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op_20", "role": "ce1" }} , 
 	{ "name": "imag_op_20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op_20", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129"],
		"CDFG" : "dft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50210", "EstimateLatencyMax" : "50210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "real_sample", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "imag_sample", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "real_op_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "real_op_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "imag_op_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL22cos_coefficients_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22cos_coefficients_table_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL22sin_coefficients_table_20", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1_VITIS_LOOP_20_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter33", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter33", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_4_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_5_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_5_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_6_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_8_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_8_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_9_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_9_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_10_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_10_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_11_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_11_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_12_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_12_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_13_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_13_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_14_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_14_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_15_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_16_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_16_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_17_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_17_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_18_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_18_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_19_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_19_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22cos_coefficients_table_20_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL22sin_coefficients_table_20_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U19", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U20", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U21", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U23", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U24", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U25", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U26", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U27", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U28", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U29", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U32", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U33", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U39", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U40", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U41", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U42", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U49", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U50", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U51", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U52", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U53", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U54", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U55", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U56", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U59", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U60", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U61", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U62", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U64", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U65", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U66", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U67", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U68", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U69", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U70", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U71", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U72", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U73", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U74", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U75", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U78", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U79", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U80", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U81", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U82", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U83", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_7_max_dsp_1_U84", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_3_1_U85", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U86", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft {
		real_sample {Type I LastRead 4 FirstWrite -1}
		imag_sample {Type X LastRead -1 FirstWrite -1}
		real_op_0 {Type IO LastRead 11 FirstWrite 23}
		real_op_1 {Type IO LastRead 12 FirstWrite 24}
		real_op_2 {Type IO LastRead 12 FirstWrite 24}
		real_op_3 {Type IO LastRead 13 FirstWrite 25}
		real_op_4 {Type IO LastRead 13 FirstWrite 25}
		real_op_5 {Type IO LastRead 14 FirstWrite 26}
		real_op_6 {Type IO LastRead 14 FirstWrite 26}
		real_op_7 {Type IO LastRead 15 FirstWrite 27}
		real_op_8 {Type IO LastRead 15 FirstWrite 27}
		real_op_9 {Type IO LastRead 16 FirstWrite 28}
		real_op_10 {Type IO LastRead 16 FirstWrite 28}
		real_op_11 {Type IO LastRead 17 FirstWrite 29}
		real_op_12 {Type IO LastRead 17 FirstWrite 29}
		real_op_13 {Type IO LastRead 18 FirstWrite 30}
		real_op_14 {Type IO LastRead 18 FirstWrite 30}
		real_op_15 {Type IO LastRead 19 FirstWrite 31}
		real_op_16 {Type IO LastRead 19 FirstWrite 31}
		real_op_17 {Type IO LastRead 20 FirstWrite 32}
		real_op_18 {Type IO LastRead 20 FirstWrite 32}
		real_op_19 {Type IO LastRead 21 FirstWrite 33}
		real_op_20 {Type IO LastRead 21 FirstWrite 33}
		imag_op_0 {Type IO LastRead 11 FirstWrite 23}
		imag_op_1 {Type IO LastRead 12 FirstWrite 24}
		imag_op_2 {Type IO LastRead 12 FirstWrite 24}
		imag_op_3 {Type IO LastRead 13 FirstWrite 25}
		imag_op_4 {Type IO LastRead 13 FirstWrite 25}
		imag_op_5 {Type IO LastRead 14 FirstWrite 26}
		imag_op_6 {Type IO LastRead 14 FirstWrite 26}
		imag_op_7 {Type IO LastRead 15 FirstWrite 27}
		imag_op_8 {Type IO LastRead 15 FirstWrite 27}
		imag_op_9 {Type IO LastRead 16 FirstWrite 28}
		imag_op_10 {Type IO LastRead 16 FirstWrite 28}
		imag_op_11 {Type IO LastRead 17 FirstWrite 29}
		imag_op_12 {Type IO LastRead 17 FirstWrite 29}
		imag_op_13 {Type IO LastRead 18 FirstWrite 30}
		imag_op_14 {Type IO LastRead 18 FirstWrite 30}
		imag_op_15 {Type IO LastRead 19 FirstWrite 31}
		imag_op_16 {Type IO LastRead 19 FirstWrite 31}
		imag_op_17 {Type IO LastRead 20 FirstWrite 32}
		imag_op_18 {Type IO LastRead 20 FirstWrite 32}
		imag_op_19 {Type IO LastRead 21 FirstWrite 33}
		imag_op_20 {Type IO LastRead 21 FirstWrite 33}
		p_ZL22cos_coefficients_table_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_15 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_16 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_17 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_18 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_19 {Type I LastRead -1 FirstWrite -1}
		p_ZL22cos_coefficients_table_20 {Type I LastRead -1 FirstWrite -1}
		p_ZL22sin_coefficients_table_20 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50210", "Max" : "50210"}
	, {"Name" : "Interval", "Min" : "50211", "Max" : "50211"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	real_sample { ap_memory {  { real_sample_address0 mem_address 1 10 }  { real_sample_ce0 mem_ce 1 1 }  { real_sample_q0 mem_dout 0 32 } } }
	imag_sample { ap_memory {  { imag_sample_address0 mem_address 1 10 }  { imag_sample_ce0 mem_ce 1 1 }  { imag_sample_we0 mem_we 1 1 }  { imag_sample_d0 mem_din 1 32 }  { imag_sample_q0 mem_dout 0 32 }  { imag_sample_address1 MemPortADDR2 1 10 }  { imag_sample_ce1 MemPortCE2 1 1 }  { imag_sample_we1 MemPortWE2 1 1 }  { imag_sample_d1 MemPortDIN2 1 32 }  { imag_sample_q1 MemPortDOUT2 0 32 } } }
	real_op_0 { ap_memory {  { real_op_0_address0 mem_address 1 6 }  { real_op_0_ce0 mem_ce 1 1 }  { real_op_0_we0 mem_we 1 1 }  { real_op_0_d0 mem_din 1 32 }  { real_op_0_address1 MemPortADDR2 1 6 }  { real_op_0_ce1 MemPortCE2 1 1 }  { real_op_0_q1 MemPortDOUT2 0 32 } } }
	real_op_1 { ap_memory {  { real_op_1_address0 mem_address 1 6 }  { real_op_1_ce0 mem_ce 1 1 }  { real_op_1_we0 mem_we 1 1 }  { real_op_1_d0 mem_din 1 32 }  { real_op_1_address1 MemPortADDR2 1 6 }  { real_op_1_ce1 MemPortCE2 1 1 }  { real_op_1_q1 MemPortDOUT2 0 32 } } }
	real_op_2 { ap_memory {  { real_op_2_address0 mem_address 1 6 }  { real_op_2_ce0 mem_ce 1 1 }  { real_op_2_we0 mem_we 1 1 }  { real_op_2_d0 mem_din 1 32 }  { real_op_2_address1 MemPortADDR2 1 6 }  { real_op_2_ce1 MemPortCE2 1 1 }  { real_op_2_q1 MemPortDOUT2 0 32 } } }
	real_op_3 { ap_memory {  { real_op_3_address0 mem_address 1 6 }  { real_op_3_ce0 mem_ce 1 1 }  { real_op_3_we0 mem_we 1 1 }  { real_op_3_d0 mem_din 1 32 }  { real_op_3_address1 MemPortADDR2 1 6 }  { real_op_3_ce1 MemPortCE2 1 1 }  { real_op_3_q1 MemPortDOUT2 0 32 } } }
	real_op_4 { ap_memory {  { real_op_4_address0 mem_address 1 6 }  { real_op_4_ce0 mem_ce 1 1 }  { real_op_4_we0 mem_we 1 1 }  { real_op_4_d0 mem_din 1 32 }  { real_op_4_address1 MemPortADDR2 1 6 }  { real_op_4_ce1 MemPortCE2 1 1 }  { real_op_4_q1 MemPortDOUT2 0 32 } } }
	real_op_5 { ap_memory {  { real_op_5_address0 mem_address 1 6 }  { real_op_5_ce0 mem_ce 1 1 }  { real_op_5_we0 mem_we 1 1 }  { real_op_5_d0 mem_din 1 32 }  { real_op_5_address1 MemPortADDR2 1 6 }  { real_op_5_ce1 MemPortCE2 1 1 }  { real_op_5_q1 MemPortDOUT2 0 32 } } }
	real_op_6 { ap_memory {  { real_op_6_address0 mem_address 1 6 }  { real_op_6_ce0 mem_ce 1 1 }  { real_op_6_we0 mem_we 1 1 }  { real_op_6_d0 mem_din 1 32 }  { real_op_6_address1 MemPortADDR2 1 6 }  { real_op_6_ce1 MemPortCE2 1 1 }  { real_op_6_q1 MemPortDOUT2 0 32 } } }
	real_op_7 { ap_memory {  { real_op_7_address0 mem_address 1 6 }  { real_op_7_ce0 mem_ce 1 1 }  { real_op_7_we0 mem_we 1 1 }  { real_op_7_d0 mem_din 1 32 }  { real_op_7_address1 MemPortADDR2 1 6 }  { real_op_7_ce1 MemPortCE2 1 1 }  { real_op_7_q1 MemPortDOUT2 0 32 } } }
	real_op_8 { ap_memory {  { real_op_8_address0 mem_address 1 6 }  { real_op_8_ce0 mem_ce 1 1 }  { real_op_8_we0 mem_we 1 1 }  { real_op_8_d0 mem_din 1 32 }  { real_op_8_address1 MemPortADDR2 1 6 }  { real_op_8_ce1 MemPortCE2 1 1 }  { real_op_8_q1 MemPortDOUT2 0 32 } } }
	real_op_9 { ap_memory {  { real_op_9_address0 mem_address 1 6 }  { real_op_9_ce0 mem_ce 1 1 }  { real_op_9_we0 mem_we 1 1 }  { real_op_9_d0 mem_din 1 32 }  { real_op_9_address1 MemPortADDR2 1 6 }  { real_op_9_ce1 MemPortCE2 1 1 }  { real_op_9_q1 MemPortDOUT2 0 32 } } }
	real_op_10 { ap_memory {  { real_op_10_address0 mem_address 1 6 }  { real_op_10_ce0 mem_ce 1 1 }  { real_op_10_we0 mem_we 1 1 }  { real_op_10_d0 mem_din 1 32 }  { real_op_10_address1 MemPortADDR2 1 6 }  { real_op_10_ce1 MemPortCE2 1 1 }  { real_op_10_q1 MemPortDOUT2 0 32 } } }
	real_op_11 { ap_memory {  { real_op_11_address0 mem_address 1 6 }  { real_op_11_ce0 mem_ce 1 1 }  { real_op_11_we0 mem_we 1 1 }  { real_op_11_d0 mem_din 1 32 }  { real_op_11_address1 MemPortADDR2 1 6 }  { real_op_11_ce1 MemPortCE2 1 1 }  { real_op_11_q1 MemPortDOUT2 0 32 } } }
	real_op_12 { ap_memory {  { real_op_12_address0 mem_address 1 6 }  { real_op_12_ce0 mem_ce 1 1 }  { real_op_12_we0 mem_we 1 1 }  { real_op_12_d0 mem_din 1 32 }  { real_op_12_address1 MemPortADDR2 1 6 }  { real_op_12_ce1 MemPortCE2 1 1 }  { real_op_12_q1 MemPortDOUT2 0 32 } } }
	real_op_13 { ap_memory {  { real_op_13_address0 mem_address 1 6 }  { real_op_13_ce0 mem_ce 1 1 }  { real_op_13_we0 mem_we 1 1 }  { real_op_13_d0 mem_din 1 32 }  { real_op_13_address1 MemPortADDR2 1 6 }  { real_op_13_ce1 MemPortCE2 1 1 }  { real_op_13_q1 MemPortDOUT2 0 32 } } }
	real_op_14 { ap_memory {  { real_op_14_address0 mem_address 1 6 }  { real_op_14_ce0 mem_ce 1 1 }  { real_op_14_we0 mem_we 1 1 }  { real_op_14_d0 mem_din 1 32 }  { real_op_14_address1 MemPortADDR2 1 6 }  { real_op_14_ce1 MemPortCE2 1 1 }  { real_op_14_q1 MemPortDOUT2 0 32 } } }
	real_op_15 { ap_memory {  { real_op_15_address0 mem_address 1 6 }  { real_op_15_ce0 mem_ce 1 1 }  { real_op_15_we0 mem_we 1 1 }  { real_op_15_d0 mem_din 1 32 }  { real_op_15_address1 MemPortADDR2 1 6 }  { real_op_15_ce1 MemPortCE2 1 1 }  { real_op_15_q1 MemPortDOUT2 0 32 } } }
	real_op_16 { ap_memory {  { real_op_16_address0 mem_address 1 6 }  { real_op_16_ce0 mem_ce 1 1 }  { real_op_16_we0 mem_we 1 1 }  { real_op_16_d0 mem_din 1 32 }  { real_op_16_address1 MemPortADDR2 1 6 }  { real_op_16_ce1 MemPortCE2 1 1 }  { real_op_16_q1 MemPortDOUT2 0 32 } } }
	real_op_17 { ap_memory {  { real_op_17_address0 mem_address 1 6 }  { real_op_17_ce0 mem_ce 1 1 }  { real_op_17_we0 mem_we 1 1 }  { real_op_17_d0 mem_din 1 32 }  { real_op_17_address1 MemPortADDR2 1 6 }  { real_op_17_ce1 MemPortCE2 1 1 }  { real_op_17_q1 MemPortDOUT2 0 32 } } }
	real_op_18 { ap_memory {  { real_op_18_address0 mem_address 1 6 }  { real_op_18_ce0 mem_ce 1 1 }  { real_op_18_we0 mem_we 1 1 }  { real_op_18_d0 mem_din 1 32 }  { real_op_18_address1 MemPortADDR2 1 6 }  { real_op_18_ce1 MemPortCE2 1 1 }  { real_op_18_q1 MemPortDOUT2 0 32 } } }
	real_op_19 { ap_memory {  { real_op_19_address0 mem_address 1 6 }  { real_op_19_ce0 mem_ce 1 1 }  { real_op_19_we0 mem_we 1 1 }  { real_op_19_d0 mem_din 1 32 }  { real_op_19_address1 MemPortADDR2 1 6 }  { real_op_19_ce1 MemPortCE2 1 1 }  { real_op_19_q1 MemPortDOUT2 0 32 } } }
	real_op_20 { ap_memory {  { real_op_20_address0 mem_address 1 6 }  { real_op_20_ce0 mem_ce 1 1 }  { real_op_20_we0 mem_we 1 1 }  { real_op_20_d0 mem_din 1 32 }  { real_op_20_address1 MemPortADDR2 1 6 }  { real_op_20_ce1 MemPortCE2 1 1 }  { real_op_20_q1 MemPortDOUT2 0 32 } } }
	imag_op_0 { ap_memory {  { imag_op_0_address0 mem_address 1 6 }  { imag_op_0_ce0 mem_ce 1 1 }  { imag_op_0_we0 mem_we 1 1 }  { imag_op_0_d0 mem_din 1 32 }  { imag_op_0_address1 MemPortADDR2 1 6 }  { imag_op_0_ce1 MemPortCE2 1 1 }  { imag_op_0_q1 MemPortDOUT2 0 32 } } }
	imag_op_1 { ap_memory {  { imag_op_1_address0 mem_address 1 6 }  { imag_op_1_ce0 mem_ce 1 1 }  { imag_op_1_we0 mem_we 1 1 }  { imag_op_1_d0 mem_din 1 32 }  { imag_op_1_address1 MemPortADDR2 1 6 }  { imag_op_1_ce1 MemPortCE2 1 1 }  { imag_op_1_q1 MemPortDOUT2 0 32 } } }
	imag_op_2 { ap_memory {  { imag_op_2_address0 mem_address 1 6 }  { imag_op_2_ce0 mem_ce 1 1 }  { imag_op_2_we0 mem_we 1 1 }  { imag_op_2_d0 mem_din 1 32 }  { imag_op_2_address1 MemPortADDR2 1 6 }  { imag_op_2_ce1 MemPortCE2 1 1 }  { imag_op_2_q1 MemPortDOUT2 0 32 } } }
	imag_op_3 { ap_memory {  { imag_op_3_address0 mem_address 1 6 }  { imag_op_3_ce0 mem_ce 1 1 }  { imag_op_3_we0 mem_we 1 1 }  { imag_op_3_d0 mem_din 1 32 }  { imag_op_3_address1 MemPortADDR2 1 6 }  { imag_op_3_ce1 MemPortCE2 1 1 }  { imag_op_3_q1 MemPortDOUT2 0 32 } } }
	imag_op_4 { ap_memory {  { imag_op_4_address0 mem_address 1 6 }  { imag_op_4_ce0 mem_ce 1 1 }  { imag_op_4_we0 mem_we 1 1 }  { imag_op_4_d0 mem_din 1 32 }  { imag_op_4_address1 MemPortADDR2 1 6 }  { imag_op_4_ce1 MemPortCE2 1 1 }  { imag_op_4_q1 MemPortDOUT2 0 32 } } }
	imag_op_5 { ap_memory {  { imag_op_5_address0 mem_address 1 6 }  { imag_op_5_ce0 mem_ce 1 1 }  { imag_op_5_we0 mem_we 1 1 }  { imag_op_5_d0 mem_din 1 32 }  { imag_op_5_address1 MemPortADDR2 1 6 }  { imag_op_5_ce1 MemPortCE2 1 1 }  { imag_op_5_q1 MemPortDOUT2 0 32 } } }
	imag_op_6 { ap_memory {  { imag_op_6_address0 mem_address 1 6 }  { imag_op_6_ce0 mem_ce 1 1 }  { imag_op_6_we0 mem_we 1 1 }  { imag_op_6_d0 mem_din 1 32 }  { imag_op_6_address1 MemPortADDR2 1 6 }  { imag_op_6_ce1 MemPortCE2 1 1 }  { imag_op_6_q1 MemPortDOUT2 0 32 } } }
	imag_op_7 { ap_memory {  { imag_op_7_address0 mem_address 1 6 }  { imag_op_7_ce0 mem_ce 1 1 }  { imag_op_7_we0 mem_we 1 1 }  { imag_op_7_d0 mem_din 1 32 }  { imag_op_7_address1 MemPortADDR2 1 6 }  { imag_op_7_ce1 MemPortCE2 1 1 }  { imag_op_7_q1 MemPortDOUT2 0 32 } } }
	imag_op_8 { ap_memory {  { imag_op_8_address0 mem_address 1 6 }  { imag_op_8_ce0 mem_ce 1 1 }  { imag_op_8_we0 mem_we 1 1 }  { imag_op_8_d0 mem_din 1 32 }  { imag_op_8_address1 MemPortADDR2 1 6 }  { imag_op_8_ce1 MemPortCE2 1 1 }  { imag_op_8_q1 MemPortDOUT2 0 32 } } }
	imag_op_9 { ap_memory {  { imag_op_9_address0 mem_address 1 6 }  { imag_op_9_ce0 mem_ce 1 1 }  { imag_op_9_we0 mem_we 1 1 }  { imag_op_9_d0 mem_din 1 32 }  { imag_op_9_address1 MemPortADDR2 1 6 }  { imag_op_9_ce1 MemPortCE2 1 1 }  { imag_op_9_q1 MemPortDOUT2 0 32 } } }
	imag_op_10 { ap_memory {  { imag_op_10_address0 mem_address 1 6 }  { imag_op_10_ce0 mem_ce 1 1 }  { imag_op_10_we0 mem_we 1 1 }  { imag_op_10_d0 mem_din 1 32 }  { imag_op_10_address1 MemPortADDR2 1 6 }  { imag_op_10_ce1 MemPortCE2 1 1 }  { imag_op_10_q1 MemPortDOUT2 0 32 } } }
	imag_op_11 { ap_memory {  { imag_op_11_address0 mem_address 1 6 }  { imag_op_11_ce0 mem_ce 1 1 }  { imag_op_11_we0 mem_we 1 1 }  { imag_op_11_d0 mem_din 1 32 }  { imag_op_11_address1 MemPortADDR2 1 6 }  { imag_op_11_ce1 MemPortCE2 1 1 }  { imag_op_11_q1 MemPortDOUT2 0 32 } } }
	imag_op_12 { ap_memory {  { imag_op_12_address0 mem_address 1 6 }  { imag_op_12_ce0 mem_ce 1 1 }  { imag_op_12_we0 mem_we 1 1 }  { imag_op_12_d0 mem_din 1 32 }  { imag_op_12_address1 MemPortADDR2 1 6 }  { imag_op_12_ce1 MemPortCE2 1 1 }  { imag_op_12_q1 MemPortDOUT2 0 32 } } }
	imag_op_13 { ap_memory {  { imag_op_13_address0 mem_address 1 6 }  { imag_op_13_ce0 mem_ce 1 1 }  { imag_op_13_we0 mem_we 1 1 }  { imag_op_13_d0 mem_din 1 32 }  { imag_op_13_address1 MemPortADDR2 1 6 }  { imag_op_13_ce1 MemPortCE2 1 1 }  { imag_op_13_q1 MemPortDOUT2 0 32 } } }
	imag_op_14 { ap_memory {  { imag_op_14_address0 mem_address 1 6 }  { imag_op_14_ce0 mem_ce 1 1 }  { imag_op_14_we0 mem_we 1 1 }  { imag_op_14_d0 mem_din 1 32 }  { imag_op_14_address1 MemPortADDR2 1 6 }  { imag_op_14_ce1 MemPortCE2 1 1 }  { imag_op_14_q1 MemPortDOUT2 0 32 } } }
	imag_op_15 { ap_memory {  { imag_op_15_address0 mem_address 1 6 }  { imag_op_15_ce0 mem_ce 1 1 }  { imag_op_15_we0 mem_we 1 1 }  { imag_op_15_d0 mem_din 1 32 }  { imag_op_15_address1 MemPortADDR2 1 6 }  { imag_op_15_ce1 MemPortCE2 1 1 }  { imag_op_15_q1 MemPortDOUT2 0 32 } } }
	imag_op_16 { ap_memory {  { imag_op_16_address0 mem_address 1 6 }  { imag_op_16_ce0 mem_ce 1 1 }  { imag_op_16_we0 mem_we 1 1 }  { imag_op_16_d0 mem_din 1 32 }  { imag_op_16_address1 MemPortADDR2 1 6 }  { imag_op_16_ce1 MemPortCE2 1 1 }  { imag_op_16_q1 MemPortDOUT2 0 32 } } }
	imag_op_17 { ap_memory {  { imag_op_17_address0 mem_address 1 6 }  { imag_op_17_ce0 mem_ce 1 1 }  { imag_op_17_we0 mem_we 1 1 }  { imag_op_17_d0 mem_din 1 32 }  { imag_op_17_address1 MemPortADDR2 1 6 }  { imag_op_17_ce1 MemPortCE2 1 1 }  { imag_op_17_q1 MemPortDOUT2 0 32 } } }
	imag_op_18 { ap_memory {  { imag_op_18_address0 mem_address 1 6 }  { imag_op_18_ce0 mem_ce 1 1 }  { imag_op_18_we0 mem_we 1 1 }  { imag_op_18_d0 mem_din 1 32 }  { imag_op_18_address1 MemPortADDR2 1 6 }  { imag_op_18_ce1 MemPortCE2 1 1 }  { imag_op_18_q1 MemPortDOUT2 0 32 } } }
	imag_op_19 { ap_memory {  { imag_op_19_address0 mem_address 1 6 }  { imag_op_19_ce0 mem_ce 1 1 }  { imag_op_19_we0 mem_we 1 1 }  { imag_op_19_d0 mem_din 1 32 }  { imag_op_19_address1 MemPortADDR2 1 6 }  { imag_op_19_ce1 MemPortCE2 1 1 }  { imag_op_19_q1 MemPortDOUT2 0 32 } } }
	imag_op_20 { ap_memory {  { imag_op_20_address0 mem_address 1 6 }  { imag_op_20_ce0 mem_ce 1 1 }  { imag_op_20_we0 mem_we 1 1 }  { imag_op_20_d0 mem_din 1 32 }  { imag_op_20_address1 MemPortADDR2 1 6 }  { imag_op_20_ce1 MemPortCE2 1 1 }  { imag_op_20_q1 MemPortDOUT2 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
