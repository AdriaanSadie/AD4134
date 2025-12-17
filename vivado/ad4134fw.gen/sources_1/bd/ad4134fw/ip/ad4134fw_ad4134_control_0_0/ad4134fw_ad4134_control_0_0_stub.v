// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 16 21:37:04 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_control_0_0/ad4134fw_ad4134_control_0_0_stub.v
// Design      : ad4134fw_ad4134_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_control_0_0,ad4134_control,{}" *) (* core_generation_info = "ad4134fw_ad4134_control_0_0,ad4134_control,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "ad4134_control,Vivado 2024.2" *) 
module ad4134fw_ad4134_control_0_0(clk, rstn, write, read, datain, dataout, spiaddr, 
  ch_en, spi_clk_en, spidone, debug)
/* synthesis syn_black_box black_box_pad_pin="rstn,write,read,datain[7:0],dataout[7:0],spiaddr[7:0],ch_en[3:0],spi_clk_en,spidone,debug[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_mode = "slave rstn" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  output write;
  output read;
  output [7:0]datain;
  input [7:0]dataout;
  output [7:0]spiaddr;
  input [3:0]ch_en;
  output spi_clk_en;
  input spidone;
  output [3:0]debug;
endmodule
