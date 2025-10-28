// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Oct 28 22:06:24 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_data_0_0/ad4134fw_ad4134_data_0_0_stub.v
// Design      : ad4134fw_ad4134_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_data_0_0,ad4134_data,{}" *) (* core_generation_info = "ad4134fw_ad4134_data_0_0,ad4134_data,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_data,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=24}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "ad4134_data,Vivado 2024.2" *) 
module ad4134fw_ad4134_data_0_0(clk, rst_n, data_in0, data_in1, data_in2, data_in3, 
  dclk_out, odr_out, data_out0, data_out1, data_out2, data_out3, data_rdy)
/* synthesis syn_black_box black_box_pad_pin="rst_n,data_in0,data_in1,data_in2,data_in3,dclk_out,odr_out,data_out0[23:0],data_out1[23:0],data_out2[23:0],data_out3[23:0],data_rdy" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
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
endmodule
