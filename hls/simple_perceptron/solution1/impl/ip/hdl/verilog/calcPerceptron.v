// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="calcPerceptron,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.677000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=20,HLS_SYN_FF=1695,HLS_SYN_LUT=2719,HLS_VERSION=2019_2}" *)

module calcPerceptron (
        ap_clk,
        ap_rst_n,
        x_Addr_A,
        x_EN_A,
        x_WEN_A,
        x_Din_A,
        x_Dout_A,
        x_Clk_A,
        x_Rst_A,
        w_Addr_A,
        w_EN_A,
        w_WEN_A,
        w_Din_A,
        w_Dout_A,
        w_Clk_A,
        w_Rst_A,
        b_Addr_A,
        b_EN_A,
        b_WEN_A,
        b_Din_A,
        b_Dout_A,
        b_Clk_A,
        b_Rst_A,
        res_Addr_A,
        res_EN_A,
        res_WEN_A,
        res_Din_A,
        res_Dout_A,
        res_Clk_A,
        res_Rst_A,
        s_axi_CTRL_BUS_AWVALID,
        s_axi_CTRL_BUS_AWREADY,
        s_axi_CTRL_BUS_AWADDR,
        s_axi_CTRL_BUS_WVALID,
        s_axi_CTRL_BUS_WREADY,
        s_axi_CTRL_BUS_WDATA,
        s_axi_CTRL_BUS_WSTRB,
        s_axi_CTRL_BUS_ARVALID,
        s_axi_CTRL_BUS_ARREADY,
        s_axi_CTRL_BUS_ARADDR,
        s_axi_CTRL_BUS_RVALID,
        s_axi_CTRL_BUS_RREADY,
        s_axi_CTRL_BUS_RDATA,
        s_axi_CTRL_BUS_RRESP,
        s_axi_CTRL_BUS_BVALID,
        s_axi_CTRL_BUS_BREADY,
        s_axi_CTRL_BUS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 39'd1;
parameter    ap_ST_fsm_state2 = 39'd2;
parameter    ap_ST_fsm_pp0_stage0 = 39'd4;
parameter    ap_ST_fsm_pp0_stage1 = 39'd8;
parameter    ap_ST_fsm_pp0_stage2 = 39'd16;
parameter    ap_ST_fsm_pp0_stage3 = 39'd32;
parameter    ap_ST_fsm_pp0_stage4 = 39'd64;
parameter    ap_ST_fsm_state14 = 39'd128;
parameter    ap_ST_fsm_state15 = 39'd256;
parameter    ap_ST_fsm_state16 = 39'd512;
parameter    ap_ST_fsm_state17 = 39'd1024;
parameter    ap_ST_fsm_state18 = 39'd2048;
parameter    ap_ST_fsm_state19 = 39'd4096;
parameter    ap_ST_fsm_state20 = 39'd8192;
parameter    ap_ST_fsm_state21 = 39'd16384;
parameter    ap_ST_fsm_state22 = 39'd32768;
parameter    ap_ST_fsm_state23 = 39'd65536;
parameter    ap_ST_fsm_state24 = 39'd131072;
parameter    ap_ST_fsm_state25 = 39'd262144;
parameter    ap_ST_fsm_state26 = 39'd524288;
parameter    ap_ST_fsm_state27 = 39'd1048576;
parameter    ap_ST_fsm_state28 = 39'd2097152;
parameter    ap_ST_fsm_state29 = 39'd4194304;
parameter    ap_ST_fsm_state30 = 39'd8388608;
parameter    ap_ST_fsm_state31 = 39'd16777216;
parameter    ap_ST_fsm_state32 = 39'd33554432;
parameter    ap_ST_fsm_state33 = 39'd67108864;
parameter    ap_ST_fsm_state34 = 39'd134217728;
parameter    ap_ST_fsm_state35 = 39'd268435456;
parameter    ap_ST_fsm_state36 = 39'd536870912;
parameter    ap_ST_fsm_state37 = 39'd1073741824;
parameter    ap_ST_fsm_state38 = 39'd2147483648;
parameter    ap_ST_fsm_state39 = 39'd4294967296;
parameter    ap_ST_fsm_state40 = 39'd8589934592;
parameter    ap_ST_fsm_state41 = 39'd17179869184;
parameter    ap_ST_fsm_state42 = 39'd34359738368;
parameter    ap_ST_fsm_state43 = 39'd68719476736;
parameter    ap_ST_fsm_state44 = 39'd137438953472;
parameter    ap_ST_fsm_state45 = 39'd274877906944;
parameter    C_S_AXI_CTRL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output  [31:0] x_Addr_A;
output   x_EN_A;
output  [3:0] x_WEN_A;
output  [31:0] x_Din_A;
input  [31:0] x_Dout_A;
output   x_Clk_A;
output   x_Rst_A;
output  [31:0] w_Addr_A;
output   w_EN_A;
output  [3:0] w_WEN_A;
output  [31:0] w_Din_A;
input  [31:0] w_Dout_A;
output   w_Clk_A;
output   w_Rst_A;
output  [31:0] b_Addr_A;
output   b_EN_A;
output  [3:0] b_WEN_A;
output  [31:0] b_Din_A;
input  [31:0] b_Dout_A;
output   b_Clk_A;
output   b_Rst_A;
output  [31:0] res_Addr_A;
output   res_EN_A;
output  [3:0] res_WEN_A;
output  [31:0] res_Din_A;
input  [31:0] res_Dout_A;
output   res_Clk_A;
output   res_Rst_A;
input   s_axi_CTRL_BUS_AWVALID;
output   s_axi_CTRL_BUS_AWREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_CTRL_BUS_AWADDR;
input   s_axi_CTRL_BUS_WVALID;
output   s_axi_CTRL_BUS_WREADY;
input  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_CTRL_BUS_WDATA;
input  [C_S_AXI_CTRL_BUS_WSTRB_WIDTH - 1:0] s_axi_CTRL_BUS_WSTRB;
input   s_axi_CTRL_BUS_ARVALID;
output   s_axi_CTRL_BUS_ARREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_CTRL_BUS_ARADDR;
output   s_axi_CTRL_BUS_RVALID;
input   s_axi_CTRL_BUS_RREADY;
output  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_CTRL_BUS_RDATA;
output  [1:0] s_axi_CTRL_BUS_RRESP;
output   s_axi_CTRL_BUS_BVALID;
input   s_axi_CTRL_BUS_BREADY;
output  [1:0] s_axi_CTRL_BUS_BRESP;
output   interrupt;

reg x_EN_A;
reg w_EN_A;
reg b_EN_A;
reg res_EN_A;
reg[3:0] res_WEN_A;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [38:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] inputs;
wire   [31:0] neurons;
wire   [31:0] w_offset;
wire   [31:0] b_offset;
reg   [31:0] sum_1_reg_160;
reg   [30:0] i_0_reg_172;
wire   [31:0] grp_fu_183_p2;
reg   [31:0] reg_203;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state34;
reg   [31:0] b_offset_read_reg_293;
reg   [31:0] w_offset_read_reg_298;
reg   [31:0] neurons_read_reg_303;
reg   [31:0] inputs_read_reg_308;
wire   [31:0] add_ln29_fu_208_p2;
reg   [31:0] add_ln29_reg_314;
wire    ap_CS_fsm_state2;
wire   [31:0] zext_ln29_fu_213_p1;
reg   [31:0] zext_ln29_reg_319;
wire   [0:0] icmp_ln29_fu_217_p2;
wire   [30:0] j_fu_222_p2;
reg   [30:0] j_reg_328;
wire   [0:0] icmp_ln30_fu_232_p2;
reg   [0:0] icmp_ln30_reg_333;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state8_pp0_stage0_iter1;
wire    ap_block_state13_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln30_reg_333_pp0_iter1_reg;
wire   [30:0] i_fu_237_p2;
reg   [30:0] i_reg_337;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] x_load_reg_352;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state4_pp0_stage1_iter0;
wire    ap_block_state9_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] w_load_reg_357;
wire   [31:0] grp_fu_189_p2;
reg   [31:0] tmp_reg_362;
reg    ap_enable_reg_pp0_iter2;
wire    ap_CS_fsm_state14;
reg   [31:0] b_load_reg_377;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state21;
wire   [31:0] grp_fu_198_p2;
reg   [31:0] tmp_i_i_reg_387;
wire    ap_CS_fsm_state29;
wire   [31:0] grp_fu_193_p2;
reg   [31:0] tmp_1_reg_392;
wire    ap_CS_fsm_state44;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_state7_pp0_stage4_iter0;
wire    ap_block_state12_pp0_stage4_iter1;
wire    ap_block_pp0_stage4_subdone;
wire    ap_CS_fsm_pp0_stage4;
reg   [30:0] j_0_reg_136;
wire    ap_CS_fsm_state45;
reg   [31:0] phi_mul_reg_148;
wire   [31:0] ap_phi_mux_sum_1_phi_fu_164_p4;
reg   [30:0] ap_phi_mux_i_0_phi_fu_176_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_fu_243_p1;
wire  signed [63:0] sext_ln31_fu_259_p1;
wire  signed [63:0] sext_ln33_fu_268_p1;
wire   [63:0] zext_ln33_fu_288_p1;
wire   [31:0] x_Addr_A_orig;
wire   [31:0] w_Addr_A_orig;
wire   [31:0] b_Addr_A_orig;
wire   [31:0] res_Addr_A_orig;
reg   [31:0] grp_fu_183_p0;
reg   [31:0] grp_fu_183_p1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_state35;
wire   [31:0] grp_fu_198_p1;
wire   [31:0] i_0_cast_fu_228_p1;
wire   [31:0] add_ln31_fu_248_p2;
wire   [31:0] add_ln31_1_fu_253_p2;
wire   [31:0] add_ln33_fu_264_p2;
wire   [31:0] bitcast_ln33_fu_273_p1;
wire   [31:0] xor_ln33_fu_277_p2;
reg   [38:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_state5_pp0_stage2_iter0;
wire    ap_block_state10_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_state6_pp0_stage3_iter0;
wire    ap_block_state11_pp0_stage3_iter1;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage4_11001;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 39'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

calcPerceptron_CTRL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_BUS_DATA_WIDTH ))
calcPerceptron_CTRL_BUS_s_axi_U(
    .AWVALID(s_axi_CTRL_BUS_AWVALID),
    .AWREADY(s_axi_CTRL_BUS_AWREADY),
    .AWADDR(s_axi_CTRL_BUS_AWADDR),
    .WVALID(s_axi_CTRL_BUS_WVALID),
    .WREADY(s_axi_CTRL_BUS_WREADY),
    .WDATA(s_axi_CTRL_BUS_WDATA),
    .WSTRB(s_axi_CTRL_BUS_WSTRB),
    .ARVALID(s_axi_CTRL_BUS_ARVALID),
    .ARREADY(s_axi_CTRL_BUS_ARREADY),
    .ARADDR(s_axi_CTRL_BUS_ARADDR),
    .RVALID(s_axi_CTRL_BUS_RVALID),
    .RREADY(s_axi_CTRL_BUS_RREADY),
    .RDATA(s_axi_CTRL_BUS_RDATA),
    .RRESP(s_axi_CTRL_BUS_RRESP),
    .BVALID(s_axi_CTRL_BUS_BVALID),
    .BREADY(s_axi_CTRL_BUS_BREADY),
    .BRESP(s_axi_CTRL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .inputs(inputs),
    .neurons(neurons),
    .w_offset(w_offset),
    .b_offset(b_offset)
);

calcPerceptron_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
calcPerceptron_fadd_32ns_32ns_32_5_full_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_183_p0),
    .din1(grp_fu_183_p1),
    .ce(1'b1),
    .dout(grp_fu_183_p2)
);

