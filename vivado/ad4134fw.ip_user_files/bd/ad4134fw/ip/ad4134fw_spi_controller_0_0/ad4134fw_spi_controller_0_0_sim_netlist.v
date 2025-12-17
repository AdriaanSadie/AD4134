// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 16 21:40:49 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_spi_controller_0_0/ad4134fw_spi_controller_0_0_sim_netlist.v
// Design      : ad4134fw_spi_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_spi_controller_0_0,spi_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_controller,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_spi_controller_0_0
   (clk,
    rstn,
    write,
    read,
    datain,
    dataout,
    spiaddr,
    spidone,
    mosi,
    miso,
    cs_n);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_mode = "slave rstn" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input write;
  input read;
  input [7:0]datain;
  output [7:0]dataout;
  input [7:0]spiaddr;
  output spidone;
  output mosi;
  input miso;
  output cs_n;

  wire clk;
  wire cs_n;
  wire [7:0]datain;
  wire [7:0]dataout;
  wire miso;
  wire mosi;
  wire read;
  wire rstn;
  wire [7:0]spiaddr;
  wire spidone;
  wire write;

  ad4134fw_spi_controller_0_0_spi_controller U0
       (.clk(clk),
        .cs_n(cs_n),
        .datain(datain),
        .dataout(dataout),
        .miso(miso),
        .mosi(mosi),
        .read(read),
        .rstn(rstn),
        .spiaddr(spiaddr),
        .spidone_i_reg_0(spidone),
        .write(write));
endmodule

