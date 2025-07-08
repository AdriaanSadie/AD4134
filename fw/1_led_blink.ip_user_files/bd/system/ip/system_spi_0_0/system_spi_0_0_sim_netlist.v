// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec 18 16:41:22 2023
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/adria/OneDrive/Documents/Adriaan/Werk
//               Goedjies/BTT/fw/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_sim_netlist.v}
// Design      : system_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_spi_0_0,spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_spi_0_0
   (clk_in,
    rstn,
    axi_gpio_in,
    axi_gpio_out,
    sclk,
    csn,
    mosi,
    miso);
  input clk_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  output sclk;
  output [3:0]csn;
  output mosi;
  input miso;

  wire \<const0> ;
  wire [31:0]axi_gpio_in;
  wire [15:0]\^axi_gpio_out ;
  wire clk_in;
  wire [3:0]csn;
  wire miso;
  wire mosi;
  wire rstn;
  wire sclk;

  assign axi_gpio_out[31] = \<const0> ;
  assign axi_gpio_out[30] = \<const0> ;
  assign axi_gpio_out[29] = \<const0> ;
  assign axi_gpio_out[28] = \<const0> ;
  assign axi_gpio_out[27] = \<const0> ;
  assign axi_gpio_out[26] = \<const0> ;
  assign axi_gpio_out[25] = \<const0> ;
  assign axi_gpio_out[24] = \<const0> ;
  assign axi_gpio_out[23] = \<const0> ;
  assign axi_gpio_out[22] = \<const0> ;
  assign axi_gpio_out[21] = \<const0> ;
  assign axi_gpio_out[20] = \<const0> ;
  assign axi_gpio_out[19] = \<const0> ;
  assign axi_gpio_out[18] = \<const0> ;
  assign axi_gpio_out[17] = \<const0> ;
  assign axi_gpio_out[16] = \<const0> ;
  assign axi_gpio_out[15:0] = \^axi_gpio_out [15:0];
  GND GND
       (.G(\<const0> ));
  system_spi_0_0_spi U0
       (.axi_gpio_in(axi_gpio_in[15:0]),
        .axi_gpio_out(\^axi_gpio_out ),
        .clk_in(clk_in),
        .csn(csn),
        .miso(miso),
        .mosi(mosi),
        .rstn(rstn),
        .sclk(sclk));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module system_spi_0_0_spi
   (axi_gpio_out,
    csn,
    mosi,
    sclk,
    axi_gpio_in,
    miso,
    rstn,
    clk_in);
  output [15:0]axi_gpio_out;
  output [3:0]csn;
  output mosi;
  output sclk;
  input [15:0]axi_gpio_in;
  input miso;
  input rstn;
  input clk_in;

  wire \FSM_onehot_spi_state[0]_i_1_n_0 ;
  wire \FSM_onehot_spi_state[1]_i_1_n_0 ;
  wire \FSM_onehot_spi_state[2]_i_1_n_0 ;
  wire \FSM_onehot_spi_state[2]_i_2_n_0 ;
  wire \FSM_onehot_spi_state[2]_i_3_n_0 ;
  wire \FSM_onehot_spi_state_reg_n_0_[0] ;
  wire [15:0]axi_gpio_in;
  wire \axi_gpio_in_reg1_reg_n_0_[0] ;
  wire \axi_gpio_in_reg1_reg_n_0_[11] ;
  wire \axi_gpio_in_reg1_reg_n_0_[12] ;
  wire \axi_gpio_in_reg1_reg_n_0_[13] ;
  wire \axi_gpio_in_reg1_reg_n_0_[15] ;
  wire \axi_gpio_in_reg1_reg_n_0_[1] ;
  wire \axi_gpio_in_reg1_reg_n_0_[2] ;
  wire \axi_gpio_in_reg1_reg_n_0_[3] ;
  wire \axi_gpio_in_reg1_reg_n_0_[4] ;
  wire \axi_gpio_in_reg1_reg_n_0_[5] ;
  wire \axi_gpio_in_reg1_reg_n_0_[6] ;
  wire \axi_gpio_in_reg1_reg_n_0_[7] ;
  wire \axi_gpio_in_reg1_reg_n_0_[8] ;
  wire \axi_gpio_in_reg1_reg_n_0_[9] ;
  wire [15:15]axi_gpio_in_reg2;
  wire [15:0]axi_gpio_out;
  wire \axi_gpio_out[15]_i_1_n_0 ;
  wire \axi_gpio_out[15]_i_2_n_0 ;
  wire clk_in;
  wire [2:0]cs_reg;
  wire [3:0]csn;
  wire [0:0]csn_r;
  wire [3:0]csn_w;
  wire \csn_w_reg_n_0_[0] ;
  wire ctrl_reg0;
  wire \ctrl_reg[0]_i_1_n_0 ;
  wire \ctrl_reg[1]_i_1_n_0 ;
  wire miso;
  wire mosi;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_7_n_0;
  wire mosi_i_8_n_0;
  wire [4:1]p_0_in;
  wire p_0_in_0;
  wire [5:0]p_0_in__0;
  wire [4:1]p_0_in__1;
  wire [3:1]p_0_in__2;
  wire p_1_in;
  wire rstn;
  wire sclk;
  wire [15:0]sdi_reg;
  wire \sdi_reg[0]_i_1_n_0 ;
  wire \sdi_reg[0]_i_2_n_0 ;
  wire \sdi_reg[10]_i_1_n_0 ;
  wire \sdi_reg[11]_i_1_n_0 ;
  wire \sdi_reg[12]_i_1_n_0 ;
  wire \sdi_reg[12]_i_2_n_0 ;
  wire \sdi_reg[12]_i_3_n_0 ;
  wire \sdi_reg[13]_i_1_n_0 ;
  wire \sdi_reg[13]_i_2_n_0 ;
  wire \sdi_reg[14]_i_1_n_0 ;
  wire \sdi_reg[14]_i_2_n_0 ;
  wire \sdi_reg[15]_i_1_n_0 ;
  wire \sdi_reg[15]_i_2_n_0 ;
  wire \sdi_reg[1]_i_1_n_0 ;
  wire \sdi_reg[2]_i_1_n_0 ;
  wire \sdi_reg[3]_i_1_n_0 ;
  wire \sdi_reg[4]_i_1_n_0 ;
  wire \sdi_reg[5]_i_1_n_0 ;
  wire \sdi_reg[6]_i_1_n_0 ;
  wire \sdi_reg[7]_i_1_n_0 ;
  wire \sdi_reg[8]_i_1_n_0 ;
  wire \sdi_reg[9]_i_1_n_0 ;
  wire \sdo_reg[0]_i_1_n_0 ;
  wire \sdo_reg[1]_i_1_n_0 ;
  wire \sdo_reg[9]_i_1_n_0 ;
  wire \shift_counter_r[0]_i_1_n_0 ;
  wire [4:0]shift_counter_r_reg;
  wire \shift_counter_w[0]_i_1_n_0 ;
  wire [3:0]shift_counter_w_reg;
  wire [12:0]shift_reg;
  wire spi_clk_counter0;
  wire \spi_clk_counter[0]_i_3_n_0 ;
  wire \spi_clk_counter[0]_i_4_n_0 ;
  wire \spi_clk_counter[0]_i_5_n_0 ;
  wire \spi_clk_counter[0]_i_6_n_0 ;
  wire [12:0]spi_clk_counter_reg;
  wire \spi_clk_counter_reg[0]_i_2_n_0 ;
  wire \spi_clk_counter_reg[0]_i_2_n_1 ;
  wire \spi_clk_counter_reg[0]_i_2_n_2 ;
  wire \spi_clk_counter_reg[0]_i_2_n_3 ;
  wire \spi_clk_counter_reg[0]_i_2_n_4 ;
  wire \spi_clk_counter_reg[0]_i_2_n_5 ;
  wire \spi_clk_counter_reg[0]_i_2_n_6 ;
  wire \spi_clk_counter_reg[0]_i_2_n_7 ;
  wire \spi_clk_counter_reg[12]_i_1_n_7 ;
  wire \spi_clk_counter_reg[4]_i_1_n_0 ;
  wire \spi_clk_counter_reg[4]_i_1_n_1 ;
  wire \spi_clk_counter_reg[4]_i_1_n_2 ;
  wire \spi_clk_counter_reg[4]_i_1_n_3 ;
  wire \spi_clk_counter_reg[4]_i_1_n_4 ;
  wire \spi_clk_counter_reg[4]_i_1_n_5 ;
  wire \spi_clk_counter_reg[4]_i_1_n_6 ;
  wire \spi_clk_counter_reg[4]_i_1_n_7 ;
  wire \spi_clk_counter_reg[8]_i_1_n_0 ;
  wire \spi_clk_counter_reg[8]_i_1_n_1 ;
  wire \spi_clk_counter_reg[8]_i_1_n_2 ;
  wire \spi_clk_counter_reg[8]_i_1_n_3 ;
  wire \spi_clk_counter_reg[8]_i_1_n_4 ;
  wire \spi_clk_counter_reg[8]_i_1_n_5 ;
  wire \spi_clk_counter_reg[8]_i_1_n_6 ;
  wire \spi_clk_counter_reg[8]_i_1_n_7 ;
  wire spi_clock;
  wire spi_clock_flag_r;
  wire spi_clock_flag_w;
  wire spi_clock_i_1_n_0;
  wire spi_read_flag;
  wire spi_read_flag_i_1_n_0;
  wire spi_read_flag_i_3_n_0;
  wire spi_read_flag_reg_n_0;
  wire spi_read_tracker;
  wire [5:0]spi_read_tracker_reg;
  wire spi_write_flag;
  wire spi_write_flag_i_1_n_0;
  wire spi_write_flag_reg_n_0;
  wire spi_write_tracker;
  wire \spi_write_tracker[0]_i_1_n_0 ;
  wire [4:4]spi_write_tracker_reg;
  wire \spi_write_tracker_reg_n_0_[0] ;
  wire \spi_write_tracker_reg_n_0_[1] ;
  wire \spi_write_tracker_reg_n_0_[2] ;
  wire \spi_write_tracker_reg_n_0_[3] ;
  wire [3:0]\NLW_spi_clk_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_spi_clk_counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFEFFFFFFEEEE0000)) 
    \FSM_onehot_spi_state[0]_i_1 
       (.I0(spi_read_tracker),
        .I1(spi_write_tracker),
        .I2(axi_gpio_in_reg2),
        .I3(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I4(\FSM_onehot_spi_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .O(\FSM_onehot_spi_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    \FSM_onehot_spi_state[1]_i_1 
       (.I0(axi_gpio_in_reg2),
        .I1(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I2(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I3(\ctrl_reg[0]_i_1_n_0 ),
        .I4(\FSM_onehot_spi_state[2]_i_2_n_0 ),
        .I5(spi_write_tracker),
        .O(\FSM_onehot_spi_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \FSM_onehot_spi_state[2]_i_1 
       (.I0(axi_gpio_in_reg2),
        .I1(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I2(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I3(\ctrl_reg[0]_i_1_n_0 ),
        .I4(\FSM_onehot_spi_state[2]_i_2_n_0 ),
        .I5(spi_read_tracker),
        .O(\FSM_onehot_spi_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \FSM_onehot_spi_state[2]_i_2 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I1(spi_write_tracker_reg),
        .I2(spi_write_tracker),
        .I3(\FSM_onehot_spi_state[2]_i_3_n_0 ),
        .I4(spi_read_tracker_reg[5]),
        .I5(spi_read_tracker),
        .O(\FSM_onehot_spi_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_spi_state[2]_i_3 
       (.I0(spi_read_tracker_reg[1]),
        .I1(spi_read_tracker_reg[2]),
        .I2(spi_read_tracker_reg[3]),
        .I3(spi_read_tracker_reg[4]),
        .O(\FSM_onehot_spi_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "spi_idle:001,spi_read:100,spi_write:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_spi_state_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\FSM_onehot_spi_state[0]_i_1_n_0 ),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(\FSM_onehot_spi_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "spi_idle:001,spi_read:100,spi_write:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_state_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(\FSM_onehot_spi_state[1]_i_1_n_0 ),
        .Q(spi_write_tracker));
  (* FSM_ENCODED_STATES = "spi_idle:001,spi_read:100,spi_write:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_state_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(\FSM_onehot_spi_state[2]_i_1_n_0 ),
        .Q(spi_read_tracker));
  FDCE \axi_gpio_in_reg1_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[0]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[0] ));
  FDCE \axi_gpio_in_reg1_reg[10] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[10]),
        .Q(p_0_in_0));
  FDCE \axi_gpio_in_reg1_reg[11] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[11]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[11] ));
  FDCE \axi_gpio_in_reg1_reg[12] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[12]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[12] ));
  FDCE \axi_gpio_in_reg1_reg[13] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[13]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[13] ));
  FDCE \axi_gpio_in_reg1_reg[14] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[14]),
        .Q(p_1_in));
  FDCE \axi_gpio_in_reg1_reg[15] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[15]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[15] ));
  FDCE \axi_gpio_in_reg1_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[1]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[1] ));
  FDCE \axi_gpio_in_reg1_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[2]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[2] ));
  FDCE \axi_gpio_in_reg1_reg[3] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[3]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[3] ));
  FDCE \axi_gpio_in_reg1_reg[4] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[4]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[4] ));
  FDCE \axi_gpio_in_reg1_reg[5] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[5]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[5] ));
  FDCE \axi_gpio_in_reg1_reg[6] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[6]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[6] ));
  FDCE \axi_gpio_in_reg1_reg[7] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[7]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[7] ));
  FDCE \axi_gpio_in_reg1_reg[8] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[8]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[8] ));
  FDCE \axi_gpio_in_reg1_reg[9] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(axi_gpio_in[9]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[9] ));
  FDCE \axi_gpio_in_reg2_reg[15] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .Q(axi_gpio_in_reg2));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_gpio_out[15]_i_1 
       (.I0(spi_read_flag_reg_n_0),
        .O(\axi_gpio_out[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_gpio_out[15]_i_2 
       (.I0(rstn),
        .O(\axi_gpio_out[15]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[0] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[0]),
        .Q(axi_gpio_out[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[10] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[10]),
        .Q(axi_gpio_out[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[11] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[11]),
        .Q(axi_gpio_out[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[12] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[12]),
        .Q(axi_gpio_out[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[13] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[13]),
        .Q(axi_gpio_out[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[14] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[14]),
        .Q(axi_gpio_out[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[15] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[15]),
        .Q(axi_gpio_out[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[1] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[1]),
        .Q(axi_gpio_out[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[2] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[2]),
        .Q(axi_gpio_out[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[3] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[3]),
        .Q(axi_gpio_out[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[4] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[4]),
        .Q(axi_gpio_out[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[5] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[5]),
        .Q(axi_gpio_out[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[6] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[6]),
        .Q(axi_gpio_out[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[7] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[7]),
        .Q(axi_gpio_out[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[8] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[8]),
        .Q(axi_gpio_out[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_gpio_out_reg[9] 
       (.C(spi_clock),
        .CE(\axi_gpio_out[15]_i_1_n_0 ),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(sdi_reg[9]),
        .Q(axi_gpio_out[9]));
  LUT4 #(
    .INIT(16'h0080)) 
    \cs_reg[2]_i_1 
       (.I0(rstn),
        .I1(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I2(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I3(axi_gpio_in_reg2),
        .O(ctrl_reg0));
  FDRE \cs_reg_reg[0] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[11] ),
        .Q(cs_reg[0]),
        .R(1'b0));
  FDRE \cs_reg_reg[1] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[12] ),
        .Q(cs_reg[1]),
        .R(1'b0));
  FDRE \cs_reg_reg[2] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[13] ),
        .Q(cs_reg[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \csn[0]_INST_0 
       (.I0(\csn_w_reg_n_0_[0] ),
        .I1(csn_r),
        .O(csn[0]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \csn_r_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\axi_gpio_out[15]_i_1_n_0 ),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(csn_r));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \csn_w[0]_i_1 
       (.I0(cs_reg[2]),
        .I1(spi_write_flag_reg_n_0),
        .I2(cs_reg[1]),
        .I3(cs_reg[0]),
        .O(csn_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \csn_w[1]_i_1 
       (.I0(cs_reg[2]),
        .I1(spi_write_flag_reg_n_0),
        .I2(cs_reg[1]),
        .I3(cs_reg[0]),
        .O(csn_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \csn_w[2]_i_1 
       (.I0(cs_reg[1]),
        .I1(cs_reg[2]),
        .I2(spi_write_flag_reg_n_0),
        .I3(cs_reg[0]),
        .O(csn_w[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \csn_w[3]_i_1 
       (.I0(cs_reg[1]),
        .I1(cs_reg[2]),
        .I2(spi_write_flag_reg_n_0),
        .I3(cs_reg[0]),
        .O(csn_w[3]));
  FDPE \csn_w_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(csn_w[0]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(\csn_w_reg_n_0_[0] ));
  FDPE \csn_w_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(csn_w[1]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(csn[1]));
  FDPE \csn_w_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(csn_w[2]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(csn[2]));
  FDPE \csn_w_reg[3] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(csn_w[3]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(csn[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ctrl_reg[0]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in_0),
        .O(\ctrl_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_reg[1]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in_0),
        .O(\ctrl_reg[1]_i_1_n_0 ));
  FDRE \ctrl_reg_reg[0] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\ctrl_reg[0]_i_1_n_0 ),
        .Q(shift_reg[10]),
        .R(1'b0));
  FDRE \ctrl_reg_reg[1] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\ctrl_reg[1]_i_1_n_0 ),
        .Q(shift_reg[11]),
        .R(1'b0));
  FDRE \ctrl_reg_reg[2] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(p_1_in),
        .Q(shift_reg[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8C00800)) 
    mosi_i_1
       (.I0(shift_counter_w_reg[0]),
        .I1(spi_write_flag_reg_n_0),
        .I2(shift_counter_w_reg[2]),
        .I3(mosi_i_2_n_0),
        .I4(mosi_i_3_n_0),
        .I5(mosi_i_4_n_0),
        .O(mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_2
       (.I0(shift_reg[11]),
        .I1(shift_reg[3]),
        .I2(shift_counter_w_reg[1]),
        .I3(shift_reg[9]),
        .I4(shift_counter_w_reg[3]),
        .I5(shift_reg[1]),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    mosi_i_3
       (.I0(shift_counter_w_reg[0]),
        .I1(shift_counter_w_reg[1]),
        .I2(shift_reg[12]),
        .I3(shift_counter_w_reg[3]),
        .I4(shift_reg[4]),
        .I5(mosi_i_5_n_0),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF000000E20000)) 
    mosi_i_4
       (.I0(shift_reg[0]),
        .I1(shift_counter_w_reg[3]),
        .I2(shift_reg[8]),
        .I3(mosi_i_6_n_0),
        .I4(mosi_i_7_n_0),
        .I5(mosi_i_8_n_0),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000E2CCE200)) 
    mosi_i_5
       (.I0(shift_reg[5]),
        .I1(shift_counter_w_reg[1]),
        .I2(shift_reg[7]),
        .I3(shift_counter_w_reg[0]),
        .I4(shift_reg[6]),
        .I5(shift_counter_w_reg[3]),
        .O(mosi_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mosi_i_6
       (.I0(shift_counter_w_reg[0]),
        .I1(shift_counter_w_reg[1]),
        .O(mosi_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mosi_i_7
       (.I0(spi_write_flag_reg_n_0),
        .I1(shift_counter_w_reg[2]),
        .O(mosi_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    mosi_i_8
       (.I0(shift_counter_w_reg[0]),
        .I1(shift_counter_w_reg[1]),
        .I2(shift_reg[2]),
        .I3(shift_counter_w_reg[3]),
        .I4(shift_reg[10]),
        .O(mosi_i_8_n_0));
  FDCE mosi_reg
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(mosi_i_1_n_0),
        .Q(mosi));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    sclk_INST_0
       (.I0(spi_clock),
        .I1(spi_clock_flag_r),
        .I2(spi_clock_flag_w),
        .O(sclk));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \sdi_reg[0]_i_1 
       (.I0(miso),
        .I1(rstn),
        .I2(spi_read_flag_reg_n_0),
        .I3(shift_counter_r_reg[4]),
        .I4(\sdi_reg[0]_i_2_n_0 ),
        .I5(sdi_reg[0]),
        .O(\sdi_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sdi_reg[0]_i_2 
       (.I0(shift_counter_r_reg[2]),
        .I1(shift_counter_r_reg[0]),
        .I2(shift_counter_r_reg[1]),
        .I3(shift_counter_r_reg[3]),
        .O(\sdi_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \sdi_reg[10]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[2]),
        .I2(shift_counter_r_reg[3]),
        .I3(\sdi_reg[14]_i_2_n_0 ),
        .I4(sdi_reg[10]),
        .O(\sdi_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \sdi_reg[11]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[2]),
        .I2(shift_counter_r_reg[3]),
        .I3(\sdi_reg[15]_i_2_n_0 ),
        .I4(sdi_reg[11]),
        .O(\sdi_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \sdi_reg[12]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[12]_i_2_n_0 ),
        .I2(shift_counter_r_reg[2]),
        .I3(shift_counter_r_reg[3]),
        .I4(\sdi_reg[12]_i_3_n_0 ),
        .I5(sdi_reg[12]),
        .O(\sdi_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sdi_reg[12]_i_2 
       (.I0(shift_counter_r_reg[0]),
        .I1(shift_counter_r_reg[1]),
        .O(\sdi_reg[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sdi_reg[12]_i_3 
       (.I0(shift_counter_r_reg[4]),
        .I1(spi_read_flag_reg_n_0),
        .I2(rstn),
        .O(\sdi_reg[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \sdi_reg[13]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[13]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[13]),
        .O(\sdi_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \sdi_reg[13]_i_2 
       (.I0(shift_counter_r_reg[0]),
        .I1(shift_counter_r_reg[4]),
        .I2(spi_read_flag_reg_n_0),
        .I3(rstn),
        .I4(shift_counter_r_reg[1]),
        .O(\sdi_reg[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \sdi_reg[14]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[14]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[14]),
        .O(\sdi_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \sdi_reg[14]_i_2 
       (.I0(shift_counter_r_reg[0]),
        .I1(shift_counter_r_reg[1]),
        .I2(rstn),
        .I3(spi_read_flag_reg_n_0),
        .I4(shift_counter_r_reg[4]),
        .O(\sdi_reg[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \sdi_reg[15]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[15]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[15]),
        .O(\sdi_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \sdi_reg[15]_i_2 
       (.I0(shift_counter_r_reg[0]),
        .I1(shift_counter_r_reg[4]),
        .I2(spi_read_flag_reg_n_0),
        .I3(rstn),
        .I4(shift_counter_r_reg[1]),
        .O(\sdi_reg[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \sdi_reg[1]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[3]),
        .I2(shift_counter_r_reg[2]),
        .I3(\sdi_reg[13]_i_2_n_0 ),
        .I4(sdi_reg[1]),
        .O(\sdi_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \sdi_reg[2]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[3]),
        .I2(shift_counter_r_reg[2]),
        .I3(\sdi_reg[14]_i_2_n_0 ),
        .I4(sdi_reg[2]),
        .O(\sdi_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \sdi_reg[3]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[3]),
        .I2(shift_counter_r_reg[2]),
        .I3(\sdi_reg[15]_i_2_n_0 ),
        .I4(sdi_reg[3]),
        .O(\sdi_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \sdi_reg[4]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[12]_i_2_n_0 ),
        .I2(shift_counter_r_reg[2]),
        .I3(shift_counter_r_reg[3]),
        .I4(\sdi_reg[12]_i_3_n_0 ),
        .I5(sdi_reg[4]),
        .O(\sdi_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \sdi_reg[5]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[13]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[5]),
        .O(\sdi_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \sdi_reg[6]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[14]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[6]),
        .O(\sdi_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \sdi_reg[7]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[15]_i_2_n_0 ),
        .I2(shift_counter_r_reg[3]),
        .I3(shift_counter_r_reg[2]),
        .I4(sdi_reg[7]),
        .O(\sdi_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \sdi_reg[8]_i_1 
       (.I0(miso),
        .I1(\sdi_reg[12]_i_2_n_0 ),
        .I2(shift_counter_r_reg[2]),
        .I3(shift_counter_r_reg[3]),
        .I4(\sdi_reg[12]_i_3_n_0 ),
        .I5(sdi_reg[8]),
        .O(\sdi_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \sdi_reg[9]_i_1 
       (.I0(miso),
        .I1(shift_counter_r_reg[2]),
        .I2(shift_counter_r_reg[3]),
        .I3(\sdi_reg[13]_i_2_n_0 ),
        .I4(sdi_reg[9]),
        .O(\sdi_reg[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[0]_i_1_n_0 ),
        .Q(sdi_reg[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[10] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[10]_i_1_n_0 ),
        .Q(sdi_reg[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[11] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[11]_i_1_n_0 ),
        .Q(sdi_reg[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[12] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[12]_i_1_n_0 ),
        .Q(sdi_reg[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[13] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[13]_i_1_n_0 ),
        .Q(sdi_reg[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[14] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[14]_i_1_n_0 ),
        .Q(sdi_reg[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[15] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[15]_i_1_n_0 ),
        .Q(sdi_reg[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[1]_i_1_n_0 ),
        .Q(sdi_reg[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[2]_i_1_n_0 ),
        .Q(sdi_reg[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[3] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[3]_i_1_n_0 ),
        .Q(sdi_reg[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[4] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[4]_i_1_n_0 ),
        .Q(sdi_reg[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[5] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[5]_i_1_n_0 ),
        .Q(sdi_reg[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[6] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[6]_i_1_n_0 ),
        .Q(sdi_reg[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[7] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[7]_i_1_n_0 ),
        .Q(sdi_reg[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[8] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[8]_i_1_n_0 ),
        .Q(sdi_reg[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \sdi_reg_reg[9] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\sdi_reg[9]_i_1_n_0 ),
        .Q(sdi_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sdo_reg[0]_i_1 
       (.I0(p_1_in),
        .I1(\axi_gpio_in_reg1_reg_n_0_[0] ),
        .O(\sdo_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sdo_reg[1]_i_1 
       (.I0(p_1_in),
        .I1(\axi_gpio_in_reg1_reg_n_0_[1] ),
        .O(\sdo_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \sdo_reg[9]_i_1 
       (.I0(p_1_in),
        .I1(axi_gpio_in_reg2),
        .I2(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I3(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I4(rstn),
        .O(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[0] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\sdo_reg[0]_i_1_n_0 ),
        .Q(shift_reg[0]),
        .R(1'b0));
  FDRE \sdo_reg_reg[1] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\sdo_reg[1]_i_1_n_0 ),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE \sdo_reg_reg[2] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[2] ),
        .Q(shift_reg[2]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[3] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[3] ),
        .Q(shift_reg[3]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[4] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[4] ),
        .Q(shift_reg[4]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[5] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[5] ),
        .Q(shift_reg[5]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[6] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[6] ),
        .Q(shift_reg[6]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[7] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[7] ),
        .Q(shift_reg[7]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[8] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[8] ),
        .Q(shift_reg[8]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  FDRE \sdo_reg_reg[9] 
       (.C(spi_clock),
        .CE(ctrl_reg0),
        .D(\axi_gpio_in_reg1_reg_n_0_[9] ),
        .Q(shift_reg[9]),
        .R(\sdo_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_counter_r[0]_i_1 
       (.I0(spi_read_flag_reg_n_0),
        .I1(shift_counter_r_reg[0]),
        .O(\shift_counter_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \shift_counter_r[1]_i_1 
       (.I0(shift_counter_r_reg[0]),
        .I1(shift_counter_r_reg[1]),
        .I2(spi_read_flag_reg_n_0),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \shift_counter_r[2]_i_1 
       (.I0(shift_counter_r_reg[1]),
        .I1(shift_counter_r_reg[0]),
        .I2(shift_counter_r_reg[2]),
        .I3(spi_read_flag_reg_n_0),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \shift_counter_r[3]_i_1 
       (.I0(shift_counter_r_reg[2]),
        .I1(shift_counter_r_reg[0]),
        .I2(shift_counter_r_reg[1]),
        .I3(shift_counter_r_reg[3]),
        .I4(spi_read_flag_reg_n_0),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hAAAAAAA9FFFFFFFF)) 
    \shift_counter_r[4]_i_1 
       (.I0(shift_counter_r_reg[4]),
        .I1(shift_counter_r_reg[2]),
        .I2(shift_counter_r_reg[0]),
        .I3(shift_counter_r_reg[1]),
        .I4(shift_counter_r_reg[3]),
        .I5(spi_read_flag_reg_n_0),
        .O(p_0_in__1[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_counter_r_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(\shift_counter_r[0]_i_1_n_0 ),
        .Q(shift_counter_r_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_counter_r_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(shift_counter_r_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_counter_r_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(shift_counter_r_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_counter_r_reg[3] 
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(shift_counter_r_reg[3]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_counter_r_reg[4] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(shift_counter_r_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \shift_counter_w[0]_i_1 
       (.I0(spi_write_flag_reg_n_0),
        .I1(shift_counter_w_reg[0]),
        .O(\shift_counter_w[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \shift_counter_w[1]_i_1 
       (.I0(spi_write_flag_reg_n_0),
        .I1(shift_counter_w_reg[1]),
        .I2(shift_counter_w_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDDD7)) 
    \shift_counter_w[2]_i_1 
       (.I0(spi_write_flag_reg_n_0),
        .I1(shift_counter_w_reg[2]),
        .I2(shift_counter_w_reg[0]),
        .I3(shift_counter_w_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA9FFFF)) 
    \shift_counter_w[3]_i_1 
       (.I0(shift_counter_w_reg[3]),
        .I1(shift_counter_w_reg[1]),
        .I2(shift_counter_w_reg[0]),
        .I3(shift_counter_w_reg[2]),
        .I4(spi_write_flag_reg_n_0),
        .O(p_0_in__2[3]));
  FDPE \shift_counter_w_reg[0] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(\shift_counter_w[0]_i_1_n_0 ),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(shift_counter_w_reg[0]));
  FDPE \shift_counter_w_reg[1] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(shift_counter_w_reg[1]));
  FDPE \shift_counter_w_reg[2] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(shift_counter_w_reg[2]));
  FDPE \shift_counter_w_reg[3] 
       (.C(spi_clock),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .PRE(\axi_gpio_out[15]_i_2_n_0 ),
        .Q(shift_counter_w_reg[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \spi_clk_counter[0]_i_1 
       (.I0(rstn),
        .I1(spi_clk_counter_reg[12]),
        .I2(\spi_clk_counter[0]_i_3_n_0 ),
        .O(spi_clk_counter0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    \spi_clk_counter[0]_i_3 
       (.I0(spi_clk_counter_reg[11]),
        .I1(\spi_clk_counter[0]_i_5_n_0 ),
        .I2(spi_clk_counter_reg[4]),
        .I3(spi_clk_counter_reg[5]),
        .I4(\spi_clk_counter[0]_i_6_n_0 ),
        .I5(spi_clk_counter_reg[10]),
        .O(\spi_clk_counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_clk_counter[0]_i_4 
       (.I0(spi_clk_counter_reg[0]),
        .O(\spi_clk_counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \spi_clk_counter[0]_i_5 
       (.I0(spi_clk_counter_reg[9]),
        .I1(spi_clk_counter_reg[8]),
        .I2(spi_clk_counter_reg[7]),
        .O(\spi_clk_counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \spi_clk_counter[0]_i_6 
       (.I0(spi_clk_counter_reg[6]),
        .I1(spi_clk_counter_reg[2]),
        .I2(spi_clk_counter_reg[1]),
        .I3(spi_clk_counter_reg[0]),
        .I4(spi_clk_counter_reg[3]),
        .O(\spi_clk_counter[0]_i_6_n_0 ));
  FDRE \spi_clk_counter_reg[0] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[0]_i_2_n_7 ),
        .Q(spi_clk_counter_reg[0]),
        .R(spi_clk_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \spi_clk_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\spi_clk_counter_reg[0]_i_2_n_0 ,\spi_clk_counter_reg[0]_i_2_n_1 ,\spi_clk_counter_reg[0]_i_2_n_2 ,\spi_clk_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\spi_clk_counter_reg[0]_i_2_n_4 ,\spi_clk_counter_reg[0]_i_2_n_5 ,\spi_clk_counter_reg[0]_i_2_n_6 ,\spi_clk_counter_reg[0]_i_2_n_7 }),
        .S({spi_clk_counter_reg[3:1],\spi_clk_counter[0]_i_4_n_0 }));
  FDRE \spi_clk_counter_reg[10] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[8]_i_1_n_5 ),
        .Q(spi_clk_counter_reg[10]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[11] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[8]_i_1_n_4 ),
        .Q(spi_clk_counter_reg[11]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[12] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[12]_i_1_n_7 ),
        .Q(spi_clk_counter_reg[12]),
        .R(spi_clk_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \spi_clk_counter_reg[12]_i_1 
       (.CI(\spi_clk_counter_reg[8]_i_1_n_0 ),
        .CO(\NLW_spi_clk_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_clk_counter_reg[12]_i_1_O_UNCONNECTED [3:1],\spi_clk_counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,spi_clk_counter_reg[12]}));
  FDRE \spi_clk_counter_reg[1] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[0]_i_2_n_6 ),
        .Q(spi_clk_counter_reg[1]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[2] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[0]_i_2_n_5 ),
        .Q(spi_clk_counter_reg[2]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[3] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[0]_i_2_n_4 ),
        .Q(spi_clk_counter_reg[3]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[4] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[4]_i_1_n_7 ),
        .Q(spi_clk_counter_reg[4]),
        .R(spi_clk_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \spi_clk_counter_reg[4]_i_1 
       (.CI(\spi_clk_counter_reg[0]_i_2_n_0 ),
        .CO({\spi_clk_counter_reg[4]_i_1_n_0 ,\spi_clk_counter_reg[4]_i_1_n_1 ,\spi_clk_counter_reg[4]_i_1_n_2 ,\spi_clk_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_clk_counter_reg[4]_i_1_n_4 ,\spi_clk_counter_reg[4]_i_1_n_5 ,\spi_clk_counter_reg[4]_i_1_n_6 ,\spi_clk_counter_reg[4]_i_1_n_7 }),
        .S(spi_clk_counter_reg[7:4]));
  FDRE \spi_clk_counter_reg[5] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[4]_i_1_n_6 ),
        .Q(spi_clk_counter_reg[5]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[6] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[4]_i_1_n_5 ),
        .Q(spi_clk_counter_reg[6]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[7] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[4]_i_1_n_4 ),
        .Q(spi_clk_counter_reg[7]),
        .R(spi_clk_counter0));
  FDRE \spi_clk_counter_reg[8] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[8]_i_1_n_7 ),
        .Q(spi_clk_counter_reg[8]),
        .R(spi_clk_counter0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \spi_clk_counter_reg[8]_i_1 
       (.CI(\spi_clk_counter_reg[4]_i_1_n_0 ),
        .CO({\spi_clk_counter_reg[8]_i_1_n_0 ,\spi_clk_counter_reg[8]_i_1_n_1 ,\spi_clk_counter_reg[8]_i_1_n_2 ,\spi_clk_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_clk_counter_reg[8]_i_1_n_4 ,\spi_clk_counter_reg[8]_i_1_n_5 ,\spi_clk_counter_reg[8]_i_1_n_6 ,\spi_clk_counter_reg[8]_i_1_n_7 }),
        .S(spi_clk_counter_reg[11:8]));
  FDRE \spi_clk_counter_reg[9] 
       (.C(clk_in),
        .CE(rstn),
        .D(\spi_clk_counter_reg[8]_i_1_n_6 ),
        .Q(spi_clk_counter_reg[9]),
        .R(spi_clk_counter0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    spi_clock_flag_r_reg
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(spi_read_flag_reg_n_0),
        .Q(spi_clock_flag_r));
  FDCE spi_clock_flag_w_reg
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(spi_write_flag_reg_n_0),
        .Q(spi_clock_flag_w));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    spi_clock_i_1
       (.I0(spi_clk_counter_reg[12]),
        .I1(\spi_clk_counter[0]_i_3_n_0 ),
        .I2(spi_clock),
        .O(spi_clock_i_1_n_0));
  FDCE spi_clock_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(spi_clock_i_1_n_0),
        .Q(spi_clock));
  LUT4 #(
    .INIT(16'hABA8)) 
    spi_read_flag_i_1
       (.I0(spi_read_flag),
        .I1(spi_write_tracker),
        .I2(spi_read_tracker),
        .I3(spi_read_flag_reg_n_0),
        .O(spi_read_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'h0500E000)) 
    spi_read_flag_i_2
       (.I0(spi_read_flag_i_3_n_0),
        .I1(spi_read_tracker_reg[0]),
        .I2(spi_read_tracker_reg[4]),
        .I3(spi_read_tracker),
        .I4(spi_read_tracker_reg[5]),
        .O(spi_read_flag));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    spi_read_flag_i_3
       (.I0(spi_read_tracker_reg[3]),
        .I1(spi_read_tracker_reg[2]),
        .I2(spi_read_tracker_reg[1]),
        .O(spi_read_flag_i_3_n_0));
  FDCE spi_read_flag_reg
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(spi_read_flag_i_1_n_0),
        .Q(spi_read_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    \spi_read_tracker[0]_i_1 
       (.I0(spi_read_tracker_reg[5]),
        .I1(spi_read_tracker_reg[1]),
        .I2(spi_read_tracker_reg[2]),
        .I3(spi_read_tracker_reg[3]),
        .I4(spi_read_tracker_reg[4]),
        .I5(spi_read_tracker_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h1111111344444444)) 
    \spi_read_tracker[1]_i_1 
       (.I0(spi_read_tracker_reg[5]),
        .I1(spi_read_tracker_reg[1]),
        .I2(spi_read_tracker_reg[2]),
        .I3(spi_read_tracker_reg[3]),
        .I4(spi_read_tracker_reg[4]),
        .I5(spi_read_tracker_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \spi_read_tracker[2]_i_1 
       (.I0(spi_read_tracker_reg[0]),
        .I1(spi_read_tracker_reg[1]),
        .I2(spi_read_tracker_reg[2]),
        .I3(spi_read_tracker_reg[5]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \spi_read_tracker[3]_i_1 
       (.I0(spi_read_tracker_reg[1]),
        .I1(spi_read_tracker_reg[0]),
        .I2(spi_read_tracker_reg[2]),
        .I3(spi_read_tracker_reg[3]),
        .I4(spi_read_tracker_reg[5]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \spi_read_tracker[4]_i_1 
       (.I0(spi_read_tracker_reg[2]),
        .I1(spi_read_tracker_reg[0]),
        .I2(spi_read_tracker_reg[1]),
        .I3(spi_read_tracker_reg[3]),
        .I4(spi_read_tracker_reg[4]),
        .I5(spi_read_tracker_reg[5]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h0000000580000000)) 
    \spi_read_tracker[5]_i_1 
       (.I0(spi_read_tracker_reg[2]),
        .I1(spi_read_tracker_reg[0]),
        .I2(spi_read_tracker_reg[1]),
        .I3(spi_read_tracker_reg[3]),
        .I4(spi_read_tracker_reg[4]),
        .I5(spi_read_tracker_reg[5]),
        .O(p_0_in__0[5]));
  FDCE \spi_read_tracker_reg[0] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(spi_read_tracker_reg[0]));
  FDCE \spi_read_tracker_reg[1] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(spi_read_tracker_reg[1]));
  FDCE \spi_read_tracker_reg[2] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(spi_read_tracker_reg[2]));
  FDCE \spi_read_tracker_reg[3] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(spi_read_tracker_reg[3]));
  FDCE \spi_read_tracker_reg[4] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(spi_read_tracker_reg[4]));
  FDCE \spi_read_tracker_reg[5] 
       (.C(spi_clock),
        .CE(spi_read_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(spi_read_tracker_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    spi_write_flag_i_1
       (.I0(spi_write_flag),
        .I1(spi_write_tracker),
        .I2(spi_read_tracker),
        .I3(spi_write_flag_reg_n_0),
        .O(spi_write_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    spi_write_flag_i_2
       (.I0(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I1(spi_write_tracker),
        .I2(spi_write_tracker_reg),
        .I3(spi_read_tracker_reg[4]),
        .I4(spi_read_tracker),
        .I5(spi_read_tracker_reg[5]),
        .O(spi_write_flag));
  FDCE spi_write_flag_reg
       (.C(spi_clock),
        .CE(1'b1),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(spi_write_flag_i_1_n_0),
        .Q(spi_write_flag_reg_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \spi_write_tracker[0]_i_1 
       (.I0(\spi_write_tracker_reg_n_0_[0] ),
        .I1(spi_write_tracker_reg),
        .O(\spi_write_tracker[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \spi_write_tracker[1]_i_1 
       (.I0(\spi_write_tracker_reg_n_0_[0] ),
        .I1(\spi_write_tracker_reg_n_0_[1] ),
        .I2(spi_write_tracker_reg),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \spi_write_tracker[2]_i_1 
       (.I0(\spi_write_tracker_reg_n_0_[0] ),
        .I1(\spi_write_tracker_reg_n_0_[1] ),
        .I2(\spi_write_tracker_reg_n_0_[2] ),
        .I3(spi_write_tracker_reg),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \spi_write_tracker[3]_i_1 
       (.I0(\spi_write_tracker_reg_n_0_[1] ),
        .I1(\spi_write_tracker_reg_n_0_[0] ),
        .I2(\spi_write_tracker_reg_n_0_[2] ),
        .I3(\spi_write_tracker_reg_n_0_[3] ),
        .I4(spi_write_tracker_reg),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \spi_write_tracker[4]_i_1 
       (.I0(spi_write_tracker_reg),
        .I1(\spi_write_tracker_reg_n_0_[3] ),
        .I2(\spi_write_tracker_reg_n_0_[2] ),
        .I3(\spi_write_tracker_reg_n_0_[0] ),
        .I4(\spi_write_tracker_reg_n_0_[1] ),
        .O(p_0_in[4]));
  FDCE \spi_write_tracker_reg[0] 
       (.C(spi_clock),
        .CE(spi_write_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(\spi_write_tracker[0]_i_1_n_0 ),
        .Q(\spi_write_tracker_reg_n_0_[0] ));
  FDCE \spi_write_tracker_reg[1] 
       (.C(spi_clock),
        .CE(spi_write_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\spi_write_tracker_reg_n_0_[1] ));
  FDCE \spi_write_tracker_reg[2] 
       (.C(spi_clock),
        .CE(spi_write_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\spi_write_tracker_reg_n_0_[2] ));
  FDCE \spi_write_tracker_reg[3] 
       (.C(spi_clock),
        .CE(spi_write_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\spi_write_tracker_reg_n_0_[3] ));
  FDCE \spi_write_tracker_reg[4] 
       (.C(spi_clock),
        .CE(spi_write_tracker),
        .CLR(\axi_gpio_out[15]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(spi_write_tracker_reg));
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
