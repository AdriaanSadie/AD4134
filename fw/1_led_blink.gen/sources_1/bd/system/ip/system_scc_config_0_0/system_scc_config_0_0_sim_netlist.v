// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 15 19:08:19 2022
// Host        : SADIE-SAAB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/adria/OneDrive/Documents/Adriaan/Werk
//               Goedjies/BTT/fw/redpitaya_guide/tmp/1_led_blink/1_led_blink.gen/sources_1/bd/system/ip/system_scc_config_0_0/system_scc_config_0_0_sim_netlist.v}
// Design      : system_scc_config_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_scc_config_0_0,scc_config,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "scc_config,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_scc_config_0_0
   (cfg_in,
    gain_ctrl_1_1,
    gain_ctrl_1_0,
    gain_ctrl_2_1,
    gain_ctrl_2_0,
    switch_1,
    switch_2,
    n_enable_switch,
    led_2,
    led_1);
  input [31:0]cfg_in;
  output gain_ctrl_1_1;
  output gain_ctrl_1_0;
  output gain_ctrl_2_1;
  output gain_ctrl_2_0;
  output switch_1;
  output switch_2;
  output n_enable_switch;
  output led_2;
  output led_1;

  wire [31:0]cfg_in;

  assign gain_ctrl_1_0 = cfg_in[7];
  assign gain_ctrl_1_1 = cfg_in[8];
  assign gain_ctrl_2_0 = cfg_in[5];
  assign gain_ctrl_2_1 = cfg_in[6];
  assign led_1 = cfg_in[0];
  assign led_2 = cfg_in[1];
  assign n_enable_switch = cfg_in[2];
  assign switch_1 = cfg_in[4];
  assign switch_2 = cfg_in[3];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
