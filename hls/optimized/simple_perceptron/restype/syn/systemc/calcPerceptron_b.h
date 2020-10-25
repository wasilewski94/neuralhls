// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __calcPerceptron_b_H__
#define __calcPerceptron_b_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct calcPerceptron_b_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 18;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(calcPerceptron_b_ram) {
        ram[0] = "0b1010101110110011";
        ram[1] = "0b0011100011111000";
        ram[2] = "0b1011100111010011";
        ram[3] = "0b0011100000110110";
        ram[4] = "0b1011010011100110";
        ram[5] = "0b0011000110110110";
        ram[6] = "0b0011011010100100";
        ram[7] = "0b0010110100100000";
        ram[8] = "0b1011100011100000";
        ram[9] = "0b0011100101100101";
        ram[10] = "0b1011010000011010";
        ram[11] = "0b0011000010101110";
        ram[12] = "0b0011100101101010";
        ram[13] = "0b0011011011111011";
        ram[14] = "0b1011011110111100";
        ram[15] = "0b0011101001010000";
        ram[16] = "0b1011110000001010";
        ram[17] = "0b1011011101001011";


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


SC_MODULE(calcPerceptron_b) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 18;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


calcPerceptron_b_ram* meminst;


SC_CTOR(calcPerceptron_b) {
meminst = new calcPerceptron_b_ram("calcPerceptron_b_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~calcPerceptron_b() {
    delete meminst;
}


};//endmodule
#endif
