#include "calcPerceptron.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void calcPerceptron::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"x_Addr_A\" :  \"" << x_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"x_EN_A\" :  \"" << x_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"x_WEN_A\" :  \"" << x_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"x_Din_A\" :  \"" << x_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x_Dout_A\" :  \"" << x_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"x_Clk_A\" :  \"" << x_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"x_Rst_A\" :  \"" << x_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_Addr_A\" :  \"" << res_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_EN_A\" :  \"" << res_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_WEN_A\" :  \"" << res_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_Din_A\" :  \"" << res_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"res_Dout_A\" :  \"" << res_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_Clk_A\" :  \"" << res_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_Rst_A\" :  \"" << res_Rst_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_AWVALID\" :  \"" << s_axi_CTRL_BUS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_AWREADY\" :  \"" << s_axi_CTRL_BUS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_AWADDR\" :  \"" << s_axi_CTRL_BUS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WVALID\" :  \"" << s_axi_CTRL_BUS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_WREADY\" :  \"" << s_axi_CTRL_BUS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WDATA\" :  \"" << s_axi_CTRL_BUS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_WSTRB\" :  \"" << s_axi_CTRL_BUS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_ARVALID\" :  \"" << s_axi_CTRL_BUS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_ARREADY\" :  \"" << s_axi_CTRL_BUS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_ARADDR\" :  \"" << s_axi_CTRL_BUS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RVALID\" :  \"" << s_axi_CTRL_BUS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_RREADY\" :  \"" << s_axi_CTRL_BUS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RDATA\" :  \"" << s_axi_CTRL_BUS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_RRESP\" :  \"" << s_axi_CTRL_BUS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_BVALID\" :  \"" << s_axi_CTRL_BUS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CTRL_BUS_BREADY\" :  \"" << s_axi_CTRL_BUS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CTRL_BUS_BRESP\" :  \"" << s_axi_CTRL_BUS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

