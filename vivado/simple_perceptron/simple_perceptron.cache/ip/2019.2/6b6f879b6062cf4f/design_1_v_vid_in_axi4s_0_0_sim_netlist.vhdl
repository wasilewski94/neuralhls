-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Sep  4 19:48:21 2020
-- Host        : legion running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_vid_in_axi4s_0_0_sim_netlist.vhdl
-- Design      : design_1_v_vid_in_axi4s_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_formatter is
  port (
    de_1_reg_0 : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 10 downto 0 );
    de_3 : out STD_LOGIC;
    vtd_locked_reg_0 : out STD_LOGIC;
    de_3_reg_0 : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    axis_enable : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_formatter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_formatter is
  signal data_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^de_1_reg_0\ : STD_LOGIC;
  signal de_2 : STD_LOGIC;
  signal de_falling : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal field_id_2 : STD_LOGIC;
  signal sof : STD_LOGIC;
  signal sof0 : STD_LOGIC;
  signal v_blank_sync_1 : STD_LOGIC;
  signal v_blank_sync_2 : STD_LOGIC;
  signal vert_blanking_intvl_i_1_n_0 : STD_LOGIC;
  signal vert_blanking_intvl_reg_n_0 : STD_LOGIC;
  signal \^vtd_field_id\ : STD_LOGIC;
  signal vtd_locked_i_1_n_0 : STD_LOGIC;
  signal \^vtd_locked_reg_0\ : STD_LOGIC;
  signal \^vtd_vblank\ : STD_LOGIC;
  signal \^vtd_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eol_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sof_i_1 : label is "soft_lutpair11";
begin
  de_1_reg_0 <= \^de_1_reg_0\;
  din(10 downto 0) <= \^din\(10 downto 0);
  vtd_field_id <= \^vtd_field_id\;
  vtd_locked_reg_0 <= \^vtd_locked_reg_0\;
  vtd_vblank <= \^vtd_vblank\;
  vtd_vsync <= \^vtd_vsync\;
\data_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(0),
      Q => data_1(0),
      R => de_3_reg_0
    );
\data_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(1),
      Q => data_1(1),
      R => de_3_reg_0
    );
\data_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(2),
      Q => data_1(2),
      R => de_3_reg_0
    );
\data_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(3),
      Q => data_1(3),
      R => de_3_reg_0
    );
\data_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(4),
      Q => data_1(4),
      R => de_3_reg_0
    );
\data_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(5),
      Q => data_1(5),
      R => de_3_reg_0
    );
\data_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(6),
      Q => data_1(6),
      R => de_3_reg_0
    );
\data_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_data(7),
      Q => data_1(7),
      R => de_3_reg_0
    );
\data_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(0),
      Q => data_2(0),
      R => de_3_reg_0
    );
\data_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(1),
      Q => data_2(1),
      R => de_3_reg_0
    );
\data_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(2),
      Q => data_2(2),
      R => de_3_reg_0
    );
\data_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(3),
      Q => data_2(3),
      R => de_3_reg_0
    );
\data_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(4),
      Q => data_2(4),
      R => de_3_reg_0
    );
\data_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(5),
      Q => data_2(5),
      R => de_3_reg_0
    );
\data_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(6),
      Q => data_2(6),
      R => de_3_reg_0
    );
\data_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_1(7),
      Q => data_2(7),
      R => de_3_reg_0
    );
\data_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(0),
      Q => \^din\(0),
      R => de_3_reg_0
    );
\data_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(1),
      Q => \^din\(1),
      R => de_3_reg_0
    );
\data_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(2),
      Q => \^din\(2),
      R => de_3_reg_0
    );
\data_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(3),
      Q => \^din\(3),
      R => de_3_reg_0
    );
\data_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(4),
      Q => \^din\(4),
      R => de_3_reg_0
    );
\data_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(5),
      Q => \^din\(5),
      R => de_3_reg_0
    );
\data_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(6),
      Q => \^din\(6),
      R => de_3_reg_0
    );
\data_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => data_2(7),
      Q => \^din\(7),
      R => de_3_reg_0
    );
de_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_active_video,
      Q => \^de_1_reg_0\,
      R => de_3_reg_0
    );
de_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => \^de_1_reg_0\,
      Q => de_2,
      R => de_3_reg_0
    );
de_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => de_2,
      Q => de_3,
      R => de_3_reg_0
    );
eol_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => de_2,
      I1 => \^de_1_reg_0\,
      O => de_falling
    );
eol_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => de_falling,
      Q => \^din\(8),
      R => de_3_reg_0
    );
field_id_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_field_id,
      Q => \^vtd_field_id\,
      R => de_3_reg_0
    );
field_id_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => \^vtd_field_id\,
      Q => field_id_2,
      R => de_3_reg_0
    );
field_id_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => field_id_2,
      Q => \^din\(10),
      R => de_3_reg_0
    );
hblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_hblank,
      Q => vtd_hblank,
      R => de_3_reg_0
    );
hsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_hsync,
      Q => vtd_hsync,
      R => de_3_reg_0
    );
sof_1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => sof,
      Q => \^din\(9),
      R => de_3_reg_0
    );
sof_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => de_2,
      I1 => \^de_1_reg_0\,
      I2 => vert_blanking_intvl_reg_n_0,
      O => sof0
    );
sof_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => sof0,
      Q => sof,
      R => de_3_reg_0
    );
v_blank_sync_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^vtd_vblank\,
      I1 => \^vtd_vsync\,
      O => v_blank_sync_1
    );
v_blank_sync_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => v_blank_sync_1,
      Q => v_blank_sync_2,
      R => de_3_reg_0
    );
vblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_vblank,
      Q => \^vtd_vblank\,
      R => de_3_reg_0
    );
vert_blanking_intvl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0FFB0F0F0F0F0"
    )
        port map (
      I0 => de_2,
      I1 => \^de_1_reg_0\,
      I2 => vert_blanking_intvl_reg_n_0,
      I3 => v_blank_sync_1,
      I4 => v_blank_sync_2,
      I5 => vid_io_in_ce,
      O => vert_blanking_intvl_i_1_n_0
    );
vert_blanking_intvl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vert_blanking_intvl_i_1_n_0,
      Q => vert_blanking_intvl_reg_n_0,
      R => '0'
    );
vsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_in_ce,
      D => vid_vsync,
      Q => \^vtd_vsync\,
      R => de_3_reg_0
    );
vtd_locked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEA0000"
    )
        port map (
      I0 => \^vtd_locked_reg_0\,
      I1 => sof,
      I2 => vid_io_in_ce,
      I3 => \^din\(9),
      I4 => axis_enable,
      I5 => de_3_reg_0,
      O => vtd_locked_i_1_n_0
    );
