// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of neurons
//        bit 31~0 - neurons[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of w_offset
//        bit 31~0 - w_offset[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of b_offset
//        bit 31~0 - b_offset[31:0] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALCPERCEPTRON_CTRL_BUS_ADDR_AP_CTRL       0x00
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_GIE           0x04
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_IER           0x08
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_ISR           0x0c
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_INPUTS_DATA   0x10
#define XCALCPERCEPTRON_CTRL_BUS_BITS_INPUTS_DATA   32
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_NEURONS_DATA  0x18
#define XCALCPERCEPTRON_CTRL_BUS_BITS_NEURONS_DATA  32
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_W_OFFSET_DATA 0x20
#define XCALCPERCEPTRON_CTRL_BUS_BITS_W_OFFSET_DATA 32
#define XCALCPERCEPTRON_CTRL_BUS_ADDR_B_OFFSET_DATA 0x28
#define XCALCPERCEPTRON_CTRL_BUS_BITS_B_OFFSET_DATA 32

