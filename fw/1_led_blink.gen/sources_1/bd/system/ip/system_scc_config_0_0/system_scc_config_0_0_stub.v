// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 15 19:08:19 2022
// Host        : SADIE-SAAB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/adria/OneDrive/Documents/Adriaan/Werk
//               Goedjies/BTT/fw/redpitaya_guide/tmp/1_led_blink/1_led_blink.gen/sources_1/bd/system/ip/system_scc_config_0_0/system_scc_config_0_0_stub.v}
// Design      : system_scc_config_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scc_config,Vivado 2020.2" *)
module system_scc_config_0_0(cfg_in, gain_ctrl_1_1, gain_ctrl_1_0, 
  gain_ctrl_2_1, gain_ctrl_2_0, switch_1, switch_2, n_enable_switch, led_2, led_1)
/* synthesis syn_black_box black_box_pad_pin="cfg_in[31:0],gain_ctrl_1_1,gain_ctrl_1_0,gain_ctrl_2_1,gain_ctrl_2_0,switch_1,switch_2,n_enable_switch,led_2,led_1" */;
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
endmodule