vtd_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => vtd_locked_i_1_n_0,
      Q => \^vtd_locked_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[1]_0\(0) <= \^count_value_i_reg[1]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0609060A0A050005"
    )
        port map (
      I0 => count_value_i(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[1]_1\(0),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[1]_2\(0),
      I5 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222202"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_1\(0),
      I2 => ram_empty_i,
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => \count_value_i_reg[1]_2\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFD5BFF5402A400A"
    )
        port map (
      I0 => count_value_i(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[1]_2\(1),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[1]_2\(0),
      I5 => \^count_value_i_reg[1]_0\(0),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => count_value_i(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\(0),
      R => '0'
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      O => \^di\(0)
    );
\gwdc.wr_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => Q(1),
      I2 => \grdc.rd_data_count_i_reg[3]\(1),
      I3 => \^count_value_i_reg[1]_0\(0),
      O => S(1)
    );
\gwdc.wr_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_value_i_reg[8]_1\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \grdc.rd_data_count_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[10]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[10]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i_reg[10]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[10]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[10]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[10]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  \count_value_i_reg[10]_0\(10 downto 0) <= \^count_value_i_reg[10]_0\(10 downto 0);
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCE3331"
    )
        port map (
      I0 => Q(1),
      I1 => ram_empty_i,
      I2 => Q(0),
      I3 => rd_en,
      I4 => \^count_value_i_reg[10]_0\(0),
      O => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^count_value_i_reg[10]_0\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[10]_i_1__0_n_5\,
      Q => \^count_value_i_reg[10]_0\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[10]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[10]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^count_value_i_reg[10]_0\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^count_value_i_reg[10]_0\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^count_value_i_reg[10]_0\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^count_value_i_reg[10]_0\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^count_value_i_reg[10]_0\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^count_value_i_reg[10]_0\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^count_value_i_reg[10]_0\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^count_value_i_reg[10]_0\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^count_value_i_reg[10]_0\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^count_value_i_reg[10]_0\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^count_value_i_reg[10]_0\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[10]_i_1__0_n_7\,
      Q => \^count_value_i_reg[10]_0\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^e\(0),
      D => \count_value_i_reg[10]_i_1__0_n_6\,
      Q => \^count_value_i_reg[10]_0\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(8),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(8),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => DI(0),
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3_n_0\,
      DI(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4_n_0\,
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5_n_0\,
      O(3 downto 0) => \count_value_i_reg[8]_1\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_7_n_0\,
      S(1 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(1 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3_n_0\,
      DI(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4_n_0\,
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5_n_0\,
      O(3 downto 0) => \count_value_i_reg[8]_1\(7 downto 4),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_2_n_0\,
      O(3 downto 2) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \count_value_i_reg[8]_1\(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]\(0),
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(8),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(6),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(7),
      I3 => \^count_value_i_reg[10]_0\(8),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(1),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(2),
      I3 => \^count_value_i_reg[10]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(0),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(1),
      I3 => \^count_value_i_reg[10]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(5),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(6),
      I3 => \^count_value_i_reg[10]_0\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(4),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(5),
      I3 => \^count_value_i_reg[10]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(4),
      I3 => \^count_value_i_reg[10]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(2),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(3),
      I3 => \^count_value_i_reg[10]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\,
      O(3 downto 2) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\,
      DI(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      DI(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3331"
    )
        port map (
      I0 => Q(1),
      I1 => ram_empty_i,
      I2 => Q(0),
      I3 => rd_en,
      O => \^e\(0)
    );
\gwdc.wr_data_count_i[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(8),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(7),
      O => \gwdc.wr_data_count_i[10]_i_3_n_0\
    );
\gwdc.wr_data_count_i[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(8),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(7),
      I2 => \^count_value_i_reg[10]_0\(9),
      I3 => \grdc.rd_data_count_i_reg[10]_1\(8),
      O => \gwdc.wr_data_count_i[10]_i_5_n_0\
    );
\gwdc.wr_data_count_i[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(6),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(7),
      I3 => \^count_value_i_reg[10]_0\(8),
      O => \gwdc.wr_data_count_i[10]_i_6_n_0\
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(2),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(1),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(1),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(2),
      I3 => \^count_value_i_reg[10]_0\(3),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[3]_0\(0),
      I1 => \^count_value_i_reg[10]_0\(1),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(0),
      I3 => \grdc.rd_data_count_i_reg[10]_1\(1),
      I4 => \^count_value_i_reg[10]_0\(2),
      O => \gwdc.wr_data_count_i[3]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(7),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(6),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(5),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(4),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(3),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(6),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(5),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(6),
      I3 => \^count_value_i_reg[10]_0\(7),
      O => \gwdc.wr_data_count_i[7]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(5),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(4),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(5),
      I3 => \^count_value_i_reg[10]_0\(6),
      O => \gwdc.wr_data_count_i[7]_i_7_n_0\
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(4),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(3),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(4),
      I3 => \^count_value_i_reg[10]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_8_n_0\
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[10]_0\(3),
      I1 => \grdc.rd_data_count_i_reg[10]_1\(2),
      I2 => \grdc.rd_data_count_i_reg[10]_1\(3),
      I3 => \^count_value_i_reg[10]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_9_n_0\
    );
\gwdc.wr_data_count_i_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gwdc.wr_data_count_i_reg[10]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \grdc.rd_data_count_i_reg[10]\(0),
      DI(0) => \gwdc.wr_data_count_i[10]_i_3_n_0\,
      O(3) => \NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \count_value_i_reg[8]_0\(10 downto 8),
      S(3) => '0',
      S(2) => \grdc.rd_data_count_i_reg[10]_0\(0),
      S(1) => \gwdc.wr_data_count_i[10]_i_5_n_0\,
      S(0) => \gwdc.wr_data_count_i[10]_i_6_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      DI(1 downto 0) => DI(1 downto 0),
      O(3 downto 0) => \count_value_i_reg[8]_0\(3 downto 0),
      S(3) => \gwdc.wr_data_count_i[3]_i_5_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => \grdc.rd_data_count_i_reg[3]\(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => \count_value_i_reg[8]_0\(7 downto 4),
      S(3) => \gwdc.wr_data_count_i[7]_i_6_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_7_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_8_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg_1\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_5\,
      Q => \count_value_i_reg_n_0_[10]\,
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1_n_5\,
      O(1) => \count_value_i_reg[10]_i_1_n_6\,
      O(0) => \count_value_i_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2) => \count_value_i_reg_n_0_[10]\,
      S(1 downto 0) => \^q\(9 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DI(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[10]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[10]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[10]\(9),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[10]\(8),
      I2 => \grdc.rd_data_count_i_reg[10]\(6),
      I3 => \^q\(6),
      I4 => \grdc.rd_data_count_i_reg[10]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[10]\(5),
      I2 => \grdc.rd_data_count_i_reg[10]\(3),
      I3 => \^q\(3),
      I4 => \grdc.rd_data_count_i_reg[10]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[10]\(2),
      I2 => \grdc.rd_data_count_i_reg[10]\(1),
      I3 => \^q\(1),
      I4 => \grdc.rd_data_count_i_reg[10]\(0),
      I5 => \^q\(0),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC4444"
    )
        port map (
      I0 => \^co\(0),
      I1 => ram_empty_i,
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I3 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(0),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_1\,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(0),
      I2 => \^q\(7),
      I3 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(1),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(2),
      I5 => \^q\(8),
      O => S(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[10]\(1),
      O => \count_value_i_reg[1]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[10]\(9),
      O => \count_value_i_reg[9]_1\(0)
    );
\gwdc.wr_data_count_i[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[10]\(8),
      O => \count_value_i_reg[8]_0\(0)
    );
\gwdc.wr_data_count_i[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[10]\(9),
      I2 => \grdc.rd_data_count_i_reg[10]\(10),
      I3 => \count_value_i_reg_n_0_[10]\,
      O => \count_value_i_reg[9]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair2";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\;
  Q(2 downto 0) <= \^q\(2 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5559"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666A6666"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => \count_value_i_reg[1]_0\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\,
      I3 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\,
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[9]_i_2__0_n_0\,
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg_n_0_[5]\,
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(0),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \count_value_i_reg_n_0_[5]\,
      I4 => \^q\(1),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[9]\,
      I1 => \^q\(1),
      I2 => \count_value_i_reg_n_0_[5]\,
      I3 => \count_value_i[9]_i_2__0_n_0\,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[2]\,
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[9]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => ram_empty_i,
      I3 => \count_value_i_reg[1]_0\(1),
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[0]\
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[9]\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(3),
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(4),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(1),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(2),
      I3 => \count_value_i_reg_n_0_[2]\,
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\,
      CO(1) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      S(2) => S(0),
      S(1) => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      S(0) => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair5";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I3 => \^q\(0),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \^q\(1),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2_n_0\,
      I4 => \^q\(1),
      I5 => \^q\(4),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => rst_d1,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I4 => wr_en,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(5),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[9]\,
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \count_value_i[9]_i_2_n_0\,
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I4 => \count_value_i_reg_n_0_[0]\,
      I5 => \^q\(1),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[9]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[9]\,
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F020FF20"
    )
        port map (
      I0 => going_full1,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I4 => CO(0),
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[9]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8),
      I3 => \^q\(7),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6),
      I5 => \^q\(5),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4),
      I5 => \^q\(3),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_full1,
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8),
      I2 => \count_value_i_reg_n_0_[9]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9),
      O => \count_value_i_reg[8]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF0B40F440F4BF0B"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      I4 => \^q\(0),
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      O => S(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_reg_0 : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]_0\ : out STD_LOGIC;
    d_out_reg_1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^d_out_reg_0\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair4";
begin
  d_out_reg_0 <= \^d_out_reg_0\;
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => \^d_out_reg_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \^d_out_reg_0\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0\(0),
      O => \gen_fwft.empty_fwft_i_reg\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0F00000000"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\(0),
      I2 => ram_empty_i,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\(1),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\,
      I5 => \^d_out_reg_0\,
      O => \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555015500"
    )
        port map (
      I0 => \^d_out_reg_0\,
      I1 => rd_en,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\(0),
      I3 => ram_empty_i,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\(1),
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\,
      O => \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]_0\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => d_out_reg_1
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[9]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : in STD_LOGIC;
    write_only_q : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clr_full\ : STD_LOGIC;
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair7";
begin
  Q(0) <= \^q\(0);
  clr_full <= \^clr_full\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[9]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => DI(0)
    );
\count_value_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[9]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      I4 => \count_value_i_reg[3]\(0),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => rst_d1,
      I2 => rst,
      O => \^clr_full\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCACE"
    )
        port map (
      I0 => read_only_q,
      I1 => prog_empty,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\,
      I3 => write_only_q,
      I4 => \^q\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51551000"
    )
        port map (
      I0 => \^clr_full\,
      I1 => ram_rd_en_pf_q,
      I2 => ram_wr_en_pf_q,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[9]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\(0),
      I2 => \grdc.rd_data_count_i_reg[0]\(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rd_en,
      I1 => \guf.underflow_i_reg\,
      I2 => \^q\(0),
      O => underflow_i0
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 10 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11264;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d11";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 10;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d11";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 10;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 11264;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 10;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 10;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addra(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => addrb(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 11) => B"00000",
      DIADI(10 downto 0) => dina(10 downto 0),
      DIBDI(15 downto 0) => B"0000011111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 11) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(15 downto 11),
      DOBDO(10 downto 0) => doutb(10 downto 0),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single is
  port (
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single is
  signal xpm_cdc_single_inst_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
xpm_cdc_single_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => aclk,
      dest_out => xpm_cdc_single_inst_n_0,
      src_clk => '0',
      src_in => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single__xdcDup__1\ is
  port (
    src_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single__xdcDup__1\ : entity is "v_vid_in_axi4s_v4_0_9_cdc_single";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single__xdcDup__1\ is
  signal xpm_cdc_single_inst_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\
     port map (
      dest_clk => aclk,
      dest_out => xpm_cdc_single_inst_n_0,
      src_clk => '0',
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1024;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11264;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1019;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1019;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdp_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal rst_d1_inst_n_4 : STD_LOGIC;
  signal rst_d1_inst_n_5 : STD_LOGIC;
  signal rst_d1_inst_n_6 : STD_LOGIC;
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_12 : STD_LOGIC;
  signal wrp_inst_n_13 : STD_LOGIC;
  signal wrp_inst_n_14 : STD_LOGIC;
  signal wrp_inst_n_15 : STD_LOGIC;
  signal wrp_inst_n_16 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_11 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_7 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_8 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 11264;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7A"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF80"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.rdpp1_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \count_value_i_reg[1]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[3]\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrpp1_inst_n_11,
      Q => \^full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(8),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(9),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_3,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_4,
      Q => read_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_5,
      Q => write_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(10),
      Q => diff_pntr_pf_q(10),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => diff_pntr_pf_q(3),
      I1 => diff_pntr_pf_q(9),
      I2 => diff_pntr_pf_q(2),
      I3 => diff_pntr_pf_q(6),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => diff_pntr_pf_q(4),
      I1 => diff_pntr_pf_q(5),
      I2 => diff_pntr_pf_q(10),
      I3 => diff_pntr_pf_q(8),
      I4 => diff_pntr_pf_q(1),
      I5 => diff_pntr_pf_q(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_7,
      Q => \^prog_full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_rd_en_pf,
      Q => ram_rd_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(9 downto 0) => wr_pntr_ext(9 downto 0),
      addrb(9 downto 0) => rd_pntr_ext(9 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(10 downto 0) => din(10 downto 0),
      dinb(10 downto 0) => B"00000000000",
      douta(10 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(10 downto 0),
      doutb(10 downto 0) => dout(10 downto 0),
      ena => '0',
      enb => ram_rd_en_pf,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_pf,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_6,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => rd_data_count(10),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => wr_data_count(10),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => xpm_fifo_rst_inst_n_1
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      D(9 downto 0) => diff_pntr_pf_q0(10 downto 1),
      DI(1) => \gen_fwft.rdpp1_inst_n_2\,
      DI(0) => wr_pntr_ext(0),
      E(0) => ram_rd_en_pf,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      S(1) => wrpp1_inst_n_9,
      S(0) => wrpp1_inst_n_10,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[10]_0\(10) => rdp_inst_n_1,
      \count_value_i_reg[10]_0\(9 downto 0) => rd_pntr_ext(9 downto 0),
      \count_value_i_reg[8]_0\(10 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(10 downto 0),
      \count_value_i_reg[8]_1\(9 downto 0) => diff_pntr_pe(9 downto 0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(1) => wrp_inst_n_15,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(0) => rst_d1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]\(0) => wrp_inst_n_16,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(7) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(6) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(5) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(4) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(3) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(2) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(1) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_0\(0) => wrpp1_inst_n_7,
      \grdc.rd_data_count_i_reg[10]\(0) => wrp_inst_n_13,
      \grdc.rd_data_count_i_reg[10]_0\(0) => wrp_inst_n_14,
      \grdc.rd_data_count_i_reg[10]_1\(8 downto 0) => wr_pntr_ext(9 downto 1),
      \grdc.rd_data_count_i_reg[3]\(1) => \gen_fwft.rdpp1_inst_n_0\,
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[3]_0\(0) => count_value_i(1),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      CO(0) => going_empty1,
      E(0) => ram_rd_en_pf,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      S(0) => wrp_inst_n_12,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6) => wr_pntr_ext(9),
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5 downto 0) => wr_pntr_ext(5 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ => rst_d1_inst_n_4,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]_0\ => rst_d1_inst_n_5,
      Q(0) => xpm_fifo_rst_inst_n_1,
      d_out_reg_0 => rst_d1_inst_n_3,
      d_out_reg_1 => rst_d1_inst_n_6,
      \gen_fwft.empty_fwft_i_reg\(0) => rst_d1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\ => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0\(0) => rd_pntr_ext(0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\ => \^empty\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gof.overflow_i_reg\ => \^full\,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\
     port map (
      CO(0) => leaving_empty0,
      DI(0) => xpm_fifo_rst_inst_n_6,
      E(0) => ram_wr_en_pf,
      Q(9 downto 0) => wr_pntr_ext(9 downto 0),
      S(0) => wrp_inst_n_12,
      \count_value_i_reg[10]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(0) => wrp_inst_n_15,
      \count_value_i_reg[3]_0\(0) => xpm_fifo_rst_inst_n_8,
      \count_value_i_reg[8]_0\(0) => wrp_inst_n_13,
      \count_value_i_reg[9]_0\(0) => wrp_inst_n_14,
      \count_value_i_reg[9]_1\(0) => wrp_inst_n_16,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(0) => going_empty1,
      \gen_pntr_flags_cc.ram_empty_i_reg_1\ => rst_d1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(2) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(1) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2\(0) => rdpp1_inst_n_3,
      \grdc.rd_data_count_i_reg[10]\(10) => rdp_inst_n_1,
      \grdc.rd_data_count_i_reg[10]\(9 downto 0) => rd_pntr_ext(9 downto 0),
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      wr_clk => wr_clk
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\
     port map (
      CO(0) => leaving_empty0,
      E(0) => ram_wr_en_pf,
      Q(7) => wrpp1_inst_n_0,
      Q(6) => wrpp1_inst_n_1,
      Q(5) => wrpp1_inst_n_2,
      Q(4) => wrpp1_inst_n_3,
      Q(3) => wrpp1_inst_n_4,
      Q(2) => wrpp1_inst_n_5,
      Q(1) => wrpp1_inst_n_6,
      Q(0) => wrpp1_inst_n_7,
      S(1) => wrpp1_inst_n_9,
      S(0) => wrpp1_inst_n_10,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[8]_0\(0) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => wrpp1_inst_n_11,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rst_d1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \^full\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\ => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9 downto 0) => rd_pntr_ext(9 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      DI(0) => xpm_fifo_rst_inst_n_6,
      E(0) => ram_wr_en_pf,
      Q(0) => xpm_fifo_rst_inst_n_1,
      SR(0) => \grdc.rd_data_count_i0\,
      clr_full => clr_full,
      \count_value_i_reg[3]\(0) => wr_pntr_ext(0),
      \count_value_i_reg[9]\ => \^full\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0) => xpm_fifo_rst_inst_n_8,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\ => xpm_fifo_rst_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\ => xpm_fifo_rst_inst_n_7,
      \grdc.rd_data_count_i_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \guf.underflow_i_reg\ => \^empty\,
      prog_empty => \^prog_empty\,
      prog_full => \^prog_full\,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      rd_en => rd_en,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  signal \<const0>\ : STD_LOGIC;
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 1024;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 11264;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 1024;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 1019;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 1019;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 11;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 11;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 10;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 4;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \^rd_rst_busy\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => dout(10 downto 0),
      empty => empty,
      full => full,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => '0',
      rd_data_count(10 downto 0) => rd_data_count(10 downto 0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => sleep,
      underflow => underflow,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(10 downto 0) => wr_data_count(10 downto 0),
      wr_en => wr_en,
      wr_rst_busy => \^rd_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_fifo_sync is
  port (
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    vid_reset : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[1]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[2]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[3]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[4]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[5]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[6]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[7]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[8]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[9]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[10]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[11]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[12]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[13]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[14]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_0\ : out STD_LOGIC;
    \gof.overflow_i_reg\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \vid_reset_pulse_cnt_reg[1]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_1\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_2\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_3\ : in STD_LOGIC;
    src_in : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[2]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[3]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[4]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[5]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[6]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[7]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[8]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[9]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[10]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[11]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[12]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[13]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[14]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_4\ : in STD_LOGIC;
    vid_vsync_dly : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    aclken : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_fifo_sync is
  signal XPM_FIFO_SYNC_INST_n_0 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_10 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_11 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_12 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_2 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_3 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_30 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_31 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_32 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_33 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_34 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_35 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_36 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_37 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_38 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_39 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_4 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_40 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_42 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_5 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_6 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_7 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_8 : STD_LOGIC;
  signal XPM_FIFO_SYNC_INST_n_9 : STD_LOGIC;
  signal empty_i : STD_LOGIC;
  signal \^overflow\ : STD_LOGIC;
  signal rd_en_i : STD_LOGIC;
  signal \^vid_reset\ : STD_LOGIC;
  signal vid_reset_pulse_cnt0 : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED : STD_LOGIC;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of XPM_FIFO_SYNC_INST : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of XPM_FIFO_SYNC_INST : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of XPM_FIFO_SYNC_INST : label is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of XPM_FIFO_SYNC_INST : label is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of XPM_FIFO_SYNC_INST : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of XPM_FIFO_SYNC_INST : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of XPM_FIFO_SYNC_INST : label is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of XPM_FIFO_SYNC_INST : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of XPM_FIFO_SYNC_INST : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of XPM_FIFO_SYNC_INST : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of XPM_FIFO_SYNC_INST : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of XPM_FIFO_SYNC_INST : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of XPM_FIFO_SYNC_INST : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of XPM_FIFO_SYNC_INST : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of XPM_FIFO_SYNC_INST : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of XPM_FIFO_SYNC_INST : label is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of XPM_FIFO_SYNC_INST : label is 11;
  attribute READ_MODE : string;
  attribute READ_MODE of XPM_FIFO_SYNC_INST : label is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of XPM_FIFO_SYNC_INST : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of XPM_FIFO_SYNC_INST : label is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of XPM_FIFO_SYNC_INST : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of XPM_FIFO_SYNC_INST : label is 11;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of XPM_FIFO_SYNC_INST : label is 11;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of XPM_FIFO_SYNC_INST : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of XPM_FIFO_SYNC_INST_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of de_1_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of m_axis_video_tvalid_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vid_reset_pulse_cnt[15]_i_5\ : label is "soft_lutpair10";
begin
  overflow <= \^overflow\;
  vid_reset <= \^vid_reset\;
XPM_FIFO_SYNC_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
     port map (
      almost_empty => NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED,
      almost_full => NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED,
      data_valid => NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED,
      dbiterr => NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => dout(10 downto 0),
      empty => empty_i,
      full => XPM_FIFO_SYNC_INST_n_0,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \^overflow\,
      prog_empty => NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED,
      prog_full => NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED,
      rd_data_count(10) => XPM_FIFO_SYNC_INST_n_30,
      rd_data_count(9) => XPM_FIFO_SYNC_INST_n_31,
      rd_data_count(8) => XPM_FIFO_SYNC_INST_n_32,
      rd_data_count(7) => XPM_FIFO_SYNC_INST_n_33,
      rd_data_count(6) => XPM_FIFO_SYNC_INST_n_34,
      rd_data_count(5) => XPM_FIFO_SYNC_INST_n_35,
      rd_data_count(4) => XPM_FIFO_SYNC_INST_n_36,
      rd_data_count(3) => XPM_FIFO_SYNC_INST_n_37,
      rd_data_count(2) => XPM_FIFO_SYNC_INST_n_38,
      rd_data_count(1) => XPM_FIFO_SYNC_INST_n_39,
      rd_data_count(0) => XPM_FIFO_SYNC_INST_n_40,
      rd_en => rd_en_i,
      rd_rst_busy => XPM_FIFO_SYNC_INST_n_42,
      rst => \^vid_reset\,
      sbiterr => NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => underflow,
      wr_ack => NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED,
      wr_clk => aclk,
      wr_data_count(10) => XPM_FIFO_SYNC_INST_n_2,
      wr_data_count(9) => XPM_FIFO_SYNC_INST_n_3,
      wr_data_count(8) => XPM_FIFO_SYNC_INST_n_4,
      wr_data_count(7) => XPM_FIFO_SYNC_INST_n_5,
      wr_data_count(6) => XPM_FIFO_SYNC_INST_n_6,
      wr_data_count(5) => XPM_FIFO_SYNC_INST_n_7,
      wr_data_count(4) => XPM_FIFO_SYNC_INST_n_8,
      wr_data_count(3) => XPM_FIFO_SYNC_INST_n_9,
      wr_data_count(2) => XPM_FIFO_SYNC_INST_n_10,
      wr_data_count(1) => XPM_FIFO_SYNC_INST_n_11,
      wr_data_count(0) => XPM_FIFO_SYNC_INST_n_12,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
XPM_FIFO_SYNC_INST_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^vid_reset\
    );
XPM_FIFO_SYNC_INST_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => empty_i,
      I2 => aclken,
      O => rd_en_i
    );
de_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^overflow\,
      I1 => aresetn,
      O => \gof.overflow_i_reg\
    );
m_axis_video_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_i,
      O => m_axis_video_tvalid
    );
\vid_reset_pulse_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[1]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => src_in,
      O => \vid_reset_pulse_cnt_reg[1]\
    );
\vid_reset_pulse_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[11]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[10]_0\,
      O => \vid_reset_pulse_cnt_reg[11]\
    );
\vid_reset_pulse_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[12]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[11]_0\,
      O => \vid_reset_pulse_cnt_reg[12]\
    );
\vid_reset_pulse_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[13]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[12]_0\,
      O => \vid_reset_pulse_cnt_reg[13]\
    );
\vid_reset_pulse_cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[14]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[13]_0\,
      O => \vid_reset_pulse_cnt_reg[14]\
    );
\vid_reset_pulse_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[15]_4\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[14]_0\,
      O => \vid_reset_pulse_cnt_reg[15]\
    );
\vid_reset_pulse_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF01FF00"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[15]_1\,
      I1 => \vid_reset_pulse_cnt_reg[15]_2\,
      I2 => \vid_reset_pulse_cnt_reg[15]_3\,
      I3 => vid_reset_pulse_cnt0,
      I4 => \vid_reset_pulse_cnt_reg[15]_4\,
      O => \vid_reset_pulse_cnt_reg[15]_0\
    );
\vid_reset_pulse_cnt[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^overflow\,
      I1 => vid_vsync_dly,
      I2 => vid_vsync,
      O => vid_reset_pulse_cnt0
    );
\vid_reset_pulse_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[2]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[1]_0\,
      O => \vid_reset_pulse_cnt_reg[2]\
    );
\vid_reset_pulse_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[3]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[2]_0\,
      O => \vid_reset_pulse_cnt_reg[3]\
    );
\vid_reset_pulse_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[4]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[3]_0\,
      O => \vid_reset_pulse_cnt_reg[4]\
    );
\vid_reset_pulse_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[5]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[4]_0\,
      O => \vid_reset_pulse_cnt_reg[5]\
    );
\vid_reset_pulse_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[6]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[5]_0\,
      O => \vid_reset_pulse_cnt_reg[6]\
    );
