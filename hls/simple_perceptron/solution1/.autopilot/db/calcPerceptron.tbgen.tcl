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
	{ x float 32 regular {bram 784 { 2 3 } 1 1 }  }
	{ w float 32 regular {bram 64000 { 1 3 } 1 1 }  }
	{ b float 32 regular {bram 500 { 1 3 } 1 1 }  }
	{ res float 32 regular {bram 300 { 2 3 } 1 1 }  }
	{ model int 32 regular {bram 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 783,"step" : 1}]}]}]} , 
 	{ "Name" : "w", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "w","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 63999,"step" : 1}]}]}]} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1}]}]}]} , 
 	{ "Name" : "res", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "res","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}]} , 
 	{ "Name" : "model", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "model","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ x_Addr_A sc_out sc_lv 32 signal 0 } 
	{ x_EN_A sc_out sc_logic 1 signal 0 } 
	{ x_WEN_A sc_out sc_lv 4 signal 0 } 
	{ x_Din_A sc_out sc_lv 32 signal 0 } 
	{ x_Dout_A sc_in sc_lv 32 signal 0 } 
	{ x_Clk_A sc_out sc_logic 1 signal 0 } 
	{ x_Rst_A sc_out sc_logic 1 signal 0 } 
	{ w_Addr_A sc_out sc_lv 32 signal 1 } 
	{ w_EN_A sc_out sc_logic 1 signal 1 } 
	{ w_WEN_A sc_out sc_lv 4 signal 1 } 
	{ w_Din_A sc_out sc_lv 32 signal 1 } 
	{ w_Dout_A sc_in sc_lv 32 signal 1 } 
	{ w_Clk_A sc_out sc_logic 1 signal 1 } 
	{ w_Rst_A sc_out sc_logic 1 signal 1 } 
	{ b_Addr_A sc_out sc_lv 32 signal 2 } 
	{ b_EN_A sc_out sc_logic 1 signal 2 } 
	{ b_WEN_A sc_out sc_lv 4 signal 2 } 
	{ b_Din_A sc_out sc_lv 32 signal 2 } 
	{ b_Dout_A sc_in sc_lv 32 signal 2 } 
	{ b_Clk_A sc_out sc_logic 1 signal 2 } 
	{ b_Rst_A sc_out sc_logic 1 signal 2 } 
	{ res_Addr_A sc_out sc_lv 32 signal 3 } 
	{ res_EN_A sc_out sc_logic 1 signal 3 } 
	{ res_WEN_A sc_out sc_lv 4 signal 3 } 
	{ res_Din_A sc_out sc_lv 32 signal 3 } 
	{ res_Dout_A sc_in sc_lv 32 signal 3 } 
	{ res_Clk_A sc_out sc_logic 1 signal 3 } 
	{ res_Rst_A sc_out sc_logic 1 signal 3 } 
	{ model_Addr_A sc_out sc_lv 32 signal 4 } 
	{ model_EN_A sc_out sc_logic 1 signal 4 } 
	{ model_WEN_A sc_out sc_lv 4 signal 4 } 
	{ model_Din_A sc_out sc_lv 32 signal 4 } 
	{ model_Dout_A sc_in sc_lv 32 signal 4 } 
	{ model_Clk_A sc_out sc_logic 1 signal 4 } 
	{ model_Rst_A sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "x_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x", "role": "WEN_A" }} , 
 	{ "name": "x_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "Din_A" }} , 
 	{ "name": "x_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "Dout_A" }} , 
 	{ "name": "x_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "Clk_A" }} , 
 	{ "name": "x_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "Rst_A" }} , 
 	{ "name": "w_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "Addr_A" }} , 
 	{ "name": "w_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "EN_A" }} , 
 	{ "name": "w_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w", "role": "WEN_A" }} , 
 	{ "name": "w_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "Din_A" }} , 
 	{ "name": "w_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "Dout_A" }} , 
 	{ "name": "w_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "Clk_A" }} , 
 	{ "name": "w_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "Rst_A" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "b_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Clk_A" }} , 
 	{ "name": "b_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Rst_A" }} , 
 	{ "name": "res_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res", "role": "Addr_A" }} , 
 	{ "name": "res_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "EN_A" }} , 
 	{ "name": "res_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res", "role": "WEN_A" }} , 
 	{ "name": "res_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res", "role": "Din_A" }} , 
 	{ "name": "res_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res", "role": "Dout_A" }} , 
 	{ "name": "res_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "Clk_A" }} , 
 	{ "name": "res_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "Rst_A" }} , 
 	{ "name": "model_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "model", "role": "Addr_A" }} , 
 	{ "name": "model_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "model", "role": "EN_A" }} , 
 	{ "name": "model_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "model", "role": "WEN_A" }} , 
 	{ "name": "model_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "model", "role": "Din_A" }} , 
 	{ "name": "model_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "model", "role": "Dout_A" }} , 
 	{ "name": "model_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "model", "role": "Clk_A" }} , 
 	{ "name": "model_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "model", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "calcPerceptron",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "w", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "res", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "model", "Type" : "Bram", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_fabkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_fmcud_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_fddEe_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_fceOg_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcPerceptron_fefYi_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calcPerceptron {
		x {Type IO LastRead 8 FirstWrite 7}
		w {Type I LastRead 7 FirstWrite -1}
		b {Type I LastRead 8 FirstWrite -1}
		res {Type IO LastRead 6 FirstWrite 8}
		model {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x { bram {  { x_Addr_A MemPortADDR2 1 32 }  { x_EN_A MemPortCE2 1 1 }  { x_WEN_A MemPortWE2 1 4 }  { x_Din_A MemPortDIN2 1 32 }  { x_Dout_A MemPortDOUT2 0 32 }  { x_Clk_A mem_clk 1 1 }  { x_Rst_A mem_rst 1 1 } } }
	w { bram {  { w_Addr_A MemPortADDR2 1 32 }  { w_EN_A MemPortCE2 1 1 }  { w_WEN_A MemPortWE2 1 4 }  { w_Din_A MemPortDIN2 1 32 }  { w_Dout_A MemPortDOUT2 0 32 }  { w_Clk_A mem_clk 1 1 }  { w_Rst_A mem_rst 1 1 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 4 }  { b_Din_A MemPortDIN2 1 32 }  { b_Dout_A MemPortDOUT2 0 32 }  { b_Clk_A mem_clk 1 1 }  { b_Rst_A mem_rst 1 1 } } }
	res { bram {  { res_Addr_A MemPortADDR2 1 32 }  { res_EN_A MemPortCE2 1 1 }  { res_WEN_A MemPortWE2 1 4 }  { res_Din_A MemPortDIN2 1 32 }  { res_Dout_A MemPortDOUT2 0 32 }  { res_Clk_A mem_clk 1 1 }  { res_Rst_A mem_rst 1 1 } } }
	model { bram {  { model_Addr_A MemPortADDR2 1 32 }  { model_EN_A MemPortCE2 1 1 }  { model_WEN_A MemPortWE2 1 4 }  { model_Din_A MemPortDIN2 1 32 }  { model_Dout_A MemPortDOUT2 0 32 }  { model_Clk_A mem_clk 1 1 }  { model_Rst_A mem_rst 1 1 } } }
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
