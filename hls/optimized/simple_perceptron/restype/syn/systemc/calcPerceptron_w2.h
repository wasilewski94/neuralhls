// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __calcPerceptron_w2_H__
#define __calcPerceptron_w2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct calcPerceptron_w2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 80;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(calcPerceptron_w2_ram) {
        ram[0] = "0b1011100011111001";
        ram[1] = "0b1010110110110100";
        ram[2] = "0b1011001110000101";
        ram[3] = "0b1011100011100110";
        ram[4] = "0b0011101000111010";
        ram[5] = "0b0010110000111010";
        ram[6] = "0b0011100100011100";
        ram[7] = "0b1011100101110001";
        ram[8] = "0b1011000111000110";
        ram[9] = "0b1011101011110000";
        ram[10] = "0b1010110101001010";
        ram[11] = "0b0011000100010110";
        ram[12] = "0b1011100110111010";
        ram[13] = "0b0011000000000000";
        ram[14] = "0b1011110010010011";
        ram[15] = "0b0011101111101010";
        ram[16] = "0b0011000110011101";
        ram[17] = "0b1011100011010111";
        ram[18] = "0b1011011101101101";
        ram[19] = "0b0011010000001001";
        ram[20] = "0b0011011010111100";
        ram[21] = "0b0011100101001101";
        ram[22] = "0b1011010011010001";
        ram[23] = "0b1011000101011101";
        ram[24] = "0b1010111101110001";
        ram[25] = "0b1011001110011010";
        ram[26] = "0b0011110010010111";
        ram[27] = "0b0011010011010101";
        ram[28] = "0b1011011000001010";
        ram[29] = "0b1010101001101110";
        ram[30] = "0b1011011010111001";
        ram[31] = "0b1011001111011001";
        ram[32] = "0b0011101111111010";
        ram[33] = "0b0011001000010001";
        ram[34] = "0b1011100011011110";
        ram[35] = "0b1011011100101001";
        ram[36] = "0b1011110001111011";
        ram[37] = "0b1011110010111110";
        ram[38] = "0b0011000111000111";
        ram[39] = "0b1011100001010010";
        ram[40] = "0b1011100010101011";
        ram[41] = "0b0010110101111000";
        ram[42] = "0b1011000010010000";
        ram[43] = "0b0011100111100111";
        ram[44] = "0b1011100101101101";
        ram[45] = "0b1011100001100101";
        ram[46] = "0b0011101001001000";
        ram[47] = "0b0010111110010111";
        ram[48] = "0b0011011011110011";
        ram[49] = "0b1011100001111011";
        ram[50] = "0b1011010010101001";
        ram[51] = "0b1011000010101010";
        ram[52] = "0b0011101100011111";
        ram[53] = "0b1011111000101000";
        ram[54] = "0b1010111111010100";
        ram[55] = "0b1011000000111011";
        ram[56] = "0b1011100111000010";
        ram[57] = "0b0011110010000101";
        ram[58] = "0b1011101011101111";
        ram[59] = "0b0011000111001111";
        ram[60] = "0b0011011010110111";
        ram[61] = "0b0011000010100101";
        ram[62] = "0b1011110100101010";
        ram[63] = "0b1010101001001110";
        ram[64] = "0b0010101011100111";
        ram[65] = "0b1011010010010011";
        ram[66] = "0b0011010011001001";
        ram[67] = "0b1011101110101011";
        ram[68] = "0b0010111000010001";
        ram[69] = "0b1011010001111101";
        ram[70] = "0b1010101010000001";
        ram[71] = "0b0011011101100000";
        ram[72] = "0b0011001111000110";
        ram[73] = "0b0011100100101000";
        ram[74] = "0b1010100000010100";
        ram[75] = "0b1011110000000000";
        ram[76] = "0b1011011100001011";
        ram[77] = "0b1010111110100101";
        ram[78] = "0b1011100001010010";
        ram[79] = "0b1010110001010011";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(calcPerceptron_w2) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 80;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


calcPerceptron_w2_ram* meminst;


SC_CTOR(calcPerceptron_w2) {
meminst = new calcPerceptron_w2_ram("calcPerceptron_w2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~calcPerceptron_w2() {
    delete meminst;
}


};//endmodule
#endif