\vid_reset_pulse_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[7]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[6]_0\,
      O => \vid_reset_pulse_cnt_reg[7]\
    );
\vid_reset_pulse_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[8]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[7]_0\,
      O => \vid_reset_pulse_cnt_reg[8]\
    );
\vid_reset_pulse_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[9]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[8]_0\,
      O => \vid_reset_pulse_cnt_reg[9]\
    );
\vid_reset_pulse_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABFFFFAAA8"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg[10]_0\,
      I1 => \vid_reset_pulse_cnt_reg[15]_1\,
      I2 => \vid_reset_pulse_cnt_reg[15]_2\,
      I3 => \vid_reset_pulse_cnt_reg[15]_3\,
      I4 => vid_reset_pulse_cnt0,
      I5 => \vid_reset_pulse_cnt_reg[9]_0\,
      O => \vid_reset_pulse_cnt_reg[10]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_coupler is
  port (
    overflow : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    vid_reset : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[1]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[2]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[3]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[4]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[5]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[6]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[7]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[8]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[9]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[10]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[11]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[12]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[13]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[14]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]\ : out STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_0\ : out STD_LOGIC;
    \gof.overflow_i_reg\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_value_i_reg[9]\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    de_3 : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[1]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_1\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_2\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_3\ : in STD_LOGIC;
    src_in : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[2]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[3]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[4]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[5]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[6]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[7]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[8]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[9]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[10]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[11]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[12]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[13]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[14]_0\ : in STD_LOGIC;
    \vid_reset_pulse_cnt_reg[15]_4\ : in STD_LOGIC;
    vid_vsync_dly : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    aclken : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_coupler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_coupler is
  signal \^overflow\ : STD_LOGIC;
  signal \wr_en_i__0\ : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
