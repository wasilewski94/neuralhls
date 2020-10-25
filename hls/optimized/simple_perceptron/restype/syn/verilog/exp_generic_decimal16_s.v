// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module exp_generic_decimal16_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] x;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_address0;
reg    table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_ce0;
wire   [13:0] table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_q0;
wire   [0:0] p_Result_12_fu_153_p3;
reg   [0:0] p_Result_12_reg_806;
reg   [0:0] p_Result_12_reg_806_pp0_iter1_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter2_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter3_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter4_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter5_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter6_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter7_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter8_reg;
reg   [0:0] p_Result_12_reg_806_pp0_iter9_reg;
wire   [0:0] and_ln209_fu_187_p2;
reg   [0:0] and_ln209_reg_811;
reg   [0:0] and_ln209_reg_811_pp0_iter1_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter2_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter3_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter4_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter5_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter6_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter7_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter8_reg;
reg   [0:0] and_ln209_reg_811_pp0_iter9_reg;
wire   [0:0] and_ln18_fu_199_p2;
reg   [0:0] and_ln18_reg_818;
reg   [0:0] and_ln18_reg_818_pp0_iter1_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter2_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter3_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter4_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter5_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter6_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter7_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter8_reg;
reg   [0:0] and_ln18_reg_818_pp0_iter9_reg;
wire   [11:0] select_ln253_fu_229_p3;
reg   [11:0] select_ln253_reg_824;
reg   [11:0] select_ln253_reg_824_pp0_iter1_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter2_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter3_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter4_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter5_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter6_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter7_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter8_reg;
reg   [11:0] select_ln253_reg_824_pp0_iter9_reg;
wire  signed [14:0] m_frac_l_V_fu_237_p3;
reg  signed [14:0] m_frac_l_V_reg_829;
wire   [0:0] isNeg_fu_245_p3;
reg   [0:0] isNeg_reg_834;
wire  signed [5:0] m_exp_2_fu_263_p3;
reg  signed [5:0] m_exp_2_reg_839;
wire  signed [31:0] sext_ln1311_2_fu_271_p1;
reg  signed [31:0] sext_ln1311_2_reg_844;
wire  signed [18:0] r_V_6_fu_303_p3;
reg  signed [18:0] r_V_6_reg_849;
reg  signed [18:0] r_V_6_reg_849_pp0_iter1_reg;
reg  signed [18:0] r_V_6_reg_849_pp0_iter2_reg;
reg  signed [18:0] r_V_6_reg_849_pp0_iter3_reg;
reg  signed [18:0] r_V_6_reg_849_pp0_iter4_reg;
reg  signed [18:0] r_V_6_reg_849_pp0_iter5_reg;
reg   [15:0] m_fix_l_V_reg_854;
reg   [0:0] p_Result_13_reg_860;
reg   [0:0] p_Result_13_reg_860_pp0_iter1_reg;
wire   [0:0] icmp_ln338_fu_343_p2;
reg   [0:0] icmp_ln338_reg_870;
reg   [0:0] icmp_ln338_reg_870_pp0_iter1_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter2_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter3_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter4_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter5_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter6_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter7_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter8_reg;
reg   [0:0] icmp_ln338_reg_870_pp0_iter9_reg;
wire   [0:0] icmp_ln338_1_fu_383_p2;
reg   [0:0] icmp_ln338_1_reg_878;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter2_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter3_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter4_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter5_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter6_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter7_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter8_reg;
reg   [0:0] icmp_ln338_1_reg_878_pp0_iter9_reg;
wire  signed [6:0] r_exp_V_3_fu_439_p3;
reg  signed [6:0] r_exp_V_3_reg_888;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter4_reg;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter5_reg;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter6_reg;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter7_reg;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter8_reg;
reg  signed [6:0] r_exp_V_3_reg_888_pp0_iter9_reg;
wire   [3:0] m_diff_lo_V_fu_491_p1;
reg   [3:0] m_diff_lo_V_reg_899;
reg   [13:0] exp_Z1_V_reg_909;
reg   [13:0] exp_Z1_V_reg_909_pp0_iter8_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln498_fu_495_p1;
wire   [15:0] p_Val2_s_fu_149_p1;
wire   [4:0] tmp_V_fu_161_p4;
wire   [9:0] tmp_V_1_fu_171_p1;
wire   [0:0] icmp_ln833_fu_175_p2;
wire   [0:0] icmp_ln837_fu_181_p2;
wire   [0:0] icmp_ln833_1_fu_193_p2;
wire   [5:0] zext_ln659_fu_205_p1;
wire   [11:0] p_Result_s_fu_215_p3;
wire   [11:0] e_frac_V_fu_223_p2;
wire   [5:0] m_exp_fu_209_p2;
wire   [4:0] sub_ln1311_fu_253_p2;
wire  signed [5:0] sext_ln1311_fu_259_p1;
wire  signed [14:0] sext_ln1311_3_fu_275_p1;
wire   [14:0] ashr_ln1287_fu_283_p2;
wire  signed [31:0] sext_ln1287_fu_279_p1;
wire   [31:0] shl_ln1253_fu_293_p2;
wire  signed [18:0] sext_ln1287_1_fu_289_p1;
wire   [18:0] trunc_ln1310_fu_299_p1;
wire  signed [9:0] m_fix_hi_V_fu_321_p4;
wire   [15:0] sext_ln1311_2cast_fu_355_p1;
wire  signed [15:0] sext_ln1311_1_fu_349_p1;
wire   [15:0] shl_ln1253_1_fu_358_p2;
wire   [15:0] ashr_ln1287_1_fu_363_p2;
wire   [15:0] select_ln1322_fu_368_p3;
wire   [18:0] shl_ln_fu_375_p3;
wire  signed [18:0] sext_ln1285_fu_352_p1;
wire  signed [12:0] rhs_V_fu_389_p3;
wire  signed [18:0] grp_fu_777_p3;
wire   [11:0] trunc_ln805_fu_416_p1;
wire   [6:0] tmp_1_fu_400_p4;
wire   [0:0] icmp_ln805_fu_419_p2;
wire   [6:0] add_ln805_fu_425_p2;
wire   [0:0] p_Result_7_fu_409_p3;
wire   [6:0] select_ln805_fu_431_p3;
wire  signed [25:0] grp_fu_788_p2;
wire   [18:0] tmp_4_fu_454_p4;
wire   [19:0] rhs_V_1_fu_463_p3;
wire  signed [20:0] lhs_V_fu_451_p1;
wire  signed [20:0] sext_ln682_1_fu_471_p1;
wire   [20:0] ret_V_3_fu_475_p2;
wire   [8:0] m_diff_hi_V_fu_481_p4;
wire   [4:0] exp_Z1_hi_V_fu_500_p4;
wire   [14:0] lhs_V_1_fu_517_p1;
wire   [14:0] ret_V_4_fu_520_p2;
wire   [0:0] xor_ln936_fu_534_p2;
wire   [0:0] x_is_pinf_fu_539_p2;
wire   [0:0] or_ln214_fu_544_p2;
wire   [15:0] select_ln214_fu_549_p3;
wire   [18:0] grp_fu_795_p3;
wire   [0:0] tmp_9_fu_568_p3;
wire   [6:0] r_exp_V_fu_575_p2;
wire   [6:0] r_exp_V_2_fu_580_p3;
wire   [2:0] tmp_10_fu_587_p4;
wire   [0:0] icmp_ln849_fu_597_p2;
wire   [0:0] tmp_11_fu_608_p3;
wire   [9:0] tmp_3_fu_638_p4;
wire   [9:0] tmp_2_fu_629_p4;
wire   [4:0] trunc_ln168_fu_655_p1;
wire   [4:0] out_exp_V_fu_659_p2;
wire   [9:0] tmp_V_2_fu_647_p3;
wire   [15:0] p_Result_14_fu_665_p4;
wire   [0:0] or_ln214_1_fu_556_p2;
wire   [0:0] or_ln338_fu_603_p2;
wire   [0:0] xor_ln338_fu_690_p2;
wire   [0:0] and_ln338_fu_685_p2;
wire   [0:0] and_ln849_fu_695_p2;
wire   [0:0] or_ln849_fu_701_p2;
wire   [0:0] xor_ln214_fu_679_p2;
wire   [0:0] sel_tmp5_fu_707_p2;
wire   [15:0] select_ln339_fu_615_p3;
wire   [15:0] bitcast_ln667_fu_675_p1;
wire   [15:0] select_ln214_1_fu_560_p3;
wire   [15:0] sel_tmp6_fu_713_p3;
wire   [0:0] xor_ln338_1_fu_729_p2;
wire   [0:0] or_ln849_1_fu_740_p2;
wire   [0:0] and_ln338_1_fu_735_p2;
wire   [0:0] xor_ln849_fu_745_p2;
wire   [0:0] or_ln849_2_fu_751_p2;
wire   [0:0] tmp_fu_757_p2;
wire   [0:0] icmp_ln853_fu_623_p2;
wire   [0:0] sel_tmp16_fu_763_p2;
wire   [15:0] select_ln214_2_fu_721_p3;
wire   [9:0] grp_fu_777_p0;
wire   [19:0] grp_fu_788_p0;
wire   [3:0] grp_fu_795_p0;
wire   [4:0] grp_fu_795_p1;
wire   [18:0] grp_fu_795_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to9;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [8:0] grp_fu_795_p00;
wire   [8:0] grp_fu_795_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
end