calcPerceptron_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
calcPerceptron_fmul_32ns_32ns_32_4_max_dsp_1_U2(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(x_load_reg_352),
    .din1(w_load_reg_357),
    .ce(1'b1),
    .dout(grp_fu_189_p2)
);

calcPerceptron_frecip_32ns_32ns_32_10_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 10 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
calcPerceptron_frecip_32ns_32ns_32_10_full_dsp_1_U3(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(32'd0),
    .din1(reg_203),
    .ce(1'b1),
    .dout(grp_fu_193_p2)
);

calcPerceptron_fexp_32ns_32ns_32_9_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 9 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
calcPerceptron_fexp_32ns_32ns_32_9_full_dsp_1_U4(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(32'd0),
    .din1(grp_fu_198_p1),
    .ce(1'b1),
    .dout(grp_fu_198_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd1))) begin
        i_0_reg_172 <= 31'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln30_reg_333 == 1'd1))) begin
        i_0_reg_172 <= i_reg_337;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        j_0_reg_136 <= j_reg_328;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_136 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        phi_mul_reg_148 <= add_ln29_reg_314;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_reg_148 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd1))) begin
        sum_1_reg_160 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln30_reg_333_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sum_1_reg_160 <= grp_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln29_reg_314 <= add_ln29_fu_208_p2;
        j_reg_328 <= j_fu_222_p2;
        zext_ln29_reg_319[30 : 0] <= zext_ln29_fu_213_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        b_load_reg_377 <= b_Dout_A;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_offset_read_reg_293 <= b_offset;
        inputs_read_reg_308 <= inputs;
        neurons_read_reg_303 <= neurons;
        w_offset_read_reg_298 <= w_offset;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_337 <= i_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln30_reg_333 <= icmp_ln30_fu_232_p2;
        icmp_ln30_reg_333_pp0_iter1_reg <= icmp_ln30_reg_333;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_203 <= grp_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        tmp_1_reg_392 <= grp_fu_193_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        tmp_i_i_reg_387 <= grp_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln30_reg_333 == 1'd1))) begin
        tmp_reg_362 <= grp_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln30_reg_333 == 1'd1))) begin
        w_load_reg_357 <= w_Dout_A;
        x_load_reg_352 <= x_Dout_A;
    end