begin
  overflow <= \^overflow\;
\generate_sync_fifo.FIFO_INST\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_fifo_sync
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => dout(10 downto 0),
      \gof.overflow_i_reg\ => \gof.overflow_i_reg\,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      overflow => \^overflow\,
      src_in => src_in,
      underflow => underflow,
      vid_reset => vid_reset,
      \vid_reset_pulse_cnt_reg[10]\ => \vid_reset_pulse_cnt_reg[10]\,
      \vid_reset_pulse_cnt_reg[10]_0\ => \vid_reset_pulse_cnt_reg[10]_0\,
      \vid_reset_pulse_cnt_reg[11]\ => \vid_reset_pulse_cnt_reg[11]\,
      \vid_reset_pulse_cnt_reg[11]_0\ => \vid_reset_pulse_cnt_reg[11]_0\,
      \vid_reset_pulse_cnt_reg[12]\ => \vid_reset_pulse_cnt_reg[12]\,
      \vid_reset_pulse_cnt_reg[12]_0\ => \vid_reset_pulse_cnt_reg[12]_0\,
      \vid_reset_pulse_cnt_reg[13]\ => \vid_reset_pulse_cnt_reg[13]\,
      \vid_reset_pulse_cnt_reg[13]_0\ => \vid_reset_pulse_cnt_reg[13]_0\,
      \vid_reset_pulse_cnt_reg[14]\ => \vid_reset_pulse_cnt_reg[14]\,
      \vid_reset_pulse_cnt_reg[14]_0\ => \vid_reset_pulse_cnt_reg[14]_0\,
      \vid_reset_pulse_cnt_reg[15]\ => \vid_reset_pulse_cnt_reg[15]\,
      \vid_reset_pulse_cnt_reg[15]_0\ => \vid_reset_pulse_cnt_reg[15]_0\,
      \vid_reset_pulse_cnt_reg[15]_1\ => \vid_reset_pulse_cnt_reg[15]_1\,
      \vid_reset_pulse_cnt_reg[15]_2\ => \vid_reset_pulse_cnt_reg[15]_2\,
      \vid_reset_pulse_cnt_reg[15]_3\ => \vid_reset_pulse_cnt_reg[15]_3\,
      \vid_reset_pulse_cnt_reg[15]_4\ => \vid_reset_pulse_cnt_reg[15]_4\,
      \vid_reset_pulse_cnt_reg[1]\ => \vid_reset_pulse_cnt_reg[1]\,
      \vid_reset_pulse_cnt_reg[1]_0\ => \vid_reset_pulse_cnt_reg[1]_0\,
      \vid_reset_pulse_cnt_reg[2]\ => \vid_reset_pulse_cnt_reg[2]\,
      \vid_reset_pulse_cnt_reg[2]_0\ => \vid_reset_pulse_cnt_reg[2]_0\,
      \vid_reset_pulse_cnt_reg[3]\ => \vid_reset_pulse_cnt_reg[3]\,
      \vid_reset_pulse_cnt_reg[3]_0\ => \vid_reset_pulse_cnt_reg[3]_0\,
      \vid_reset_pulse_cnt_reg[4]\ => \vid_reset_pulse_cnt_reg[4]\,
      \vid_reset_pulse_cnt_reg[4]_0\ => \vid_reset_pulse_cnt_reg[4]_0\,
      \vid_reset_pulse_cnt_reg[5]\ => \vid_reset_pulse_cnt_reg[5]\,
      \vid_reset_pulse_cnt_reg[5]_0\ => \vid_reset_pulse_cnt_reg[5]_0\,
      \vid_reset_pulse_cnt_reg[6]\ => \vid_reset_pulse_cnt_reg[6]\,
      \vid_reset_pulse_cnt_reg[6]_0\ => \vid_reset_pulse_cnt_reg[6]_0\,
      \vid_reset_pulse_cnt_reg[7]\ => \vid_reset_pulse_cnt_reg[7]\,
      \vid_reset_pulse_cnt_reg[7]_0\ => \vid_reset_pulse_cnt_reg[7]_0\,
      \vid_reset_pulse_cnt_reg[8]\ => \vid_reset_pulse_cnt_reg[8]\,
      \vid_reset_pulse_cnt_reg[8]_0\ => \vid_reset_pulse_cnt_reg[8]_0\,
      \vid_reset_pulse_cnt_reg[9]\ => \vid_reset_pulse_cnt_reg[9]\,
      \vid_reset_pulse_cnt_reg[9]_0\ => \vid_reset_pulse_cnt_reg[9]_0\,
      vid_vsync => vid_vsync,
      vid_vsync_dly => vid_vsync_dly,
      wr_en => \wr_en_i__0\,
      wr_rst_busy => wr_rst_busy_i
    );
