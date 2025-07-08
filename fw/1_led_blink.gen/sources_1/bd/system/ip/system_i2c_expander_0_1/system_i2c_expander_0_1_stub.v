// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 20 11:13:20 2023
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work_other/FW/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_i2c_expander_0_1/system_i2c_expander_0_1_stub.v
// Design      : system_i2c_expander_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2c_expander,Vivado 2020.2" *)
module system_i2c_expander_0_1(clk_in, rstn, axi_gpio_in, axi_gpio_out, scl, sda)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rstn,axi_gpio_in[31:0],axi_gpio_out[31:0],scl,sda" */;
  input clk_in;
  input rstn;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  output scl;
  inout sda;
endmodule
