-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity calcPerceptron_w2_rom is 
    generic(
             DWIDTH     : integer := 16; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 80
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of calcPerceptron_w2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011100011111001", 1 => "1010110110110100", 2 => "1011001110000101", 
    3 => "1011100011100110", 4 => "0011101000111010", 5 => "0010110000111010", 
    6 => "0011100100011100", 7 => "1011100101110001", 8 => "1011000111000110", 
    9 => "1011101011110000", 10 => "1010110101001010", 11 => "0011000100010110", 
    12 => "1011100110111010", 13 => "0011000000000000", 14 => "1011110010010011", 
    15 => "0011101111101010", 16 => "0011000110011101", 17 => "1011100011010111", 
    18 => "1011011101101101", 19 => "0011010000001001", 20 => "0011011010111100", 
    21 => "0011100101001101", 22 => "1011010011010001", 23 => "1011000101011101", 
    24 => "1010111101110001", 25 => "1011001110011010", 26 => "0011110010010111", 
    27 => "0011010011010101", 28 => "1011011000001010", 29 => "1010101001101110", 
    30 => "1011011010111001", 31 => "1011001111011001", 32 => "0011101111111010", 
    33 => "0011001000010001", 34 => "1011100011011110", 35 => "1011011100101001", 
    36 => "1011110001111011", 37 => "1011110010111110", 38 => "0011000111000111", 
    39 => "1011100001010010", 40 => "1011100010101011", 41 => "0010110101111000", 
    42 => "1011000010010000", 43 => "0011100111100111", 44 => "1011100101101101", 
    45 => "1011100001100101", 46 => "0011101001001000", 47 => "0010111110010111", 
    48 => "0011011011110011", 49 => "1011100001111011", 50 => "1011010010101001", 
    51 => "1011000010101010", 52 => "0011101100011111", 53 => "1011111000101000", 
    54 => "1010111111010100", 55 => "1011000000111011", 56 => "1011100111000010", 
    57 => "0011110010000101", 58 => "1011101011101111", 59 => "0011000111001111", 
    60 => "0011011010110111", 61 => "0011000010100101", 62 => "1011110100101010", 
    63 => "1010101001001110", 64 => "0010101011100111", 65 => "1011010010010011", 
    66 => "0011010011001001", 67 => "1011101110101011", 68 => "0010111000010001", 
    69 => "1011010001111101", 70 => "1010101010000001", 71 => "0011011101100000", 
    72 => "0011001111000110", 73 => "0011100100101000", 74 => "1010100000010100", 
    75 => "1011110000000000", 76 => "1011011100001011", 77 => "1010111110100101", 
    78 => "1011100001010010", 79 => "1010110001010011" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity calcPerceptron_w2 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 80;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of calcPerceptron_w2 is
    component calcPerceptron_w2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    calcPerceptron_w2_rom_U :  component calcPerceptron_w2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