wr_en_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \count_value_i_reg[9]\,
      I1 => aresetn,
      I2 => \^overflow\,
      I3 => de_3,
      I4 => wr_rst_busy_i,
      I5 => vid_io_in_ce,
      O => \wr_en_i__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC;
    drop_en : in STD_LOGIC;
    remap_420_en : in STD_LOGIC
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 10;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 : integer;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 10;
  attribute C_COMPONENTS_PER_PIXEL : integer;
  attribute C_COMPONENTS_PER_PIXEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is "zynq";
  attribute C_HAS_ASYNC_CLK : integer;
  attribute C_HAS_ASYNC_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 0;
  attribute C_INCLUDE_PIXEL_DROP : integer;
  attribute C_INCLUDE_PIXEL_DROP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 0;
  attribute C_INCLUDE_PIXEL_REMAP_420 : integer;
  attribute C_INCLUDE_PIXEL_REMAP_420 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 0;
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 8;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 8;
  attribute C_NATIVE_COMPONENT_WIDTH : integer;
  attribute C_NATIVE_COMPONENT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 8;
  attribute C_NATIVE_DATA_WIDTH : integer;
  attribute C_NATIVE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 8;
  attribute C_PIXELS_PER_CLOCK : integer;
  attribute C_PIXELS_PER_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9 is
  signal COUPLER_INST_n_14 : STD_LOGIC;
  signal COUPLER_INST_n_15 : STD_LOGIC;
  signal COUPLER_INST_n_16 : STD_LOGIC;
  signal COUPLER_INST_n_17 : STD_LOGIC;
  signal COUPLER_INST_n_18 : STD_LOGIC;
  signal COUPLER_INST_n_19 : STD_LOGIC;
  signal COUPLER_INST_n_20 : STD_LOGIC;
  signal COUPLER_INST_n_21 : STD_LOGIC;
  signal COUPLER_INST_n_22 : STD_LOGIC;
  signal COUPLER_INST_n_23 : STD_LOGIC;
  signal COUPLER_INST_n_24 : STD_LOGIC;
  signal COUPLER_INST_n_25 : STD_LOGIC;
  signal COUPLER_INST_n_26 : STD_LOGIC;
  signal COUPLER_INST_n_27 : STD_LOGIC;
  signal COUPLER_INST_n_28 : STD_LOGIC;
  signal COUPLER_INST_n_29 : STD_LOGIC;
  signal COUPLER_INST_n_30 : STD_LOGIC;
  signal FORMATTER_INST_n_18 : STD_LOGIC;
  signal de_3 : STD_LOGIC;
  signal idf_data : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal vid_reset : STD_LOGIC;
  signal \vid_reset_pulse_cnt[15]_i_2_n_0\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \vid_reset_pulse_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal vid_vsync_dly : STD_LOGIC;
