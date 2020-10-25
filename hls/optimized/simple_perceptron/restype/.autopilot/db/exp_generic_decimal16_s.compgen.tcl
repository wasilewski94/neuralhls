# This script segment is generated automatically by AutoPilot

set id 1
set name calcPerceptron_mac_muladd_10ns_10s_13s_19_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 10
set in0_signed 0
set in1_width 10
set in1_signed 1
set in2_width 13
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 19
set exp i0*i1+i2
set arg_lists {i0 {10 0 +} i1 {10 1 +} m {19 1 +} i2 {13 1 +} p {19 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 2
set name calcPerceptron_mul_mul_20ns_7s_26_4_1
set corename simcore_mul
set op mul
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 20
set in0_signed 0
set in1_width 7
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 26
set exp i0*i1
set arg_lists {i0 {20 0 +} i1 {7 1 +} p {26 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 3
set name calcPerceptron_mac_muladd_4ns_5ns_19ns_19_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 4
set in0_signed 0
set in1_width 5
set in1_signed 0
set in2_width 19
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 19
set exp i0*i1+i2
set arg_lists {i0 {4 0 +} i1 {5 0 +} m {9 0 +} i2 {19 0 +} p {19 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 7
set hasByteEnable 0
set MemName exp_generic_decimal16_s_table_exp_Z1_ap_ufixed_14_1_ap_q_mode_5_ap_o_mode_3_0bkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "10000000000000" "10000000010000" "10000000100000" "10000000110000" "10000001000000" "10000001010000" "10000001100000" "10000001110000" "10000010000001" "10000010010001" "10000010100001" "10000010110001" "10000011000010" "10000011010010" "10000011100011" "10000011110011" "10000100000100" "10000100010100" "10000100100101" "10000100110101" "10000101000110" "10000101010110" "10000101100111" "10000101111000" "10000110001001" "10000110011001" "10000110101010" "10000110111011" "10000111001100" "10000111011101" "10000111101110" "10000111111111" "10001000010000" "10001000100001" "10001000110010" "10001001000011" "10001001010100" "10001001100101" "10001001110111" "10001010001000" "10001010011001" "10001010101010" "10001010111100" "10001011001101" "10001011011111" "10001011110000" "10001100000010" "10001100010011" "10001100100101" "10001100110110" "10001101001000" "10001101011010" "10001101101011" "10001101111101" "10001110001111" "10001110100001" "10001110110010" "10001111000100" "10001111010110" "10001111101000" "10001111111010" "10010000001100" "10010000011110" "10010000110000" "10010001000010" "10010001010100" "10010001100111" "10010001111001" "10010010001011" "10010010011101" "10010010110000" "10010011000010" "10010011010100" "10010011100111" "10010011111001" "10010100001100" "10010100011110" "10010100110001" "10010101000100" "10010101010110" "10010101101001" "10010101111100" "10010110001110" "10010110100001" "10010110110100" "10010111000111" "10010111011010" "10010111101101" "10011000000000" "10011000010011" "10011000100110" "10011000111001" "10011001001100" "10011001011111" "10011001110010" "10011010000110" "10011010011001" "10011010101100" "10011011000000" "10011011010011" "10011011100110" "10011011111010" "10011100001101" "10011100100001" "10011100110101" "10011101001000" "10011101011100" "10011101110000" "10011110000011" "10011110010111" "10011110101011" "10011110111111" "10011111010011" "10011111100111" "10011111111011" "10100000001111" "10100000100011" "10100000110111" "10100001001011" "10100001011111" "10100001110011" "10100010000111" "10100010011100" "10100010110000" "10100011000100" "10100011011001" "10100011101101" "10100100000010" "10100100010110" "10100100101011" "10100100111111" "10100101010100" "10100101101001" "10100101111101" "10100110010010" "10100110100111" "10100110111100" "10100111010001" "10100111100110" "10100111111011" "10101000010000" "10101000100101" "10101000111010" "10101001001111" "10101001100100" "10101001111001" "10101010001111" "10101010100100" "10101010111001" "10101011001111" "10101011100100" "10101011111010" "10101100001111" "10101100100101" "10101100111010" "10101101010000" "10101101100101" "10101101111011" "10101110010001" "10101110100111" "10101110111101" "10101111010011" "10101111101000" "10101111111110" "10110000010100" "10110000101011" "10110001000001" "10110001010111" "10110001101101" "10110010000011" "10110010011001" "10110010110000" "10110011000110" "10110011011101" "10110011110011" "10110100001010" "10110100100000" "10110100110111" "10110101001101" "10110101100100" "10110101111011" "10110110010001" "10110110101000" "10110110111111" "10110111010110" "10110111101101" "10111000000100" "10111000011011" "10111000110010" "10111001001001" "10111001100000" "10111001111000" "10111010001111" "10111010100110" "10111010111101" "10111011010101" "10111011101100" "10111100000100" "10111100011011" "10111100110011" "10111101001010" "10111101100010" "10111101111010" "10111110010010" "10111110101001" "10111111000001" "10111111011001" "10111111110001" "11000000001001" "11000000100001" "11000000111001" "11000001010001" "11000001101010" "11000010000010" "11000010011010" "11000010110010" "11000011001011" "11000011100011" "11000011111100" "11000100010100" "11000100101101" "11000101000101" "11000101011110" "11000101110111" "11000110010000" "11000110101000" "11000111000001" "11000111011010" "11000111110011" "11001000001100" "11001000100101" "11001000111110" "11001001010111" "11001001110001" "11001010001010" "11001010100011" "11001010111100" "11001011010110" "11001011101111" "11001100001001" "11001100100010" "11001100111100" "11001101010110" "11001101101111" "11001110001001" "11001110100011" "11001110111101" "11001111010110" "11001111110000" "11010000001010" "11010000100100" "11010000111111" "11010001011001" "11010001110011" "11010010001101" "11010010100111" "01001101101000" "01001101110010" "01001101111100" "01001110000101" "01001110001111" "01001110011001" "01001110100011" "01001110101101" "01001110110110" "01001111000000" "01001111001010" "01001111010100" "01001111011110" "01001111101000" "01001111110010" "01001111111100" "01010000000110" "01010000010000" "01010000011010" "01010000100100" "01010000101110" "01010000111000" "01010001000010" "01010001001100" "01010001010111" "01010001100001" "01010001101011" "01010001110101" "01010001111111" "01010010001010" "01010010010100" "01010010011110" "01010010101001" "01010010110011" "01010010111101" "01010011001000" "01010011010010" "01010011011101" "01010011100111" "01010011110001" "01010011111100" "01010100000110" "01010100010001" "01010100011100" "01010100100110" "01010100110001" "01010100111011" "01010101000110" "01010101010001" "01010101011011" "01010101100110" "01010101110001" "01010101111011" "01010110000110" "01010110010001" "01010110011100" "01010110100110" "01010110110001" "01010110111100" "01010111000111" "01010111010010" "01010111011101" "01010111101000" "01010111110011" "01010111111110" "01011000001001" "01011000010100" "01011000011111" "01011000101010" "01011000110101" "01011001000000" "01011001001011" "01011001010110" "01011001100010" "01011001101101" "01011001111000" "01011010000011" "01011010001111" "01011010011010" "01011010100101" "01011010110000" "01011010111100" "01011011000111" "01011011010011" "01011011011110" "01011011101010" "01011011110101" "01011100000000" "01011100001100" "01011100011000" "01011100100011" "01011100101111" "01011100111010" "01011101000110" "01011101010010" "01011101011101" "01011101101001" "01011101110101" "01011110000000" "01011110001100" "01011110011000" "01011110100100" "01011110110000" "01011110111011" "01011111000111" "01011111010011" "01011111011111" "01011111101011" "01011111110111" "01100000000011" "01100000001111" "01100000011011" "01100000100111" "01100000110011" "01100000111111" "01100001001011" "01100001011000" "01100001100100" "01100001110000" "01100001111100" "01100010001001" "01100010010101" "01100010100001" "01100010101101" "01100010111010" "01100011000110" "01100011010011" "01100011011111" "01100011101011" "01100011111000" "01100100000100" "01100100010001" "01100100011101" "01100100101010" "01100100110111" "01100101000011" "01100101010000" "01100101011101" "01100101101001" "01100101110110" "01100110000011" "01100110010000" "01100110011100" "01100110101001" "01100110110110" "01100111000011" "01100111010000" "01100111011101" "01100111101010" "01100111110111" "01101000000100" "01101000010001" "01101000011110" "01101000101011" "01101000111000" "01101001000101" "01101001010010" "01101001011111" "01101001101100" "01101001111010" "01101010000111" "01101010010100" "01101010100001" "01101010101111" "01101010111100" "01101011001010" "01101011010111" "01101011100100" "01101011110010" "01101011111111" "01101100001101" "01101100011010" "01101100101000" "01101100110110" "01101101000011" "01101101010001" "01101101011110" "01101101101100" "01101101111010" "01101110001000" "01101110010101" "01101110100011" "01101110110001" "01101110111111" "01101111001101" "01101111011011" "01101111101001" "01101111110111" "01110000000101" "01110000010011" "01110000100001" "01110000101111" "01110000111101" "01110001001011" "01110001011001" "01110001100111" "01110001110110" "01110010000100" "01110010010010" "01110010100000" "01110010101111" "01110010111101" "01110011001100" "01110011011010" "01110011101000" "01110011110111" "01110100000101" "01110100010100" "01110100100010" "01110100110001" "01110101000000" "01110101001110" "01110101011101" "01110101101100" "01110101111010" "01110110001001" "01110110011000" "01110110100111" "01110110110110" "01110111000100" "01110111010011" "01110111100010" "01110111110001" "01111000000000" "01111000001111" "01111000011110" "01111000101101" "01111000111100" "01111001001100" "01111001011011" "01111001101010" "01111001111001" "01111010001000" "01111010011000" "01111010100111" "01111010110110" "01111011000110" "01111011010101" "01111011100101" "01111011110100" "01111100000011" "01111100010011" "01111100100011" "01111100110010" "01111101000010" "01111101010001" "01111101100001" "01111101110001" "01111110000000" "01111110010000" "01111110100000" "01111110110000" "01111111000000" "01111111010000" "01111111100000" "01111111110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x \
    op interface \
    ports { x { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 16 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


