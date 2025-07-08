//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Dec 15 19:05:45 2022
//Host        : SADIE-SAAB running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ad5270_cs,
    ad5270_miso,
    ad5270_mosi,
    ad5270_sclk,
    gain_ctrl_1_0_0,
    gain_ctrl_1_1_0,
    gain_ctrl_2_0_0,
    gain_ctrl_2_1_0,
    led_1_0,
    led_2_0,
    led_hb,
    led_o,
    n_enable_switch_0,
    switch_1_0,
    switch_2_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [3:0]ad5270_cs;
  input ad5270_miso;
  output ad5270_mosi;
  output ad5270_sclk;
  output gain_ctrl_1_0_0;
  output gain_ctrl_1_1_0;
  output gain_ctrl_2_0_0;
  output gain_ctrl_2_1_0;
  output led_1_0;
  output led_2_0;
  output [0:0]led_hb;
  output [6:0]led_o;
  output n_enable_switch_0;
  output switch_1_0;
  output switch_2_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]ad5270_cs;
  wire ad5270_miso;
  wire ad5270_mosi;
  wire ad5270_sclk;
  wire gain_ctrl_1_0_0;
  wire gain_ctrl_1_1_0;
  wire gain_ctrl_2_0_0;
  wire gain_ctrl_2_1_0;
  wire led_1_0;
  wire led_2_0;
  wire [0:0]led_hb;
  wire [6:0]led_o;
  wire n_enable_switch_0;
  wire switch_1_0;
  wire switch_2_0;

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .ad5270_cs(ad5270_cs),
        .ad5270_miso(ad5270_miso),
        .ad5270_mosi(ad5270_mosi),
        .ad5270_sclk(ad5270_sclk),
        .gain_ctrl_1_0_0(gain_ctrl_1_0_0),
        .gain_ctrl_1_1_0(gain_ctrl_1_1_0),
        .gain_ctrl_2_0_0(gain_ctrl_2_0_0),
        .gain_ctrl_2_1_0(gain_ctrl_2_1_0),
        .led_1_0(led_1_0),
        .led_2_0(led_2_0),
        .led_hb(led_hb),
        .led_o(led_o),
        .n_enable_switch_0(n_enable_switch_0),
        .switch_1_0(switch_1_0),
        .switch_2_0(switch_2_0));
endmodule
