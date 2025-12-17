// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 16 21:39:04 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_bram_writer_0_0/ad4134fw_bram_writer_0_0_sim_netlist.v
// Design      : ad4134fw_bram_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_bram_writer_0_0,bram_writer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "bram_writer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_bram_writer_0_0
   (clk,
    reset_n,
    start,
    addra,
    dia,
    wea,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input start;
  output [12:0]addra;
  output [31:0]dia;
  output wea;
  output done;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:2]\^addra ;
  wire clk;
  wire done;
  wire reset_n;
  wire start;
  wire wea;

  assign addra[12:2] = \^addra [12:2];
  assign addra[1] = \<const0> ;
  assign addra[0] = \<const0> ;
  assign dia[31] = \<const1> ;
  assign dia[30] = \<const1> ;
  assign dia[29] = \<const0> ;
  assign dia[28] = \<const1> ;
  assign dia[27] = \<const1> ;
  assign dia[26] = \<const1> ;
  assign dia[25] = \<const1> ;
  assign dia[24] = \<const0> ;
  assign dia[23] = \<const1> ;
  assign dia[22] = \<const0> ;
  assign dia[21] = \<const1> ;
  assign dia[20] = \<const0> ;
  assign dia[19] = \<const1> ;
  assign dia[18] = \<const1> ;
  assign dia[17] = \<const0> ;
  assign dia[16] = \<const1> ;
  assign dia[15] = \<const1> ;
  assign dia[14] = \<const0> ;
  assign dia[13] = \<const1> ;
  assign dia[12] = \<const1> ;
  assign dia[11] = \<const1> ;
  assign dia[10] = \<const1> ;
  assign dia[9] = \<const1> ;
  assign dia[8] = \<const0> ;
  assign dia[7] = \<const1> ;
  assign dia[6] = \<const1> ;
  assign dia[5] = \<const1> ;
  assign dia[4] = \<const0> ;
  assign dia[3] = \<const1> ;
  assign dia[2] = \<const1> ;
  assign dia[1] = \<const1> ;
  assign dia[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  ad4134fw_bram_writer_0_0_bram_writer U0
       (.Q(\^addra ),
        .clk(clk),
        .done(done),
        .reset_n(reset_n),
        .start(start),
        .wea(wea));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "bram_writer" *) 
module ad4134fw_bram_writer_0_0_bram_writer
   (Q,
    done,
    wea,
    clk,
    reset_n,
    start);
  output [10:0]Q;
  output done;
  output wea;
  input clk;
  input reset_n;
  input start;

  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [10:0]Q;
  wire addr_cnt;
  wire \addr_cnt[0]_i_1_n_0 ;
  wire \addr_cnt[10]_i_2_n_0 ;
  wire \addr_cnt[10]_i_3_n_0 ;
  wire \addr_cnt[10]_i_4_n_0 ;
  wire \addr_cnt[11]_i_1_n_0 ;
  wire \addr_cnt[12]_i_1_n_0 ;
  wire \addr_cnt[1]_i_1_n_0 ;
  wire \addr_cnt[2]_i_1_n_0 ;
  wire \addr_cnt[3]_i_1_n_0 ;
  wire \addr_cnt[4]_i_1_n_0 ;
  wire \addr_cnt[5]_i_1_n_0 ;
  wire \addr_cnt[5]_i_2_n_0 ;
  wire \addr_cnt[6]_i_1_n_0 ;
  wire \addr_cnt[7]_i_1_n_0 ;
  wire \addr_cnt[8]_i_1_n_0 ;
  wire \addr_cnt[9]_i_1_n_0 ;
  wire \addr_cnt[9]_i_2_n_0 ;
  wire \addr_cnt_reg_n_0_[11] ;
  wire \addr_cnt_reg_n_0_[12] ;
  wire clk;
  wire done;
  wire reset_n;
  wire start;
  wire start_r1;
  wire start_r2;
  wire wea;

  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\addr_cnt[10]_i_4_n_0 ),
        .I1(\addr_cnt_reg_n_0_[11] ),
        .I2(Q[10]),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_r1),
        .I2(start_r2),
        .I3(done),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(done),
        .PRE(\addr_cnt[10]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .O(\addr_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    \addr_cnt[10]_i_1 
       (.I0(done),
        .I1(start_r2),
        .I2(start_r1),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(addr_cnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[10]_i_2 
       (.I0(Q[10]),
        .I1(\addr_cnt[10]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[10]_i_3 
       (.I0(reset_n),
        .O(\addr_cnt[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_cnt[10]_i_4 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(Q[9]),
        .O(\addr_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[11]_i_1 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt[10]_i_4_n_0 ),
        .I2(Q[10]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[12]_i_1 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[11] ),
        .I2(Q[10]),
        .I3(\addr_cnt[10]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF28)) 
    \addr_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(done),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[5]_i_1 
       (.I0(Q[5]),
        .I1(\addr_cnt[5]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_cnt[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\addr_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_cnt[6]_i_1 
       (.I0(Q[6]),
        .I1(\addr_cnt[9]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_cnt[7]_i_1 
       (.I0(Q[7]),
        .I1(\addr_cnt[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_cnt[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[7]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_cnt[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\addr_cnt[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_cnt[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\addr_cnt[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[10]_i_2_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(clk),
        .CE(addr_cnt),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(Q[9]));
  FDRE start_r1_reg
       (.C(clk),
        .CE(reset_n),
        .D(start),
        .Q(start_r1),
        .R(1'b0));
  FDRE start_r2_reg
       (.C(clk),
        .CE(reset_n),
        .D(start_r1),
        .Q(start_r2),
        .R(1'b0));
  FDRE wea_reg
       (.C(clk),
        .CE(reset_n),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(wea),
        .R(1'b0));
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