end

always @ (*) begin
    if ((icmp_ln30_fu_232_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln30_reg_333 == 1'd1))) begin
        ap_phi_mux_i_0_phi_fu_176_p4 = i_reg_337;
    end else begin
        ap_phi_mux_i_0_phi_fu_176_p4 = i_0_reg_172;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        b_EN_A = 1'b1;
    end else begin
        b_EN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_183_p0 = tmp_i_i_reg_387;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_183_p0 = b_load_reg_377;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_183_p0 = tmp_reg_362;
    end else begin
        grp_fu_183_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_183_p1 = 32'd1065353216;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_183_p1 = sum_1_reg_160;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_183_p1 = ap_phi_mux_sum_1_phi_fu_164_p4;
    end else begin
        grp_fu_183_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        res_EN_A = 1'b1;
    end else begin
        res_EN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        res_WEN_A = 4'd15;
    end else begin
        res_WEN_A = 4'd0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        w_EN_A = 1'b1;
    end else begin
        w_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_EN_A = 1'b1;
    end else begin
        x_EN_A = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln29_fu_217_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_fu_232_p2 == 1'd0)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_fu_232_p2 == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln29_fu_208_p2 = (phi_mul_reg_148 + inputs_read_reg_308);

assign add_ln31_1_fu_253_p2 = (add_ln31_fu_248_p2 + phi_mul_reg_148);

assign add_ln31_fu_248_p2 = (i_0_cast_fu_228_p1 + w_offset_read_reg_298);

assign add_ln33_fu_264_p2 = (zext_ln29_reg_319 + b_offset_read_reg_293);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd37];

assign ap_CS_fsm_state45 = ap_CS_fsm[32'd38];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage4_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_mux_sum_1_phi_fu_164_p4 = sum_1_reg_160;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign b_Addr_A = b_Addr_A_orig << 32'd2;

assign b_Addr_A_orig = sext_ln33_fu_268_p1;

assign b_Clk_A = ap_clk;

assign b_Din_A = 32'd0;

assign b_Rst_A = ap_rst_n_inv;

assign b_WEN_A = 4'd0;

assign bitcast_ln33_fu_273_p1 = reg_203;

assign grp_fu_198_p1 = xor_ln33_fu_277_p2;

assign i_0_cast_fu_228_p1 = ap_phi_mux_i_0_phi_fu_176_p4;

assign i_fu_237_p2 = (ap_phi_mux_i_0_phi_fu_176_p4 + 31'd1);

assign icmp_ln29_fu_217_p2 = (($signed(zext_ln29_fu_213_p1) < $signed(neurons_read_reg_303)) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_232_p2 = (($signed(i_0_cast_fu_228_p1) < $signed(inputs_read_reg_308)) ? 1'b1 : 1'b0);

assign j_fu_222_p2 = (j_0_reg_136 + 31'd1);

assign res_Addr_A = res_Addr_A_orig << 32'd2;

assign res_Addr_A_orig = zext_ln33_fu_288_p1;

assign res_Clk_A = ap_clk;

assign res_Din_A = tmp_1_reg_392;

assign res_Rst_A = ap_rst_n_inv;

assign sext_ln31_fu_259_p1 = $signed(add_ln31_1_fu_253_p2);

assign sext_ln33_fu_268_p1 = $signed(add_ln33_fu_264_p2);

assign w_Addr_A = w_Addr_A_orig << 32'd2;

assign w_Addr_A_orig = sext_ln31_fu_259_p1;

assign w_Clk_A = ap_clk;

assign w_Din_A = 32'd0;

assign w_Rst_A = ap_rst_n_inv;

assign w_WEN_A = 4'd0;

assign x_Addr_A = x_Addr_A_orig << 32'd2;

assign x_Addr_A_orig = zext_ln31_fu_243_p1;

assign x_Clk_A = ap_clk;

assign x_Din_A = 32'd0;

assign x_Rst_A = ap_rst_n_inv;

assign x_WEN_A = 4'd0;

assign xor_ln33_fu_277_p2 = (bitcast_ln33_fu_273_p1 ^ 32'd2147483648);

assign zext_ln29_fu_213_p1 = j_0_reg_136;

assign zext_ln31_fu_243_p1 = ap_phi_mux_i_0_phi_fu_176_p4;

assign zext_ln33_fu_288_p1 = j_0_reg_136;

always @ (posedge ap_clk) begin
    zext_ln29_reg_319[31] <= 1'b0;
end

endmodule //calcPerceptron