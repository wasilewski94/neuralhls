-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Jul  2 14:23:07 2020
-- Host        : legion running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/wask/workspace/mgr/hls_perceptron/vivado/simple_perceptron/simple_perceptron.srcs/sources_1/bd/design_1/ip/design_1_iobuf_0_2/design_1_iobuf_0_2_sim_netlist.vhdl
-- Design      : design_1_iobuf_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_iobuf_0_2_xil_defaultlib_iobuf is
  port (
    O : out STD_LOGIC;
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    T : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_iobuf_0_2_xil_defaultlib_iobuf : entity is "xil_defaultlib_iobuf";
end design_1_iobuf_0_2_xil_defaultlib_iobuf;

architecture STRUCTURE of design_1_iobuf_0_2_xil_defaultlib_iobuf is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUF_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUF_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUF_inst : label is "AUTO";
  attribute box_type : string;
  attribute box_type of IBUF_inst : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFT_inst : label is "DONT_CARE";
  attribute box_type of OBUFT_inst : label is "PRIMITIVE";
begin
IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IO,
      O => O
    );
OBUFT_inst: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => IO,
      T => T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_iobuf_0_2 is
  port (
    O : out STD_LOGIC;
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    T : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_iobuf_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_iobuf_0_2 : entity is "design_1_iobuf_0_2,iobuf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_iobuf_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_iobuf_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_iobuf_0_2 : entity is "iobuf,Vivado 2019.2";
end design_1_iobuf_0_2;

architecture STRUCTURE of design_1_iobuf_0_2 is
begin
U0: entity work.design_1_iobuf_0_2_xil_defaultlib_iobuf
     port map (
      I => I,
      IO => IO,
      O => O,
      T => T
    );
end STRUCTURE;
