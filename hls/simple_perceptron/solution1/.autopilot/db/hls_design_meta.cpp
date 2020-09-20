#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("x_Addr_A", 32, hls_out, 0, "bram", "MemPortADDR2", 1),
	Port_Property("x_EN_A", 1, hls_out, 0, "bram", "MemPortCE2", 1),
	Port_Property("x_WEN_A", 4, hls_out, 0, "bram", "MemPortWE2", 1),
	Port_Property("x_Din_A", 32, hls_out, 0, "bram", "MemPortDIN2", 1),
	Port_Property("x_Dout_A", 32, hls_in, 0, "bram", "MemPortDOUT2", 1),
	Port_Property("x_Clk_A", 1, hls_out, 0, "bram", "mem_clk", 1),
	Port_Property("x_Rst_A", 1, hls_out, 0, "bram", "mem_rst", 1),
	Port_Property("w_Addr_A", 32, hls_out, 1, "bram", "MemPortADDR2", 1),
	Port_Property("w_EN_A", 1, hls_out, 1, "bram", "MemPortCE2", 1),
	Port_Property("w_WEN_A", 4, hls_out, 1, "bram", "MemPortWE2", 1),
	Port_Property("w_Din_A", 32, hls_out, 1, "bram", "MemPortDIN2", 1),
	Port_Property("w_Dout_A", 32, hls_in, 1, "bram", "MemPortDOUT2", 1),
	Port_Property("w_Clk_A", 1, hls_out, 1, "bram", "mem_clk", 1),
	Port_Property("w_Rst_A", 1, hls_out, 1, "bram", "mem_rst", 1),
	Port_Property("b_Addr_A", 32, hls_out, 2, "bram", "MemPortADDR2", 1),
	Port_Property("b_EN_A", 1, hls_out, 2, "bram", "MemPortCE2", 1),
	Port_Property("b_WEN_A", 4, hls_out, 2, "bram", "MemPortWE2", 1),
	Port_Property("b_Din_A", 32, hls_out, 2, "bram", "MemPortDIN2", 1),
	Port_Property("b_Dout_A", 32, hls_in, 2, "bram", "MemPortDOUT2", 1),
	Port_Property("b_Clk_A", 1, hls_out, 2, "bram", "mem_clk", 1),
	Port_Property("b_Rst_A", 1, hls_out, 2, "bram", "mem_rst", 1),
	Port_Property("res_Addr_A", 32, hls_out, 3, "bram", "MemPortADDR2", 1),
	Port_Property("res_EN_A", 1, hls_out, 3, "bram", "MemPortCE2", 1),
	Port_Property("res_WEN_A", 4, hls_out, 3, "bram", "MemPortWE2", 1),
	Port_Property("res_Din_A", 32, hls_out, 3, "bram", "MemPortDIN2", 1),
	Port_Property("res_Dout_A", 32, hls_in, 3, "bram", "MemPortDOUT2", 1),
	Port_Property("res_Clk_A", 1, hls_out, 3, "bram", "mem_clk", 1),
	Port_Property("res_Rst_A", 1, hls_out, 3, "bram", "mem_rst", 1),
	Port_Property("s_axi_CTRL_BUS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CTRL_BUS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "calcPerceptron";