begin
CDC_SINGLE_REMAP_OVERFLOW_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single
     port map (
      aclk => aclk
    );
CDC_SINGLE_RESET_PULSE_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_cdc_single__xdcDup__1\
     port map (
      aclk => aclk,
      src_in => \vid_reset_pulse_cnt_reg_n_0_[0]\
    );
COUPLER_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_coupler
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      \count_value_i_reg[9]\ => FORMATTER_INST_n_18,
      de_3 => de_3,
      din(10 downto 0) => idf_data(10 downto 0),
      dout(10) => fid,
      dout(9) => m_axis_video_tuser,
      dout(8) => m_axis_video_tlast,
      dout(7 downto 0) => m_axis_video_tdata(7 downto 0),
      \gof.overflow_i_reg\ => COUPLER_INST_n_30,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      overflow => overflow,
      src_in => \vid_reset_pulse_cnt_reg_n_0_[0]\,
      underflow => underflow,
      vid_io_in_ce => vid_io_in_ce,
      vid_reset => vid_reset,
      \vid_reset_pulse_cnt_reg[10]\ => COUPLER_INST_n_23,
      \vid_reset_pulse_cnt_reg[10]_0\ => \vid_reset_pulse_cnt_reg_n_0_[10]\,
      \vid_reset_pulse_cnt_reg[11]\ => COUPLER_INST_n_24,
      \vid_reset_pulse_cnt_reg[11]_0\ => \vid_reset_pulse_cnt_reg_n_0_[11]\,
      \vid_reset_pulse_cnt_reg[12]\ => COUPLER_INST_n_25,
      \vid_reset_pulse_cnt_reg[12]_0\ => \vid_reset_pulse_cnt_reg_n_0_[12]\,
      \vid_reset_pulse_cnt_reg[13]\ => COUPLER_INST_n_26,
      \vid_reset_pulse_cnt_reg[13]_0\ => \vid_reset_pulse_cnt_reg_n_0_[13]\,
      \vid_reset_pulse_cnt_reg[14]\ => COUPLER_INST_n_27,
      \vid_reset_pulse_cnt_reg[14]_0\ => \vid_reset_pulse_cnt_reg_n_0_[14]\,
      \vid_reset_pulse_cnt_reg[15]\ => COUPLER_INST_n_28,
      \vid_reset_pulse_cnt_reg[15]_0\ => COUPLER_INST_n_29,
      \vid_reset_pulse_cnt_reg[15]_1\ => \vid_reset_pulse_cnt[15]_i_2_n_0\,
      \vid_reset_pulse_cnt_reg[15]_2\ => \vid_reset_pulse_cnt[15]_i_3_n_0\,
      \vid_reset_pulse_cnt_reg[15]_3\ => \vid_reset_pulse_cnt[15]_i_4_n_0\,
      \vid_reset_pulse_cnt_reg[15]_4\ => \vid_reset_pulse_cnt_reg_n_0_[15]\,
      \vid_reset_pulse_cnt_reg[1]\ => COUPLER_INST_n_14,
      \vid_reset_pulse_cnt_reg[1]_0\ => \vid_reset_pulse_cnt_reg_n_0_[1]\,
      \vid_reset_pulse_cnt_reg[2]\ => COUPLER_INST_n_15,
      \vid_reset_pulse_cnt_reg[2]_0\ => \vid_reset_pulse_cnt_reg_n_0_[2]\,
      \vid_reset_pulse_cnt_reg[3]\ => COUPLER_INST_n_16,
      \vid_reset_pulse_cnt_reg[3]_0\ => \vid_reset_pulse_cnt_reg_n_0_[3]\,
      \vid_reset_pulse_cnt_reg[4]\ => COUPLER_INST_n_17,
      \vid_reset_pulse_cnt_reg[4]_0\ => \vid_reset_pulse_cnt_reg_n_0_[4]\,
      \vid_reset_pulse_cnt_reg[5]\ => COUPLER_INST_n_18,
      \vid_reset_pulse_cnt_reg[5]_0\ => \vid_reset_pulse_cnt_reg_n_0_[5]\,
      \vid_reset_pulse_cnt_reg[6]\ => COUPLER_INST_n_19,
      \vid_reset_pulse_cnt_reg[6]_0\ => \vid_reset_pulse_cnt_reg_n_0_[6]\,
      \vid_reset_pulse_cnt_reg[7]\ => COUPLER_INST_n_20,
      \vid_reset_pulse_cnt_reg[7]_0\ => \vid_reset_pulse_cnt_reg_n_0_[7]\,
      \vid_reset_pulse_cnt_reg[8]\ => COUPLER_INST_n_21,
      \vid_reset_pulse_cnt_reg[8]_0\ => \vid_reset_pulse_cnt_reg_n_0_[8]\,
      \vid_reset_pulse_cnt_reg[9]\ => COUPLER_INST_n_22,
      \vid_reset_pulse_cnt_reg[9]_0\ => \vid_reset_pulse_cnt_reg_n_0_[9]\,
      vid_vsync => vid_vsync,
      vid_vsync_dly => vid_vsync_dly
    );