(* ORIG_REF_NAME = "spi_controller" *) 
module ad4134fw_spi_controller_0_0_spi_controller
   (spidone_i_reg_0,
    dataout,
    mosi,
    cs_n,
    clk,
    miso,
    rstn,
    read,
    write,
    datain,
    spiaddr);
  output spidone_i_reg_0;
  output [7:0]dataout;
  output mosi;
  output cs_n;
  input clk;
  input miso;
  input rstn;
  input read;
  input write;
  input [7:0]datain;
  input [7:0]spiaddr;

  wire \FSM_sequential_spi_state[2]_i_1_n_0 ;
  wire \FSM_sequential_spi_state[2]_i_3_n_0 ;
  wire \FSM_sequential_spi_state[2]_i_4_n_0 ;
  wire clk;
  wire cs_n;
  wire cs_n_i_i_1_n_0;
  wire cs_n_i_i_2_n_0;
  wire [7:0]datain;
  wire [7:0]dataout;
  wire \dataout_i[0]_i_1_n_0 ;
  wire \dataout_i[1]_i_1_n_0 ;
  wire \dataout_i[2]_i_1_n_0 ;
  wire \dataout_i[3]_i_1_n_0 ;
  wire \dataout_i[3]_i_2_n_0 ;
  wire \dataout_i[3]_i_3_n_0 ;
  wire \dataout_i[4]_i_1_n_0 ;
  wire \dataout_i[4]_i_2_n_0 ;
  wire \dataout_i[5]_i_1_n_0 ;
  wire \dataout_i[5]_i_2_n_0 ;
  wire \dataout_i[6]_i_1_n_0 ;
  wire \dataout_i[6]_i_2_n_0 ;
  wire \dataout_i[7]_i_1_n_0 ;
  wire \dataout_i[7]_i_3_n_0 ;
  wire miso;
  wire mosi;
  wire mosi0;
  wire mosi_i_1_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_7_n_0;
  wire mosi_i_8_n_0;
  wire mosi_reg_i_2_n_0;
  wire mosi_reg_i_3_n_0;
  wire p_0_in;
  wire read;
  wire rstn;
  wire [2:0]spi_state__0;
  wire [2:0]spi_state__1;
  wire [7:0]spiaddr;
  wire \spibitcount[0]_i_1_n_0 ;
  wire \spibitcount[1]_i_1_n_0 ;
  wire \spibitcount[2]_i_1_n_0 ;
  wire \spibitcount[3]_i_1_n_0 ;
  wire \spibitcount[3]_i_2_n_0 ;
  wire \spibitcount[3]_i_3_n_0 ;
  wire \spibitcount_reg_n_0_[0] ;
  wire \spibitcount_reg_n_0_[1] ;
  wire \spibitcount_reg_n_0_[2] ;
  wire \spibitcount_reg_n_0_[3] ;
  wire spidone_i_i_1_n_0;
  wire spidone_i_i_2_n_0;
  wire spidone_i_reg_0;
  wire spiendcount;
  wire \spiendcount[0]_i_1_n_0 ;
  wire \spiendcount[1]_i_1_n_0 ;
  wire \spiendcount[2]_i_1_n_0 ;
  wire \spiendcount[3]_i_2_n_0 ;
  wire \spiendcount_reg_n_0_[0] ;
  wire \spiendcount_reg_n_0_[1] ;
  wire \spiendcount_reg_n_0_[2] ;
  wire \spiendcount_reg_n_0_[3] ;
  wire write;

  LUT6 #(
    .INIT(64'h000000F300000FF2)) 
    \FSM_sequential_spi_state[0]_i_1 
       (.I0(read),
        .I1(spidone_i_reg_0),
        .I2(spi_state__0[2]),
        .I3(spi_state__0[0]),
        .I4(spi_state__0[1]),
        .I5(write),
        .O(spi_state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_spi_state[1]_i_1 
       (.I0(spi_state__0[1]),
        .I1(spi_state__0[0]),
        .I2(spi_state__0[2]),
        .O(spi_state__1[1]));
  LUT6 #(
    .INIT(64'hFF00DF000000DD00)) 
    \FSM_sequential_spi_state[2]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\FSM_sequential_spi_state[2]_i_3_n_0 ),
        .I2(cs_n_i_i_2_n_0),
        .I3(rstn),
        .I4(spi_state__0[1]),
        .I5(\FSM_sequential_spi_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_spi_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_spi_state[2]_i_2 
       (.I0(spi_state__0[0]),
        .I1(spi_state__0[2]),
        .I2(spi_state__0[1]),
        .O(spi_state__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_spi_state[2]_i_3 
       (.I0(spi_state__0[2]),
        .I1(\spiendcount_reg_n_0_[2] ),
        .I2(\spiendcount_reg_n_0_[0] ),
        .I3(\spiendcount_reg_n_0_[1] ),
        .I4(\spiendcount_reg_n_0_[3] ),
        .O(\FSM_sequential_spi_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_spi_state[2]_i_4 
       (.I0(spi_state__0[2]),
        .I1(\spibitcount_reg_n_0_[2] ),
        .I2(\spibitcount_reg_n_0_[3] ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(\spibitcount_reg_n_0_[1] ),
        .O(\FSM_sequential_spi_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_spi_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_spi_state[2]_i_1_n_0 ),
        .D(spi_state__1[0]),
        .Q(spi_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_spi_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_spi_state[2]_i_1_n_0 ),
        .D(spi_state__1[1]),
        .Q(spi_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_spi_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_spi_state[2]_i_1_n_0 ),
        .D(spi_state__1[2]),
        .Q(spi_state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE11110000)) 
    cs_n_i_i_1
       (.I0(spi_state__0[1]),
        .I1(spi_state__0[0]),
        .I2(spidone_i_reg_0),
        .I3(cs_n_i_i_2_n_0),
        .I4(spi_state__0[2]),
        .I5(cs_n),
        .O(cs_n_i_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cs_n_i_i_2
       (.I0(read),
        .I1(write),
        .O(cs_n_i_i_2_n_0));
  FDPE cs_n_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_n_i_i_1_n_0),
        .PRE(p_0_in),
        .Q(cs_n));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \dataout_i[0]_i_1 
       (.I0(miso),
        .I1(\dataout_i[3]_i_2_n_0 ),
        .I2(\dataout_i[3]_i_3_n_0 ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(\spibitcount_reg_n_0_[1] ),
        .I5(dataout[0]),
        .O(\dataout_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \dataout_i[1]_i_1 
       (.I0(miso),
        .I1(\dataout_i[3]_i_2_n_0 ),
        .I2(\dataout_i[3]_i_3_n_0 ),
        .I3(\spibitcount_reg_n_0_[1] ),
        .I4(\spibitcount_reg_n_0_[0] ),
        .I5(dataout[1]),
        .O(\dataout_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \dataout_i[2]_i_1 
       (.I0(miso),
        .I1(\dataout_i[3]_i_2_n_0 ),
        .I2(\dataout_i[3]_i_3_n_0 ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(\spibitcount_reg_n_0_[1] ),
        .I5(dataout[2]),
        .O(\dataout_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \dataout_i[3]_i_1 
       (.I0(miso),
        .I1(\dataout_i[3]_i_2_n_0 ),
        .I2(\dataout_i[3]_i_3_n_0 ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(\spibitcount_reg_n_0_[1] ),
        .I5(dataout[3]),
        .O(\dataout_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dataout_i[3]_i_2 
       (.I0(\spibitcount_reg_n_0_[2] ),
        .I1(\spibitcount_reg_n_0_[3] ),
        .O(\dataout_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \dataout_i[3]_i_3 
       (.I0(spi_state__0[2]),
        .I1(spi_state__0[1]),
        .I2(spi_state__0[0]),
        .O(\dataout_i[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \dataout_i[4]_i_1 
       (.I0(miso),
        .I1(\spibitcount_reg_n_0_[3] ),
        .I2(\spibitcount_reg_n_0_[2] ),
        .I3(\dataout_i[4]_i_2_n_0 ),
        .I4(dataout[4]),
        .O(\dataout_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \dataout_i[4]_i_2 
       (.I0(\spibitcount_reg_n_0_[1] ),
        .I1(\spibitcount_reg_n_0_[0] ),
        .I2(spi_state__0[0]),
        .I3(spi_state__0[1]),
        .I4(spi_state__0[2]),
        .O(\dataout_i[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \dataout_i[5]_i_1 
       (.I0(miso),
        .I1(\spibitcount_reg_n_0_[3] ),
        .I2(\spibitcount_reg_n_0_[2] ),
        .I3(\dataout_i[5]_i_2_n_0 ),
        .I4(dataout[5]),
        .O(\dataout_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \dataout_i[5]_i_2 
       (.I0(\spibitcount_reg_n_0_[0] ),
        .I1(\spibitcount_reg_n_0_[1] ),
        .I2(spi_state__0[0]),
        .I3(spi_state__0[1]),
        .I4(spi_state__0[2]),
        .O(\dataout_i[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \dataout_i[6]_i_1 
       (.I0(miso),
        .I1(\spibitcount_reg_n_0_[3] ),
        .I2(\spibitcount_reg_n_0_[2] ),
        .I3(\dataout_i[6]_i_2_n_0 ),
        .I4(dataout[6]),
        .O(\dataout_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \dataout_i[6]_i_2 
       (.I0(\spibitcount_reg_n_0_[1] ),
        .I1(\spibitcount_reg_n_0_[0] ),
        .I2(spi_state__0[0]),
        .I3(spi_state__0[1]),
        .I4(spi_state__0[2]),
        .O(\dataout_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \dataout_i[7]_i_1 
       (.I0(miso),
        .I1(\spibitcount_reg_n_0_[3] ),
        .I2(\spibitcount_reg_n_0_[2] ),
        .I3(\dataout_i[7]_i_3_n_0 ),
        .I4(dataout[7]),
        .O(\dataout_i[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dataout_i[7]_i_2 
       (.I0(rstn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \dataout_i[7]_i_3 
       (.I0(\spibitcount_reg_n_0_[1] ),
        .I1(\spibitcount_reg_n_0_[0] ),
        .I2(spi_state__0[0]),
        .I3(spi_state__0[1]),
        .I4(spi_state__0[2]),
        .O(\dataout_i[7]_i_3_n_0 ));
  FDCE \dataout_i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[0]_i_1_n_0 ),
        .Q(dataout[0]));
  FDCE \dataout_i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[1]_i_1_n_0 ),
        .Q(dataout[1]));
  FDCE \dataout_i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[2]_i_1_n_0 ),
        .Q(dataout[2]));
  FDCE \dataout_i_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[3]_i_1_n_0 ),
        .Q(dataout[3]));
  FDCE \dataout_i_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[4]_i_1_n_0 ),
        .Q(dataout[4]));
  FDCE \dataout_i_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[5]_i_1_n_0 ),
        .Q(dataout[5]));
  FDCE \dataout_i_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[6]_i_1_n_0 ),
        .Q(dataout[6]));
  FDCE \dataout_i_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\dataout_i[7]_i_1_n_0 ),
        .Q(dataout[7]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    mosi_i_1
       (.I0(mosi_reg_i_2_n_0),
        .I1(spi_state__0[1]),
        .I2(mosi_reg_i_3_n_0),
        .I3(spi_state__0[2]),
        .I4(mosi0),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    mosi_i_4
       (.I0(rstn),
        .I1(spi_state__0[0]),
        .I2(spi_state__0[1]),
        .I3(spi_state__0[2]),
        .O(mosi0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(spiaddr[3]),
        .I1(spiaddr[2]),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(spiaddr[1]),
        .I4(\spibitcount_reg_n_0_[0] ),
        .I5(spiaddr[0]),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_6
       (.I0(spiaddr[7]),
        .I1(spiaddr[6]),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(spiaddr[5]),
        .I4(\spibitcount_reg_n_0_[0] ),
        .I5(spiaddr[4]),
        .O(mosi_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_7
       (.I0(datain[3]),
        .I1(datain[2]),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(datain[1]),
        .I4(\spibitcount_reg_n_0_[0] ),
        .I5(datain[0]),
        .O(mosi_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_8
       (.I0(datain[7]),
        .I1(datain[6]),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(datain[5]),
        .I4(\spibitcount_reg_n_0_[0] ),
        .I5(datain[4]),
        .O(mosi_i_8_n_0));
  FDRE mosi_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(mosi),
        .R(1'b0));
  MUXF7 mosi_reg_i_2
       (.I0(mosi_i_5_n_0),
        .I1(mosi_i_6_n_0),
        .O(mosi_reg_i_2_n_0),
        .S(\spibitcount_reg_n_0_[2] ));
  MUXF7 mosi_reg_i_3
       (.I0(mosi_i_7_n_0),
        .I1(mosi_i_8_n_0),
        .O(mosi_reg_i_3_n_0),
        .S(\spibitcount_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h37)) 
    \spibitcount[0]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\spibitcount_reg_n_0_[0] ),
        .I2(spi_state__0[1]),
        .O(\spibitcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF11F)) 
    \spibitcount[1]_i_1 
       (.I0(spi_state__0[0]),
        .I1(spi_state__0[1]),
        .I2(\spibitcount_reg_n_0_[0] ),
        .I3(\spibitcount_reg_n_0_[1] ),
        .O(\spibitcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCCC3DDD7)) 
    \spibitcount[2]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\spibitcount_reg_n_0_[2] ),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(spi_state__0[1]),
        .O(\spibitcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555454544454445)) 
    \spibitcount[3]_i_1 
       (.I0(spi_state__0[2]),
        .I1(spi_state__0[1]),
        .I2(cs_n_i_i_2_n_0),
        .I3(spidone_i_reg_0),
        .I4(\spibitcount[3]_i_3_n_0 ),
        .I5(spi_state__0[0]),
        .O(\spibitcount[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000EEE00000)) 
    \spibitcount[3]_i_2 
       (.I0(spi_state__0[0]),
        .I1(spi_state__0[1]),
        .I2(\spibitcount_reg_n_0_[1] ),
        .I3(\spibitcount_reg_n_0_[0] ),
        .I4(\spibitcount_reg_n_0_[3] ),
        .I5(\spibitcount_reg_n_0_[2] ),
        .O(\spibitcount[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spibitcount[3]_i_3 
       (.I0(\spibitcount_reg_n_0_[1] ),
        .I1(\spibitcount_reg_n_0_[0] ),
        .I2(\spibitcount_reg_n_0_[3] ),
        .I3(\spibitcount_reg_n_0_[2] ),
        .O(\spibitcount[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \spibitcount_reg[0] 
       (.C(clk),
        .CE(\spibitcount[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\spibitcount[0]_i_1_n_0 ),
        .Q(\spibitcount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \spibitcount_reg[1] 
       (.C(clk),
        .CE(\spibitcount[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\spibitcount[1]_i_1_n_0 ),
        .Q(\spibitcount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \spibitcount_reg[2] 
       (.C(clk),
        .CE(\spibitcount[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\spibitcount[2]_i_1_n_0 ),
        .Q(\spibitcount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \spibitcount_reg[3] 
       (.C(clk),
        .CE(\spibitcount[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\spibitcount[3]_i_2_n_0 ),
        .Q(\spibitcount_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    spidone_i_i_1
       (.I0(spidone_i_i_2_n_0),
        .I1(spi_state__0[2]),
        .I2(spi_state__0[0]),
        .I3(spi_state__0[1]),
        .I4(spidone_i_reg_0),
        .O(spidone_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    spidone_i_i_2
       (.I0(\spiendcount_reg_n_0_[3] ),
        .I1(\spiendcount_reg_n_0_[1] ),
        .I2(\spiendcount_reg_n_0_[0] ),
        .I3(\spiendcount_reg_n_0_[2] ),
        .O(spidone_i_i_2_n_0));
  FDCE spidone_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(spidone_i_i_1_n_0),
        .Q(spidone_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spiendcount[0]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\spiendcount_reg_n_0_[0] ),
        .O(\spiendcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \spiendcount[1]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\spiendcount_reg_n_0_[1] ),
        .I2(\spiendcount_reg_n_0_[0] ),
        .O(\spiendcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \spiendcount[2]_i_1 
       (.I0(spi_state__0[0]),
        .I1(\spiendcount_reg_n_0_[1] ),
        .I2(\spiendcount_reg_n_0_[0] ),
        .I3(\spiendcount_reg_n_0_[2] ),
        .O(\spiendcount[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4044)) 
    \spiendcount[3]_i_1 
       (.I0(spi_state__0[1]),
        .I1(spi_state__0[2]),
        .I2(spidone_i_i_2_n_0),
        .I3(spi_state__0[0]),
        .O(spiendcount));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \spiendcount[3]_i_2 
       (.I0(spi_state__0[0]),
        .I1(\spiendcount_reg_n_0_[2] ),
        .I2(\spiendcount_reg_n_0_[0] ),
        .I3(\spiendcount_reg_n_0_[1] ),
        .I4(\spiendcount_reg_n_0_[3] ),
        .O(\spiendcount[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \spiendcount_reg[0] 
       (.C(clk),
        .CE(spiendcount),
        .CLR(p_0_in),
        .D(\spiendcount[0]_i_1_n_0 ),
        .Q(\spiendcount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \spiendcount_reg[1] 
       (.C(clk),
        .CE(spiendcount),
        .CLR(p_0_in),
        .D(\spiendcount[1]_i_1_n_0 ),
        .Q(\spiendcount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \spiendcount_reg[2] 
       (.C(clk),
        .CE(spiendcount),
        .CLR(p_0_in),
        .D(\spiendcount[2]_i_1_n_0 ),
        .Q(\spiendcount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \spiendcount_reg[3] 
       (.C(clk),
        .CE(spiendcount),
        .CLR(p_0_in),
        .D(\spiendcount[3]_i_2_n_0 ),
        .Q(\spiendcount_reg_n_0_[3] ));
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