exp_generic_decimal16_s_table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0bkb #(
    .DataWidth( 14 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_address0),
    .ce0(table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_ce0),
    .q0(table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_q0)
);

calcPerceptron_mac_muladd_10ns_10s_13s_19_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 19 ))
calcPerceptron_mac_muladd_10ns_10s_13s_19_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_777_p0),
    .din1(m_fix_hi_V_fu_321_p4),
    .din2(rhs_V_fu_389_p3),
    .ce(1'b1),
    .dout(grp_fu_777_p3)
);

calcPerceptron_mul_mul_20ns_7s_26_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 26 ))
calcPerceptron_mul_mul_20ns_7s_26_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_788_p0),
    .din1(r_exp_V_3_fu_439_p3),
    .ce(1'b1),
    .dout(grp_fu_788_p2)
);

calcPerceptron_mac_muladd_4ns_5ns_19ns_19_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 4 ),
    .din1_WIDTH( 5 ),
    .din2_WIDTH( 19 ),
    .dout_WIDTH( 19 ))
calcPerceptron_mac_muladd_4ns_5ns_19ns_19_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_795_p0),
    .din1(grp_fu_795_p1),
    .din2(grp_fu_795_p2),
    .ce(1'b1),
    .dout(grp_fu_795_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln18_reg_818 <= and_ln18_fu_199_p2;
        and_ln18_reg_818_pp0_iter1_reg <= and_ln18_reg_818;
        and_ln209_reg_811 <= and_ln209_fu_187_p2;
        and_ln209_reg_811_pp0_iter1_reg <= and_ln209_reg_811;
        icmp_ln338_1_reg_878 <= icmp_ln338_1_fu_383_p2;
        icmp_ln338_reg_870 <= icmp_ln338_fu_343_p2;
        icmp_ln338_reg_870_pp0_iter1_reg <= icmp_ln338_reg_870;
        isNeg_reg_834 <= m_exp_fu_209_p2[32'd5];
        m_exp_2_reg_839 <= m_exp_2_fu_263_p3;
        m_fix_l_V_reg_854 <= {{r_V_6_fu_303_p3[18:3]}};
        m_frac_l_V_reg_829[14 : 3] <= m_frac_l_V_fu_237_p3[14 : 3];
        p_Result_12_reg_806 <= p_Val2_s_fu_149_p1[32'd15];
        p_Result_12_reg_806_pp0_iter1_reg <= p_Result_12_reg_806;
        p_Result_13_reg_860 <= r_V_6_fu_303_p3[32'd18];
        p_Result_13_reg_860_pp0_iter1_reg <= p_Result_13_reg_860;
        r_V_6_reg_849 <= r_V_6_fu_303_p3;
        r_V_6_reg_849_pp0_iter1_reg <= r_V_6_reg_849;
        select_ln253_reg_824 <= select_ln253_fu_229_p3;
        select_ln253_reg_824_pp0_iter1_reg <= select_ln253_reg_824;
        sext_ln1311_2_reg_844 <= sext_ln1311_2_fu_271_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        and_ln18_reg_818_pp0_iter2_reg <= and_ln18_reg_818_pp0_iter1_reg;
        and_ln18_reg_818_pp0_iter3_reg <= and_ln18_reg_818_pp0_iter2_reg;
        and_ln18_reg_818_pp0_iter4_reg <= and_ln18_reg_818_pp0_iter3_reg;
        and_ln18_reg_818_pp0_iter5_reg <= and_ln18_reg_818_pp0_iter4_reg;
        and_ln18_reg_818_pp0_iter6_reg <= and_ln18_reg_818_pp0_iter5_reg;
        and_ln18_reg_818_pp0_iter7_reg <= and_ln18_reg_818_pp0_iter6_reg;
        and_ln18_reg_818_pp0_iter8_reg <= and_ln18_reg_818_pp0_iter7_reg;
        and_ln18_reg_818_pp0_iter9_reg <= and_ln18_reg_818_pp0_iter8_reg;
        and_ln209_reg_811_pp0_iter2_reg <= and_ln209_reg_811_pp0_iter1_reg;
        and_ln209_reg_811_pp0_iter3_reg <= and_ln209_reg_811_pp0_iter2_reg;
        and_ln209_reg_811_pp0_iter4_reg <= and_ln209_reg_811_pp0_iter3_reg;
        and_ln209_reg_811_pp0_iter5_reg <= and_ln209_reg_811_pp0_iter4_reg;
        and_ln209_reg_811_pp0_iter6_reg <= and_ln209_reg_811_pp0_iter5_reg;
        and_ln209_reg_811_pp0_iter7_reg <= and_ln209_reg_811_pp0_iter6_reg;
        and_ln209_reg_811_pp0_iter8_reg <= and_ln209_reg_811_pp0_iter7_reg;
        and_ln209_reg_811_pp0_iter9_reg <= and_ln209_reg_811_pp0_iter8_reg;
        exp_Z1_V_reg_909 <= table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_q0;
        exp_Z1_V_reg_909_pp0_iter8_reg <= exp_Z1_V_reg_909;
        icmp_ln338_1_reg_878_pp0_iter2_reg <= icmp_ln338_1_reg_878;
        icmp_ln338_1_reg_878_pp0_iter3_reg <= icmp_ln338_1_reg_878_pp0_iter2_reg;
        icmp_ln338_1_reg_878_pp0_iter4_reg <= icmp_ln338_1_reg_878_pp0_iter3_reg;
        icmp_ln338_1_reg_878_pp0_iter5_reg <= icmp_ln338_1_reg_878_pp0_iter4_reg;
        icmp_ln338_1_reg_878_pp0_iter6_reg <= icmp_ln338_1_reg_878_pp0_iter5_reg;
        icmp_ln338_1_reg_878_pp0_iter7_reg <= icmp_ln338_1_reg_878_pp0_iter6_reg;
        icmp_ln338_1_reg_878_pp0_iter8_reg <= icmp_ln338_1_reg_878_pp0_iter7_reg;
        icmp_ln338_1_reg_878_pp0_iter9_reg <= icmp_ln338_1_reg_878_pp0_iter8_reg;
        icmp_ln338_reg_870_pp0_iter2_reg <= icmp_ln338_reg_870_pp0_iter1_reg;
        icmp_ln338_reg_870_pp0_iter3_reg <= icmp_ln338_reg_870_pp0_iter2_reg;
        icmp_ln338_reg_870_pp0_iter4_reg <= icmp_ln338_reg_870_pp0_iter3_reg;
        icmp_ln338_reg_870_pp0_iter5_reg <= icmp_ln338_reg_870_pp0_iter4_reg;
        icmp_ln338_reg_870_pp0_iter6_reg <= icmp_ln338_reg_870_pp0_iter5_reg;
        icmp_ln338_reg_870_pp0_iter7_reg <= icmp_ln338_reg_870_pp0_iter6_reg;
        icmp_ln338_reg_870_pp0_iter8_reg <= icmp_ln338_reg_870_pp0_iter7_reg;
        icmp_ln338_reg_870_pp0_iter9_reg <= icmp_ln338_reg_870_pp0_iter8_reg;
        m_diff_lo_V_reg_899 <= m_diff_lo_V_fu_491_p1;
        p_Result_12_reg_806_pp0_iter2_reg <= p_Result_12_reg_806_pp0_iter1_reg;
        p_Result_12_reg_806_pp0_iter3_reg <= p_Result_12_reg_806_pp0_iter2_reg;
        p_Result_12_reg_806_pp0_iter4_reg <= p_Result_12_reg_806_pp0_iter3_reg;
        p_Result_12_reg_806_pp0_iter5_reg <= p_Result_12_reg_806_pp0_iter4_reg;
        p_Result_12_reg_806_pp0_iter6_reg <= p_Result_12_reg_806_pp0_iter5_reg;
        p_Result_12_reg_806_pp0_iter7_reg <= p_Result_12_reg_806_pp0_iter6_reg;
        p_Result_12_reg_806_pp0_iter8_reg <= p_Result_12_reg_806_pp0_iter7_reg;
        p_Result_12_reg_806_pp0_iter9_reg <= p_Result_12_reg_806_pp0_iter8_reg;
        r_V_6_reg_849_pp0_iter2_reg <= r_V_6_reg_849_pp0_iter1_reg;
        r_V_6_reg_849_pp0_iter3_reg <= r_V_6_reg_849_pp0_iter2_reg;
        r_V_6_reg_849_pp0_iter4_reg <= r_V_6_reg_849_pp0_iter3_reg;
        r_V_6_reg_849_pp0_iter5_reg <= r_V_6_reg_849_pp0_iter4_reg;
        r_exp_V_3_reg_888 <= r_exp_V_3_fu_439_p3;
        r_exp_V_3_reg_888_pp0_iter4_reg <= r_exp_V_3_reg_888;
        r_exp_V_3_reg_888_pp0_iter5_reg <= r_exp_V_3_reg_888_pp0_iter4_reg;
        r_exp_V_3_reg_888_pp0_iter6_reg <= r_exp_V_3_reg_888_pp0_iter5_reg;
        r_exp_V_3_reg_888_pp0_iter7_reg <= r_exp_V_3_reg_888_pp0_iter6_reg;
        r_exp_V_3_reg_888_pp0_iter8_reg <= r_exp_V_3_reg_888_pp0_iter7_reg;
        r_exp_V_3_reg_888_pp0_iter9_reg <= r_exp_V_3_reg_888_pp0_iter8_reg;
        select_ln253_reg_824_pp0_iter2_reg <= select_ln253_reg_824_pp0_iter1_reg;
        select_ln253_reg_824_pp0_iter3_reg <= select_ln253_reg_824_pp0_iter2_reg;
        select_ln253_reg_824_pp0_iter4_reg <= select_ln253_reg_824_pp0_iter3_reg;
        select_ln253_reg_824_pp0_iter5_reg <= select_ln253_reg_824_pp0_iter4_reg;
        select_ln253_reg_824_pp0_iter6_reg <= select_ln253_reg_824_pp0_iter5_reg;
        select_ln253_reg_824_pp0_iter7_reg <= select_ln253_reg_824_pp0_iter6_reg;
        select_ln253_reg_824_pp0_iter8_reg <= select_ln253_reg_824_pp0_iter7_reg;
        select_ln253_reg_824_pp0_iter9_reg <= select_ln253_reg_824_pp0_iter8_reg;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to9 = 1'b1;
    end else begin
        ap_idle_pp0_0to9 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_ce0 = 1'b1;
    end else begin
        table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln805_fu_425_p2 = (7'd1 + tmp_1_fu_400_p4);

assign and_ln18_fu_199_p2 = (icmp_ln833_fu_175_p2 & icmp_ln833_1_fu_193_p2);

assign and_ln209_fu_187_p2 = (icmp_ln837_fu_181_p2 & icmp_ln833_fu_175_p2);

assign and_ln338_1_fu_735_p2 = (xor_ln338_1_fu_729_p2 & icmp_ln338_reg_870_pp0_iter9_reg);

assign and_ln338_fu_685_p2 = (or_ln338_fu_603_p2 & icmp_ln338_reg_870_pp0_iter9_reg);

assign and_ln849_fu_695_p2 = (xor_ln338_fu_690_p2 & icmp_ln849_fu_597_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = ((sel_tmp16_fu_763_p2[0:0] === 1'b1) ? 16'd0 : select_ln214_2_fu_721_p3);

assign ashr_ln1287_1_fu_363_p2 = $signed(m_fix_l_V_reg_854) >>> sext_ln1311_1_fu_349_p1;

assign ashr_ln1287_fu_283_p2 = $signed(m_frac_l_V_fu_237_p3) >>> sext_ln1311_3_fu_275_p1;

assign bitcast_ln667_fu_675_p1 = p_Result_14_fu_665_p4;

assign e_frac_V_fu_223_p2 = (12'd0 - p_Result_s_fu_215_p3);

assign exp_Z1_hi_V_fu_500_p4 = {{table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_q0[13:9]}};

assign grp_fu_777_p0 = 19'd369;

assign grp_fu_788_p0 = 26'd363408;

assign grp_fu_795_p0 = grp_fu_795_p00;

assign grp_fu_795_p00 = m_diff_lo_V_reg_899;

assign grp_fu_795_p1 = grp_fu_795_p10;

assign grp_fu_795_p10 = exp_Z1_hi_V_fu_500_p4;

assign grp_fu_795_p2 = {{ret_V_4_fu_520_p2}, {4'd0}};

assign icmp_ln338_1_fu_383_p2 = ((shl_ln_fu_375_p3 != sext_ln1285_fu_352_p1) ? 1'b1 : 1'b0);

assign icmp_ln338_fu_343_p2 = (($signed(m_exp_fu_209_p2) > $signed(6'd0)) ? 1'b1 : 1'b0);

assign icmp_ln805_fu_419_p2 = ((trunc_ln805_fu_416_p1 == 12'd0) ? 1'b1 : 1'b0);

assign icmp_ln833_1_fu_193_p2 = ((tmp_V_1_fu_171_p1 == 10'd0) ? 1'b1 : 1'b0);

assign icmp_ln833_fu_175_p2 = ((tmp_V_fu_161_p4 == 5'd31) ? 1'b1 : 1'b0);

assign icmp_ln837_fu_181_p2 = ((tmp_V_1_fu_171_p1 != 10'd0) ? 1'b1 : 1'b0);

assign icmp_ln849_fu_597_p2 = (($signed(tmp_10_fu_587_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);

assign icmp_ln853_fu_623_p2 = (($signed(r_exp_V_2_fu_580_p3) < $signed(7'd114)) ? 1'b1 : 1'b0);

assign isNeg_fu_245_p3 = m_exp_fu_209_p2[32'd5];

assign lhs_V_1_fu_517_p1 = exp_Z1_V_reg_909_pp0_iter8_reg;

assign lhs_V_fu_451_p1 = r_V_6_reg_849_pp0_iter5_reg;

assign m_diff_hi_V_fu_481_p4 = {{ret_V_3_fu_475_p2[12:4]}};

assign m_diff_lo_V_fu_491_p1 = ret_V_3_fu_475_p2[3:0];

assign m_exp_2_fu_263_p3 = ((isNeg_fu_245_p3[0:0] === 1'b1) ? sext_ln1311_fu_259_p1 : m_exp_fu_209_p2);

assign m_exp_fu_209_p2 = ($signed(6'd49) + $signed(zext_ln659_fu_205_p1));

assign m_fix_hi_V_fu_321_p4 = {{r_V_6_fu_303_p3[18:9]}};

assign m_frac_l_V_fu_237_p3 = {{select_ln253_fu_229_p3}, {3'd0}};

assign or_ln214_1_fu_556_p2 = (and_ln209_reg_811_pp0_iter9_reg | and_ln18_reg_818_pp0_iter9_reg);

assign or_ln214_fu_544_p2 = (x_is_pinf_fu_539_p2 | and_ln209_reg_811_pp0_iter9_reg);

assign or_ln338_fu_603_p2 = (icmp_ln849_fu_597_p2 | icmp_ln338_1_reg_878_pp0_iter9_reg);

assign or_ln849_1_fu_740_p2 = (icmp_ln849_fu_597_p2 | icmp_ln338_reg_870_pp0_iter9_reg);

assign or_ln849_2_fu_751_p2 = (xor_ln849_fu_745_p2 | and_ln338_1_fu_735_p2);

assign or_ln849_fu_701_p2 = (and_ln849_fu_695_p2 | and_ln338_fu_685_p2);

assign out_exp_V_fu_659_p2 = (5'd15 + trunc_ln168_fu_655_p1);

assign p_Result_12_fu_153_p3 = p_Val2_s_fu_149_p1[32'd15];

assign p_Result_14_fu_665_p4 = {{{{1'd0}, {out_exp_V_fu_659_p2}}}, {tmp_V_2_fu_647_p3}};

assign p_Result_7_fu_409_p3 = grp_fu_777_p3[32'd18];

assign p_Result_s_fu_215_p3 = {{2'd1}, {tmp_V_1_fu_171_p1}};

assign p_Val2_s_fu_149_p1 = x;

assign r_V_6_fu_303_p3 = ((isNeg_fu_245_p3[0:0] === 1'b1) ? sext_ln1287_1_fu_289_p1 : trunc_ln1310_fu_299_p1);

assign r_exp_V_2_fu_580_p3 = ((tmp_9_fu_568_p3[0:0] === 1'b1) ? r_exp_V_3_reg_888_pp0_iter9_reg : r_exp_V_fu_575_p2);

assign r_exp_V_3_fu_439_p3 = ((p_Result_7_fu_409_p3[0:0] === 1'b1) ? select_ln805_fu_431_p3 : tmp_1_fu_400_p4);

assign r_exp_V_fu_575_p2 = ($signed(7'd127) + $signed(r_exp_V_3_reg_888_pp0_iter9_reg));

assign ret_V_3_fu_475_p2 = ($signed(lhs_V_fu_451_p1) - $signed(sext_ln682_1_fu_471_p1));

assign ret_V_4_fu_520_p2 = (15'd4 + lhs_V_1_fu_517_p1);

assign rhs_V_1_fu_463_p3 = {{tmp_4_fu_454_p4}, {1'd0}};

assign rhs_V_fu_389_p3 = {{p_Result_13_reg_860_pp0_iter1_reg}, {12'd2048}};

assign sel_tmp16_fu_763_p2 = (tmp_fu_757_p2 & icmp_ln853_fu_623_p2);

assign sel_tmp5_fu_707_p2 = (xor_ln214_fu_679_p2 & or_ln849_fu_701_p2);

assign sel_tmp6_fu_713_p3 = ((sel_tmp5_fu_707_p2[0:0] === 1'b1) ? select_ln339_fu_615_p3 : bitcast_ln667_fu_675_p1);

assign select_ln1322_fu_368_p3 = ((isNeg_reg_834[0:0] === 1'b1) ? shl_ln1253_1_fu_358_p2 : ashr_ln1287_1_fu_363_p2);

assign select_ln214_1_fu_560_p3 = ((or_ln214_fu_544_p2[0:0] === 1'b1) ? select_ln214_fu_549_p3 : 16'd0);

assign select_ln214_2_fu_721_p3 = ((or_ln214_1_fu_556_p2[0:0] === 1'b1) ? select_ln214_1_fu_560_p3 : sel_tmp6_fu_713_p3);

assign select_ln214_fu_549_p3 = ((and_ln209_reg_811_pp0_iter9_reg[0:0] === 1'b1) ? 16'd32767 : 16'd31744);

assign select_ln253_fu_229_p3 = ((p_Result_12_fu_153_p3[0:0] === 1'b1) ? e_frac_V_fu_223_p2 : p_Result_s_fu_215_p3);

assign select_ln339_fu_615_p3 = ((tmp_11_fu_608_p3[0:0] === 1'b1) ? 16'd0 : 16'd31744);

assign select_ln805_fu_431_p3 = ((icmp_ln805_fu_419_p2[0:0] === 1'b1) ? tmp_1_fu_400_p4 : add_ln805_fu_425_p2);

assign sext_ln1285_fu_352_p1 = m_frac_l_V_reg_829;

assign sext_ln1287_1_fu_289_p1 = $signed(ashr_ln1287_fu_283_p2);

assign sext_ln1287_fu_279_p1 = m_frac_l_V_fu_237_p3;

assign sext_ln1311_1_fu_349_p1 = m_exp_2_reg_839;

assign sext_ln1311_2_fu_271_p1 = m_exp_2_fu_263_p3;

assign sext_ln1311_2cast_fu_355_p1 = sext_ln1311_2_reg_844[15:0];

assign sext_ln1311_3_fu_275_p1 = m_exp_2_fu_263_p3;

assign sext_ln1311_fu_259_p1 = $signed(sub_ln1311_fu_253_p2);

assign sext_ln682_1_fu_471_p1 = $signed(rhs_V_1_fu_463_p3);

assign shl_ln1253_1_fu_358_p2 = m_fix_l_V_reg_854 << sext_ln1311_2cast_fu_355_p1;

assign shl_ln1253_fu_293_p2 = sext_ln1287_fu_279_p1 << sext_ln1311_2_fu_271_p1;

assign shl_ln_fu_375_p3 = {{select_ln1322_fu_368_p3}, {3'd0}};

assign sub_ln1311_fu_253_p2 = (5'd15 - tmp_V_fu_161_p4);

assign table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0_array_V_address0 = zext_ln498_fu_495_p1;

assign tmp_10_fu_587_p4 = {{r_exp_V_2_fu_580_p3[6:4]}};

assign tmp_11_fu_608_p3 = select_ln253_reg_824_pp0_iter9_reg[32'd11];

assign tmp_1_fu_400_p4 = {{grp_fu_777_p3[18:12]}};

assign tmp_2_fu_629_p4 = {{grp_fu_795_p3[15:6]}};

assign tmp_3_fu_638_p4 = {{grp_fu_795_p3[16:7]}};

assign tmp_4_fu_454_p4 = {{grp_fu_788_p2[25:7]}};

assign tmp_9_fu_568_p3 = grp_fu_795_p3[32'd17];

assign tmp_V_1_fu_171_p1 = p_Val2_s_fu_149_p1[9:0];

assign tmp_V_2_fu_647_p3 = ((tmp_9_fu_568_p3[0:0] === 1'b1) ? tmp_3_fu_638_p4 : tmp_2_fu_629_p4);

assign tmp_V_fu_161_p4 = {{p_Val2_s_fu_149_p1[14:10]}};

assign tmp_fu_757_p2 = (xor_ln214_fu_679_p2 & or_ln849_2_fu_751_p2);

assign trunc_ln1310_fu_299_p1 = shl_ln1253_fu_293_p2[18:0];

assign trunc_ln168_fu_655_p1 = r_exp_V_2_fu_580_p3[4:0];

assign trunc_ln805_fu_416_p1 = grp_fu_777_p3[11:0];

assign x_is_pinf_fu_539_p2 = (xor_ln936_fu_534_p2 & and_ln18_reg_818_pp0_iter9_reg);

assign xor_ln214_fu_679_p2 = (or_ln214_1_fu_556_p2 ^ 1'd1);

assign xor_ln338_1_fu_729_p2 = (or_ln338_fu_603_p2 ^ 1'd1);

assign xor_ln338_fu_690_p2 = (icmp_ln338_reg_870_pp0_iter9_reg ^ 1'd1);

assign xor_ln849_fu_745_p2 = (or_ln849_1_fu_740_p2 ^ 1'd1);

assign xor_ln936_fu_534_p2 = (p_Result_12_reg_806_pp0_iter9_reg ^ 1'd1);

assign zext_ln498_fu_495_p1 = m_diff_hi_V_fu_481_p4;

assign zext_ln659_fu_205_p1 = tmp_V_fu_161_p4;

always @ (posedge ap_clk) begin
    m_frac_l_V_reg_829[2:0] <= 3'b000;
end

endmodule //exp_generic_decimal16_s