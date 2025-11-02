// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov  2 21:33:54 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_to_bram_0_0/ad4134fw_ad4134_to_bram_0_0_stub.v
// Design      : ad4134fw_ad4134_to_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{}" *) (* core_generation_info = "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_to_bram,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=24}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "ad4134_to_bram,Vivado 2024.2" *) 
module ad4134fw_ad4134_to_bram_0_0(clk, rst_n, data_in0, data_in1, data_in2, data_in3, 
  data_rdy, addra, dia, wea, done)
/* synthesis syn_black_box black_box_pad_pin="rst_n,data_in0[23:0],data_in1[23:0],data_in2[23:0],data_in3[23:0],data_rdy,addra[14:0],dia[31:0],wea,done" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_mode = "slave rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [23:0]data_in0;
  input [23:0]data_in1;
  input [23:0]data_in2;
  input [23:0]data_in3;
  input data_rdy;
  output [14:0]addra;
  output [31:0]dia;
  output wea;
  output done;
endmodule