FORMATTER_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9_formatter
     port map (
      aclk => aclk,
      axis_enable => axis_enable,
      de_1_reg_0 => vtd_active_video,
      de_3 => de_3,
      de_3_reg_0 => COUPLER_INST_n_30,
      din(10 downto 0) => idf_data(10 downto 0),
      vid_active_video => vid_active_video,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_locked_reg_0 => FORMATTER_INST_n_18,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync
    );
\vid_reset_pulse_cnt[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg_n_0_[8]\,
      I1 => \vid_reset_pulse_cnt_reg_n_0_[9]\,
      I2 => \vid_reset_pulse_cnt_reg_n_0_[6]\,
      I3 => \vid_reset_pulse_cnt_reg_n_0_[7]\,
      I4 => \vid_reset_pulse_cnt_reg_n_0_[5]\,
      I5 => \vid_reset_pulse_cnt_reg_n_0_[4]\,
      O => \vid_reset_pulse_cnt[15]_i_2_n_0\
    );
\vid_reset_pulse_cnt[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg_n_0_[14]\,
      I1 => \vid_reset_pulse_cnt_reg_n_0_[15]\,
      I2 => \vid_reset_pulse_cnt_reg_n_0_[12]\,
      I3 => \vid_reset_pulse_cnt_reg_n_0_[13]\,
      I4 => \vid_reset_pulse_cnt_reg_n_0_[11]\,
      I5 => \vid_reset_pulse_cnt_reg_n_0_[10]\,
      O => \vid_reset_pulse_cnt[15]_i_3_n_0\
    );
