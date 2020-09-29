############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_perceptron
set_top calcPerceptron
add_files simple_perceptron/core.cpp
add_files simple_perceptron/hls_biases.h
add_files simple_perceptron/hls_input.h
add_files simple_perceptron/hls_weights.h
add_files -tb simple_perceptron/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./simple_perceptron/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
