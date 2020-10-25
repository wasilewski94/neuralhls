############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_perceptron
set_top calcPerceptron
add_files simple_perceptron/hls_weights2.h
add_files simple_perceptron/hls_weights1.h
add_files simple_perceptron/hls_biases.h
add_files simple_perceptron/core.h
add_files simple_perceptron/core.cpp
add_files -tb simple_perceptron/test_core.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb simple_perceptron/hls_input.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "restype"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 0 -vivado_phys_opt none -vivado_report_level 0
config_schedule -effort medium -enable_dsp_full_reg -relax_ii_for_timing -verbose=0
config_compile -name_max_length 80 -no_signed_zeros=0 -pipeline_loops 64 -unsafe_math_optimizations=0
#source "./simple_perceptron/restype/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
