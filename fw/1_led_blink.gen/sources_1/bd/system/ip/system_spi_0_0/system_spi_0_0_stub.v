// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 19 13:49:56 2023
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work_other/FW/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_stub.v
// Design      : system_spi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi,Vivado 2020.2" *)
module system_spi_0_0(clk_in, rstn, axi_gpio_in, axi_gpio_out, sclk, csn, 
  mosi, miso)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rstn,axi_gpio_in[31:0],axi_gpio_out[31:0],sclk,csn[3:0],mosi,miso" */;
  input clk_in;
  input rstn;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  output sclk;
  output [3:0]csn;
  output mosi;
  input miso;
endmodule
