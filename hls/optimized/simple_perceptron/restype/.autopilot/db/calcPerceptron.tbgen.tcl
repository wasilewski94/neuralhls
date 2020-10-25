set moduleName calcPerceptron
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {calcPerceptron}
set C_modelType { void 0 }
set C_modelArgList {
	{ x int 16 regular {bram 784 { 1 } 1 1 }  }
	{ res int 16 regular {bram 18 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "bram", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "x","cData": "half","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 783,"step" : 1}]}]}]} , 
 	{ "Name" : "res", "interface" : "bram", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "res","cData": "half","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 17,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ x_Addr_A sc_out sc_lv 32 signal 0 } 
	{ x_EN_A sc_out sc_logic 1 signal 0 } 
	{ x_WEN_A sc_out sc_lv 2 signal 0 } 
	{ x_Din_A sc_out sc_lv 16 signal 0 } 
	{ x_Dout_A sc_in sc_lv 16 signal 0 } 
	{ x_Clk_A sc_out sc_logic 1 signal 0 } 
	{ x_Rst_A sc_out sc_logic 1 signal 0 } 
	{ res_Addr_A sc_out sc_lv 32 signal 1 } 
	{ res_EN_A sc_out sc_logic 1 signal 1 } 
	{ res_WEN_A sc_out sc_lv 2 signal 1 } 
	{ res_Din_A sc_out sc_lv 16 signal 1 } 
	{ res_Dout_A sc_in sc_lv 16 signal 1 } 
	{ res_Clk_A sc_out sc_logic 1 signal 1 } 
	{ res_Rst_A sc_out sc_logic 1 signal 1 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"calcPerceptron","role":"start","value":"0","valid_bit":"0"},{"name":"calcPerceptron","role":"continue","value":"0","valid_bit":"4"},{"name":"calcPerceptron","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"calcPerceptron","role":"start","value":"0","valid_bit":"0"},{"name":"calcPerceptron","role":"done","value":"0","valid_bit":"1"},{"name":"calcPerceptron","role":"idle","value":"0","valid_bit":"2"},{"name":"calcPerceptron","role":"ready","value":"0","valid_bit":"3"},{"name":"calcPerceptron","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "x_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "Addr_A" }} , 
 	{ "name": "x_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "EN_A" }} , 
 	{ "name": "x_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x", "role": "WEN_A" }} , 
 	{ "name": "x_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x", "role": "Din_A" }} , 
 	{ "name": "x_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x", "role": "Dout_A" }} , 
 	{ "name": "x_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "Clk_A" }} , 
 	{ "name": "x_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "Rst_A" }} , 
 	{ "name": "res_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res", "role": "Addr_A" }} , 
 	{ "name": "res_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "EN_A" }} , 
 	{ "name": "res_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "res", "role": "WEN_A" }} , 
 	{ "name": "res_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "Din_A" }} , 
 	{ "name": "res_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "Dout_A" }} , 
 	{ "name": "res_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "Clk_A" }} , 
 	{ "name": "res_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "calcPerceptron",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6669", "EstimateLatencyMax" : "6669",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "res", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_exp_generic_decimal16_s_fu_16247", "Port" : "table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xbuf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resbuf_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_decimal16_s_fu_16247", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "exp_generic_decimal16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_decimal16_s_fu_16247.table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_decimal16_s_fu_16247.calcPerceptron_mac_muladd_10ns_10s_13s_19_4_1_U1", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_decimal16_s_fu_16247.calcPerceptron_mul_mul_20ns_7s_26_4_1_U2", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_decimal16_s_fu_16247.calcPerceptron_mac_muladd_4ns_5ns_19ns_19_4_1_U3", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hadd_16ns_16ns_16_5_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hmul_16ns_16ns_16_4_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hmul_16ns_16ns_16_4_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hdiv_16ns_16ns_16_7_1_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_hcmp_16ns_16ns_1_2_1_U18", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcPerceptron {
		x {Type I LastRead 3 FirstWrite -1}
		res {Type O LastRead -1 FirstWrite 421}
		w {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		b {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	exp_generic_decimal16_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6669", "Max" : "6669"}
	, {"Name" : "Interval", "Min" : "6670", "Max" : "6670"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
]}

set Spec2ImplPortList { 
	x { bram {  { x_Addr_A MemPortADDR2 1 32 }  { x_EN_A MemPortCE2 1 1 }  { x_WEN_A MemPortWE2 1 2 }  { x_Din_A MemPortDIN2 1 16 }  { x_Dout_A MemPortDOUT2 0 16 }  { x_Clk_A mem_clk 1 1 }  { x_Rst_A mem_rst 1 1 } } }
	res { bram {  { res_Addr_A MemPortADDR2 1 32 }  { res_EN_A MemPortCE2 1 1 }  { res_WEN_A MemPortWE2 1 2 }  { res_Din_A MemPortDIN2 1 16 }  { res_Dout_A MemPortDOUT2 0 16 }  { res_Clk_A mem_clk 1 1 }  { res_Rst_A mem_rst 1 1 } } }
}

set busDeadlockParameterList { 
}

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
