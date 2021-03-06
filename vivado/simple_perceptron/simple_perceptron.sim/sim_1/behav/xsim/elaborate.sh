#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Jul 06 23:29:12 CEST 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto d1264ededb654787b4a35a01f08cc76e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_9 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_20 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_19 -L axi_crossbar_v2_1_21 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L blk_mem_gen_v8_4_4 -L axi_bram_ctrl_v4_1_2 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_22 -L v_vid_in_axi4s_v4_0_9 -L lib_fifo_v1_0_14 -L lib_bmg_v1_0_13 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_22 -L axi_vdma_v6_3_8 -L v_tc_v6_2_0 -L axi_protocol_converter_v2_1_20 -L axi_clock_converter_v2_1_19 -L axi_dwidth_converter_v2_1_20 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot design_1_wrapper_behav xil_defaultlib.design_1_wrapper xil_defaultlib.glbl -log elaborate.log"
xelab -wto d1264ededb654787b4a35a01f08cc76e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_9 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_20 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_19 -L axi_crossbar_v2_1_21 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L blk_mem_gen_v8_4_4 -L axi_bram_ctrl_v4_1_2 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_22 -L v_vid_in_axi4s_v4_0_9 -L lib_fifo_v1_0_14 -L lib_bmg_v1_0_13 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_22 -L axi_vdma_v6_3_8 -L v_tc_v6_2_0 -L axi_protocol_converter_v2_1_20 -L axi_clock_converter_v2_1_19 -L axi_dwidth_converter_v2_1_20 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot design_1_wrapper_behav xil_defaultlib.design_1_wrapper xil_defaultlib.glbl -log elaborate.log