\vid_reset_pulse_cnt[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \vid_reset_pulse_cnt_reg_n_0_[1]\,
      I1 => \vid_reset_pulse_cnt_reg_n_0_[0]\,
      I2 => \vid_reset_pulse_cnt_reg_n_0_[3]\,
      I3 => \vid_reset_pulse_cnt_reg_n_0_[2]\,
      O => \vid_reset_pulse_cnt[15]_i_4_n_0\
    );
\vid_reset_pulse_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_14,
      Q => \vid_reset_pulse_cnt_reg_n_0_[0]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_24,
      Q => \vid_reset_pulse_cnt_reg_n_0_[10]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_25,
      Q => \vid_reset_pulse_cnt_reg_n_0_[11]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_26,
      Q => \vid_reset_pulse_cnt_reg_n_0_[12]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_27,
      Q => \vid_reset_pulse_cnt_reg_n_0_[13]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_28,
      Q => \vid_reset_pulse_cnt_reg_n_0_[14]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_29,
      Q => \vid_reset_pulse_cnt_reg_n_0_[15]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_15,
      Q => \vid_reset_pulse_cnt_reg_n_0_[1]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_16,
      Q => \vid_reset_pulse_cnt_reg_n_0_[2]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_17,
      Q => \vid_reset_pulse_cnt_reg_n_0_[3]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_18,
      Q => \vid_reset_pulse_cnt_reg_n_0_[4]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_19,
      Q => \vid_reset_pulse_cnt_reg_n_0_[5]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_20,
      Q => \vid_reset_pulse_cnt_reg_n_0_[6]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_21,
      Q => \vid_reset_pulse_cnt_reg_n_0_[7]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_22,
      Q => \vid_reset_pulse_cnt_reg_n_0_[8]\,
      R => vid_reset
    );
\vid_reset_pulse_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => COUPLER_INST_n_23,
      Q => \vid_reset_pulse_cnt_reg_n_0_[9]\,
      R => vid_reset
    );
vid_vsync_dly_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => vid_vsync,
      Q => vid_vsync_dly,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_v_vid_in_axi4s_0_0,v_vid_in_axi4s_v4_0_9,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "v_vid_in_axi4s_v4_0_9,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of inst : label is 10;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 : integer;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 of inst : label is 10;
  attribute C_COMPONENTS_PER_PIXEL : integer;
  attribute C_COMPONENTS_PER_PIXEL of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_HAS_ASYNC_CLK : integer;
  attribute C_HAS_ASYNC_CLK of inst : label is 0;
  attribute C_INCLUDE_PIXEL_DROP : integer;
  attribute C_INCLUDE_PIXEL_DROP of inst : label is 0;
  attribute C_INCLUDE_PIXEL_REMAP_420 : integer;
  attribute C_INCLUDE_PIXEL_REMAP_420 of inst : label is 0;
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of inst : label is 8;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_NATIVE_COMPONENT_WIDTH : integer;
  attribute C_NATIVE_COMPONENT_WIDTH of inst : label is 8;
  attribute C_NATIVE_DATA_WIDTH : integer;
  attribute C_NATIVE_DATA_WIDTH of inst : label is 8;
  attribute C_PIXELS_PER_CLOCK : integer;
  attribute C_PIXELS_PER_CLOCK of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclken : signal is "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  attribute X_INTERFACE_PARAMETER of aclken : signal is "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 video_out TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_video_tlast : signal is "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_400:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 8}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 video_out TREADY";
  attribute X_INTERFACE_INFO of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 video_out TUSER";
  attribute X_INTERFACE_INFO of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 video_out TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_field_id : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in FIELD";
  attribute X_INTERFACE_INFO of vid_hblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC";
  attribute X_INTERFACE_INFO of vid_io_in_ce : signal is "xilinx.com:signal:clockenable:1.0 vid_io_in_ce_intf CE";
  attribute X_INTERFACE_PARAMETER of vid_io_in_ce : signal is "XIL_INTERFACENAME vid_io_in_ce_intf, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of vid_vblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC";
  attribute X_INTERFACE_INFO of vtd_active_video : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vtd_field_id : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD";
  attribute X_INTERFACE_INFO of vtd_hblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK";
  attribute X_INTERFACE_INFO of vtd_hsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC";
  attribute X_INTERFACE_INFO of vtd_vblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK";
  attribute X_INTERFACE_INFO of vtd_vsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC";
  attribute X_INTERFACE_INFO of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 video_out TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_vid_in_axi4s_v4_0_9
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      axis_enable => axis_enable,
      drop_en => '0',
      fid => fid,
      m_axis_video_tdata(7 downto 0) => m_axis_video_tdata(7 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      overflow => overflow,
      remap_420_en => '0',
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => '0',
      vid_io_in_reset => '0',
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_active_video => vtd_active_video,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync
    );
end STRUCTURE;