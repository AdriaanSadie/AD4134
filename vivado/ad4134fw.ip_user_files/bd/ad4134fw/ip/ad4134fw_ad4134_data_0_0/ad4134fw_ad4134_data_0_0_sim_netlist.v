// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Oct 28 22:06:24 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_data_0_0/ad4134fw_ad4134_data_0_0_sim_netlist.v
// Design      : ad4134fw_ad4134_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_data_0_0,ad4134_data,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ad4134_data,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_ad4134_data_0_0
   (clk,
    rst_n,
    data_in0,
    data_in1,
    data_in2,
    data_in3,
    dclk_out,
    odr_out,
    data_out0,
    data_out1,
    data_out2,
    data_out3,
    data_rdy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_mode = "slave rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input data_in0;
  input data_in1;
  input data_in2;
  input data_in3;
  output dclk_out;
  output odr_out;
  output [23:0]data_out0;
  output [23:0]data_out1;
  output [23:0]data_out2;
  output [23:0]data_out3;
  output data_rdy;

  wire \<const0> ;
  wire clk;
  wire dclk_out;
  wire odr_out;
  wire rst_n;

  assign data_out0[23] = \<const0> ;
  assign data_out0[22] = \<const0> ;
  assign data_out0[21] = \<const0> ;
  assign data_out0[20] = \<const0> ;
  assign data_out0[19] = \<const0> ;
  assign data_out0[18] = \<const0> ;
  assign data_out0[17] = \<const0> ;
  assign data_out0[16] = \<const0> ;
  assign data_out0[15] = \<const0> ;
  assign data_out0[14] = \<const0> ;
  assign data_out0[13] = \<const0> ;
  assign data_out0[12] = \<const0> ;
  assign data_out0[11] = \<const0> ;
  assign data_out0[10] = \<const0> ;
  assign data_out0[9] = \<const0> ;
  assign data_out0[8] = \<const0> ;
  assign data_out0[7] = \<const0> ;
  assign data_out0[6] = \<const0> ;
  assign data_out0[5] = \<const0> ;
  assign data_out0[4] = \<const0> ;
  assign data_out0[3] = \<const0> ;
  assign data_out0[2] = \<const0> ;
  assign data_out0[1] = \<const0> ;
  assign data_out0[0] = \<const0> ;
  assign data_out1[23] = \<const0> ;
  assign data_out1[22] = \<const0> ;
  assign data_out1[21] = \<const0> ;
  assign data_out1[20] = \<const0> ;
  assign data_out1[19] = \<const0> ;
  assign data_out1[18] = \<const0> ;
  assign data_out1[17] = \<const0> ;
  assign data_out1[16] = \<const0> ;
  assign data_out1[15] = \<const0> ;
  assign data_out1[14] = \<const0> ;
  assign data_out1[13] = \<const0> ;
  assign data_out1[12] = \<const0> ;
  assign data_out1[11] = \<const0> ;
  assign data_out1[10] = \<const0> ;
  assign data_out1[9] = \<const0> ;
  assign data_out1[8] = \<const0> ;
  assign data_out1[7] = \<const0> ;
  assign data_out1[6] = \<const0> ;
  assign data_out1[5] = \<const0> ;
  assign data_out1[4] = \<const0> ;
  assign data_out1[3] = \<const0> ;
  assign data_out1[2] = \<const0> ;
  assign data_out1[1] = \<const0> ;
  assign data_out1[0] = \<const0> ;
  assign data_out2[23] = \<const0> ;
  assign data_out2[22] = \<const0> ;
  assign data_out2[21] = \<const0> ;
  assign data_out2[20] = \<const0> ;
  assign data_out2[19] = \<const0> ;
  assign data_out2[18] = \<const0> ;
  assign data_out2[17] = \<const0> ;
  assign data_out2[16] = \<const0> ;
  assign data_out2[15] = \<const0> ;
  assign data_out2[14] = \<const0> ;
  assign data_out2[13] = \<const0> ;
  assign data_out2[12] = \<const0> ;
  assign data_out2[11] = \<const0> ;
  assign data_out2[10] = \<const0> ;
  assign data_out2[9] = \<const0> ;
  assign data_out2[8] = \<const0> ;
  assign data_out2[7] = \<const0> ;
  assign data_out2[6] = \<const0> ;
  assign data_out2[5] = \<const0> ;
  assign data_out2[4] = \<const0> ;
  assign data_out2[3] = \<const0> ;
  assign data_out2[2] = \<const0> ;
  assign data_out2[1] = \<const0> ;
  assign data_out2[0] = \<const0> ;
  assign data_out3[23] = \<const0> ;
  assign data_out3[22] = \<const0> ;
  assign data_out3[21] = \<const0> ;
  assign data_out3[20] = \<const0> ;
  assign data_out3[19] = \<const0> ;
  assign data_out3[18] = \<const0> ;
  assign data_out3[17] = \<const0> ;
  assign data_out3[16] = \<const0> ;
  assign data_out3[15] = \<const0> ;
  assign data_out3[14] = \<const0> ;
  assign data_out3[13] = \<const0> ;
  assign data_out3[12] = \<const0> ;
  assign data_out3[11] = \<const0> ;
  assign data_out3[10] = \<const0> ;
  assign data_out3[9] = \<const0> ;
  assign data_out3[8] = \<const0> ;
  assign data_out3[7] = \<const0> ;
  assign data_out3[6] = \<const0> ;
  assign data_out3[5] = \<const0> ;
  assign data_out3[4] = \<const0> ;
  assign data_out3[3] = \<const0> ;
  assign data_out3[2] = \<const0> ;
  assign data_out3[1] = \<const0> ;
  assign data_out3[0] = \<const0> ;
  assign data_rdy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ad4134fw_ad4134_data_0_0_ad4134_data U0
       (.clk(clk),
        .dclk_out(dclk_out),
        .odr_out(odr_out),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "ad4134_data" *) 
module ad4134fw_ad4134_data_0_0_ad4134_data
   (odr_out,
    dclk_out,
    clk,
    rst_n);
  output odr_out;
  output dclk_out;
  input clk;
  input rst_n;

  wire clk;
  wire dclk_active__0;
  wire dclk_active_n_0;
  wire dclk_out;
  wire odr_int_i_1_n_0;
  wire odr_int_n_0;
  wire odr_out;
  wire \odr_tracker[0]_i_1_n_0 ;
  wire [5:0]odr_tracker_reg;
  wire [5:1]p_0_in;
  wire [5:1]p_0_in__0;
  wire rst_n;
  wire slow_clk;
  wire \slow_clk_counter[0]_i_1_n_0 ;
  wire [5:1]slow_clk_counter_reg;
  wire \slow_clk_counter_reg_n_0_[0] ;
  wire slow_clk_i_1_n_0;

  LUT4 #(
    .INIT(16'h007E)) 
    dclk_active
       (.I0(odr_tracker_reg[2]),
        .I1(odr_tracker_reg[3]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[5]),
        .O(dclk_active_n_0));
  FDCE dclk_active_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(dclk_active_n_0),
        .Q(dclk_active__0));
  LUT2 #(
    .INIT(4'h8)) 
    dclk_out_INST_0
       (.I0(dclk_active__0),
        .I1(slow_clk),
        .O(dclk_out));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    odr_int
       (.I0(odr_tracker_reg[4]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[0]),
        .I3(odr_tracker_reg[1]),
        .I4(odr_tracker_reg[2]),
        .I5(odr_tracker_reg[3]),
        .O(odr_int_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    odr_int_i_1
       (.I0(rst_n),
        .O(odr_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    odr_int_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(odr_int_n_0),
        .Q(odr_out));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \odr_tracker[0]_i_1 
       (.I0(odr_tracker_reg[5]),
        .I1(odr_tracker_reg[4]),
        .I2(odr_tracker_reg[2]),
        .I3(odr_tracker_reg[1]),
        .I4(odr_tracker_reg[3]),
        .I5(odr_tracker_reg[0]),
        .O(\odr_tracker[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111222211152A2A)) 
    \odr_tracker[1]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[2]),
        .I4(odr_tracker_reg[1]),
        .I5(odr_tracker_reg[3]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h11223300112A3F00)) 
    \odr_tracker[2]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[2]),
        .I4(odr_tracker_reg[1]),
        .I5(odr_tracker_reg[3]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h13332000)) 
    \odr_tracker[3]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[2]),
        .I3(odr_tracker_reg[1]),
        .I4(odr_tracker_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h1230303030303030)) 
    \odr_tracker[4]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[2]),
        .I4(odr_tracker_reg[1]),
        .I5(odr_tracker_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h20000000000C0C0C)) 
    \odr_tracker[5]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[2]),
        .I4(odr_tracker_reg[1]),
        .I5(odr_tracker_reg[3]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[0] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(\odr_tracker[0]_i_1_n_0 ),
        .Q(odr_tracker_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[1] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in__0[1]),
        .Q(odr_tracker_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[2] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in__0[2]),
        .Q(odr_tracker_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[3] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in__0[3]),
        .Q(odr_tracker_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[4] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in__0[4]),
        .Q(odr_tracker_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[5] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in__0[5]),
        .Q(odr_tracker_reg[5]));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \slow_clk_counter[0]_i_1 
       (.I0(slow_clk_counter_reg[5]),
        .I1(slow_clk_counter_reg[4]),
        .I2(slow_clk_counter_reg[3]),
        .I3(slow_clk_counter_reg[1]),
        .I4(slow_clk_counter_reg[2]),
        .I5(\slow_clk_counter_reg_n_0_[0] ),
        .O(\slow_clk_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15152A2A15152AAA)) 
    \slow_clk_counter[1]_i_1 
       (.I0(\slow_clk_counter_reg_n_0_[0] ),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[4]),
        .I3(slow_clk_counter_reg[3]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[2]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h153F2A00)) 
    \slow_clk_counter[2]_i_1 
       (.I0(\slow_clk_counter_reg_n_0_[0] ),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[4]),
        .I3(slow_clk_counter_reg[1]),
        .I4(slow_clk_counter_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h152A3F003F003F00)) 
    \slow_clk_counter[3]_i_1 
       (.I0(\slow_clk_counter_reg_n_0_[0] ),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[4]),
        .I3(slow_clk_counter_reg[3]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h1A303030303030F0)) 
    \slow_clk_counter[4]_i_1 
       (.I0(\slow_clk_counter_reg_n_0_[0] ),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[4]),
        .I3(slow_clk_counter_reg[3]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[2]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h2C0C0C0C0C0C0CCC)) 
    \slow_clk_counter[5]_i_1 
       (.I0(\slow_clk_counter_reg_n_0_[0] ),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[4]),
        .I3(slow_clk_counter_reg[3]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[2]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(\slow_clk_counter[0]_i_1_n_0 ),
        .Q(\slow_clk_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in[1]),
        .Q(slow_clk_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in[2]),
        .Q(slow_clk_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in[3]),
        .Q(slow_clk_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in[4]),
        .Q(slow_clk_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(p_0_in[5]),
        .Q(slow_clk_counter_reg[5]));
  LUT6 #(
    .INIT(64'h7777777F88888880)) 
    slow_clk_i_1
       (.I0(slow_clk_counter_reg[5]),
        .I1(slow_clk_counter_reg[4]),
        .I2(slow_clk_counter_reg[3]),
        .I3(slow_clk_counter_reg[1]),
        .I4(slow_clk_counter_reg[2]),
        .I5(slow_clk),
        .O(slow_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    slow_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_1_n_0),
        .D(slow_clk_i_1_n_0),
        .Q(slow_clk));
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
