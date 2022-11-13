set moduleName dft_Pipeline_VITIS_LOOP_19_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dft_Pipeline_VITIS_LOOP_19_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ bitcast_ln22 float 32 regular  }
	{ bitcast_ln21 float 32 regular  }
	{ imag_op int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ zext_ln17 int 10 regular  }
	{ real_op int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ trunc_ln int 10 regular  }
	{ real_sample int 32 regular {array 1024 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bitcast_ln22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imag_op", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln17", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "real_op", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "real_sample", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bitcast_ln22 sc_in sc_lv 32 signal 0 } 
	{ bitcast_ln21 sc_in sc_lv 32 signal 1 } 
	{ imag_op_address0 sc_out sc_lv 10 signal 2 } 
	{ imag_op_ce0 sc_out sc_logic 1 signal 2 } 
	{ imag_op_we0 sc_out sc_logic 1 signal 2 } 
	{ imag_op_d0 sc_out sc_lv 32 signal 2 } 
	{ zext_ln17 sc_in sc_lv 10 signal 3 } 
	{ real_op_address0 sc_out sc_lv 10 signal 4 } 
	{ real_op_ce0 sc_out sc_logic 1 signal 4 } 
	{ real_op_we0 sc_out sc_logic 1 signal 4 } 
	{ real_op_d0 sc_out sc_lv 32 signal 4 } 
	{ trunc_ln sc_in sc_lv 10 signal 5 } 
	{ real_sample_address0 sc_out sc_lv 10 signal 6 } 
	{ real_sample_ce0 sc_out sc_logic 1 signal 6 } 
	{ real_sample_q0 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bitcast_ln22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln22", "role": "default" }} , 
 	{ "name": "bitcast_ln21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln21", "role": "default" }} , 
 	{ "name": "imag_op_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imag_op", "role": "address0" }} , 
 	{ "name": "imag_op_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op", "role": "ce0" }} , 
 	{ "name": "imag_op_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_op", "role": "we0" }} , 
 	{ "name": "imag_op_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imag_op", "role": "d0" }} , 
 	{ "name": "zext_ln17", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln17", "role": "default" }} , 
 	{ "name": "real_op_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_op", "role": "address0" }} , 
 	{ "name": "real_op_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op", "role": "ce0" }} , 
 	{ "name": "real_op_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_op", "role": "we0" }} , 
 	{ "name": "real_op_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_op", "role": "d0" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "real_sample_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "real_sample", "role": "address0" }} , 
 	{ "name": "real_sample_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "real_sample", "role": "ce0" }} , 
 	{ "name": "real_sample_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "real_sample", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_19_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10253", "EstimateLatencyMax" : "10253",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitcast_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "imag_op", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln17", "Type" : "None", "Direction" : "I"},
			{"Name" : "real_op", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "real_sample", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cos_coefficients_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sin_coefficients_table", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cos_coefficients_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sin_coefficients_table_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_8_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft_Pipeline_VITIS_LOOP_19_2 {
		bitcast_ln22 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln21 {Type I LastRead 0 FirstWrite -1}
		imag_op {Type O LastRead -1 FirstWrite 21}
		zext_ln17 {Type I LastRead 0 FirstWrite -1}
		real_op {Type O LastRead -1 FirstWrite 20}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		real_sample {Type I LastRead 0 FirstWrite -1}
		cos_coefficients_table {Type I LastRead -1 FirstWrite -1}
		sin_coefficients_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10253", "Max" : "10253"}
	, {"Name" : "Interval", "Min" : "10253", "Max" : "10253"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bitcast_ln22 { ap_none {  { bitcast_ln22 in_data 0 32 } } }
	bitcast_ln21 { ap_none {  { bitcast_ln21 in_data 0 32 } } }
	imag_op { ap_memory {  { imag_op_address0 mem_address 1 10 }  { imag_op_ce0 mem_ce 1 1 }  { imag_op_we0 mem_we 1 1 }  { imag_op_d0 mem_din 1 32 } } }
	zext_ln17 { ap_none {  { zext_ln17 in_data 0 10 } } }
	real_op { ap_memory {  { real_op_address0 mem_address 1 10 }  { real_op_ce0 mem_ce 1 1 }  { real_op_we0 mem_we 1 1 }  { real_op_d0 mem_din 1 32 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 10 } } }
	real_sample { ap_memory {  { real_sample_address0 mem_address 1 10 }  { real_sample_ce0 mem_ce 1 1 }  { real_sample_q0 mem_dout 0 32 } } }
}
