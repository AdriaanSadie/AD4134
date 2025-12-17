// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 16 21:37:04 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_data_0_0/ad4134fw_ad4134_data_0_0_sim_netlist.v
// Design      : ad4134fw_ad4134_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_data_0_0,ad4134_data,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ad4134_data,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_ad4134_data_0_0
   (clk,
    rst_n,
    data_in0,
    data_in1,
    data_in2,
    data_in3,
    dclk_out,
    odr_out,
    data_out0,
    data_out1,
    data_out2,
    data_out3,
    data_rdy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
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

  wire clk;
  wire data_in0;
  wire data_in1;
  wire data_in2;
  wire data_in3;
  wire [23:0]data_out0;
  wire [23:0]data_out1;
  wire [23:0]data_out2;
  wire [23:0]data_out3;
  wire data_rdy;
  wire dclk_out;
  wire odr_out;
  wire rst_n;

  ad4134fw_ad4134_data_0_0_ad4134_data U0
       (.clk(clk),
        .data_in0(data_in0),
        .data_in1(data_in1),
        .data_in2(data_in2),
        .data_in3(data_in3),
        .data_out0(data_out0),
        .data_out1(data_out1),
        .data_out2(data_out2),
        .data_out3(data_out3),
        .data_rdy(data_rdy),
        .dclk_out(dclk_out),
        .odr_out(odr_out),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "ad4134_data" *) 
module ad4134fw_ad4134_data_0_0_ad4134_data
   (odr_out,
    data_out0,
    data_out1,
    data_out2,
    data_out3,
    dclk_out,
    data_rdy,
    data_in0,
    data_in1,
    data_in2,
    data_in3,
    clk,
    rst_n);
  output odr_out;
  output [23:0]data_out0;
  output [23:0]data_out1;
  output [23:0]data_out2;
  output [23:0]data_out3;
  output dclk_out;
  output data_rdy;
  input data_in0;
  input data_in1;
  input data_in2;
  input data_in3;
  input clk;
  input rst_n;

  wire [4:0]bit_count;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[4]_i_1_n_0 ;
  wire \bit_count[4]_i_2_n_0 ;
  wire clk;
  wire data_in0;
  wire data_in1;
  wire data_in2;
  wire data_in3;
  wire [23:0]data_out0;
  wire \data_out0[23]_i_1_n_0 ;
  wire \data_out0[23]_i_2_n_0 ;
  wire [23:0]data_out1;
  wire [23:0]data_out2;
  wire [23:0]data_out3;
  wire data_rdy;
  wire data_rdy_flag;
  wire data_rdy_flag_i_1_n_0;
  wire data_rdy_i_1_n_0;
  wire dclk_active;
  wire dclk_active_i_1_n_0;
  wire dclk_out;
  wire odr_int_i_1_n_0;
  wire odr_int_i_2_n_0;
  wire odr_out;
  wire [5:0]odr_tracker_reg;
  wire [5:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire rst_n;
  wire [23:0]shift_reg0;
  wire \shift_reg0_reg_n_0_[0] ;
  wire \shift_reg0_reg_n_0_[10] ;
  wire \shift_reg0_reg_n_0_[11] ;
  wire \shift_reg0_reg_n_0_[12] ;
  wire \shift_reg0_reg_n_0_[13] ;
  wire \shift_reg0_reg_n_0_[14] ;
  wire \shift_reg0_reg_n_0_[15] ;
  wire \shift_reg0_reg_n_0_[16] ;
  wire \shift_reg0_reg_n_0_[17] ;
  wire \shift_reg0_reg_n_0_[18] ;
  wire \shift_reg0_reg_n_0_[19] ;
  wire \shift_reg0_reg_n_0_[1] ;
  wire \shift_reg0_reg_n_0_[20] ;
  wire \shift_reg0_reg_n_0_[21] ;
  wire \shift_reg0_reg_n_0_[22] ;
  wire \shift_reg0_reg_n_0_[23] ;
  wire \shift_reg0_reg_n_0_[2] ;
  wire \shift_reg0_reg_n_0_[3] ;
  wire \shift_reg0_reg_n_0_[4] ;
  wire \shift_reg0_reg_n_0_[5] ;
  wire \shift_reg0_reg_n_0_[6] ;
  wire \shift_reg0_reg_n_0_[7] ;
  wire \shift_reg0_reg_n_0_[8] ;
  wire \shift_reg0_reg_n_0_[9] ;
  wire [23:0]shift_reg1;
  wire [23:0]shift_reg2;
  wire \shift_reg3_reg_n_0_[0] ;
  wire \shift_reg3_reg_n_0_[10] ;
  wire \shift_reg3_reg_n_0_[11] ;
  wire \shift_reg3_reg_n_0_[12] ;
  wire \shift_reg3_reg_n_0_[13] ;
  wire \shift_reg3_reg_n_0_[14] ;
  wire \shift_reg3_reg_n_0_[15] ;
  wire \shift_reg3_reg_n_0_[16] ;
  wire \shift_reg3_reg_n_0_[17] ;
  wire \shift_reg3_reg_n_0_[18] ;
  wire \shift_reg3_reg_n_0_[19] ;
  wire \shift_reg3_reg_n_0_[1] ;
  wire \shift_reg3_reg_n_0_[20] ;
  wire \shift_reg3_reg_n_0_[21] ;
  wire \shift_reg3_reg_n_0_[22] ;
  wire \shift_reg3_reg_n_0_[23] ;
  wire \shift_reg3_reg_n_0_[2] ;
  wire \shift_reg3_reg_n_0_[3] ;
  wire \shift_reg3_reg_n_0_[4] ;
  wire \shift_reg3_reg_n_0_[5] ;
  wire \shift_reg3_reg_n_0_[6] ;
  wire \shift_reg3_reg_n_0_[7] ;
  wire \shift_reg3_reg_n_0_[8] ;
  wire \shift_reg3_reg_n_0_[9] ;
  wire slow_clk;
  wire [5:1]slow_clk_counter_reg;
  wire \slow_clk_counter_reg_n_0_[0] ;
  wire slow_clk_i_1_n_0;

  LUT6 #(
    .INIT(64'h00FF00FE00000000)) 
    \bit_count[0]_i_1 
       (.I0(bit_count[4]),
        .I1(bit_count[3]),
        .I2(bit_count[2]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FE00000000)) 
    \bit_count[1]_i_1 
       (.I0(bit_count[4]),
        .I1(bit_count[3]),
        .I2(bit_count[2]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000F00000E0)) 
    \bit_count[2]_i_1 
       (.I0(bit_count[3]),
        .I1(bit_count[4]),
        .I2(dclk_active),
        .I3(bit_count[2]),
        .I4(bit_count[0]),
        .I5(bit_count[1]),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \bit_count[3]_i_1 
       (.I0(dclk_active),
        .I1(bit_count[3]),
        .I2(bit_count[1]),
        .I3(bit_count[0]),
        .I4(bit_count[2]),
        .O(\bit_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \bit_count[4]_i_1 
       (.I0(dclk_active),
        .I1(data_rdy_flag),
        .I2(\data_out0[23]_i_2_n_0 ),
        .I3(bit_count[1]),
        .I4(bit_count[0]),
        .O(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD7)) 
    \bit_count[4]_i_2 
       (.I0(dclk_active),
        .I1(bit_count[4]),
        .I2(bit_count[2]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(bit_count[3]),
        .O(\bit_count[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[0] 
       (.C(slow_clk),
        .CE(\bit_count[4]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(bit_count[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[1] 
       (.C(slow_clk),
        .CE(\bit_count[4]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(bit_count[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[2] 
       (.C(slow_clk),
        .CE(\bit_count[4]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(bit_count[2]));
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[3] 
       (.C(slow_clk),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(\bit_count[3]_i_1_n_0 ),
        .PRE(odr_int_i_2_n_0),
        .Q(bit_count[3]));
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[4] 
       (.C(slow_clk),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(\bit_count[4]_i_2_n_0 ),
        .PRE(odr_int_i_2_n_0),
        .Q(bit_count[4]));
  LUT5 #(
    .INIT(32'h0000000B)) 
    \data_out0[23]_i_1 
       (.I0(dclk_active),
        .I1(data_rdy_flag),
        .I2(\data_out0[23]_i_2_n_0 ),
        .I3(bit_count[1]),
        .I4(bit_count[0]),
        .O(\data_out0[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \data_out0[23]_i_2 
       (.I0(bit_count[4]),
        .I1(bit_count[3]),
        .I2(bit_count[2]),
        .O(\data_out0[23]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[0] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[0] ),
        .Q(data_out0[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[10] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[10] ),
        .Q(data_out0[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[11] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[11] ),
        .Q(data_out0[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[12] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[12] ),
        .Q(data_out0[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[13] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[13] ),
        .Q(data_out0[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[14] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[14] ),
        .Q(data_out0[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[15] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[15] ),
        .Q(data_out0[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[16] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[16] ),
        .Q(data_out0[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[17] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[17] ),
        .Q(data_out0[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[18] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[18] ),
        .Q(data_out0[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[19] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[19] ),
        .Q(data_out0[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[1] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[1] ),
        .Q(data_out0[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[20] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[20] ),
        .Q(data_out0[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[21] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[21] ),
        .Q(data_out0[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[22] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[22] ),
        .Q(data_out0[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[23] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[23] ),
        .Q(data_out0[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[2] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[2] ),
        .Q(data_out0[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[3] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[3] ),
        .Q(data_out0[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[4] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[4] ),
        .Q(data_out0[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[5] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[5] ),
        .Q(data_out0[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[6] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[6] ),
        .Q(data_out0[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[7] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[7] ),
        .Q(data_out0[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[8] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[8] ),
        .Q(data_out0[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out0_reg[9] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg0_reg_n_0_[9] ),
        .Q(data_out0[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[0] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[0]),
        .Q(data_out1[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[10] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[10]),
        .Q(data_out1[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[11] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[11]),
        .Q(data_out1[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[12] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[12]),
        .Q(data_out1[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[13] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[13]),
        .Q(data_out1[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[14] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[14]),
        .Q(data_out1[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[15] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[15]),
        .Q(data_out1[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[16] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[16]),
        .Q(data_out1[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[17] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[17]),
        .Q(data_out1[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[18] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[18]),
        .Q(data_out1[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[19] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[19]),
        .Q(data_out1[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[1] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[1]),
        .Q(data_out1[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[20] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[20]),
        .Q(data_out1[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[21] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[21]),
        .Q(data_out1[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[22] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[22]),
        .Q(data_out1[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[23] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[23]),
        .Q(data_out1[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[2] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[2]),
        .Q(data_out1[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[3] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[3]),
        .Q(data_out1[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[4] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[4]),
        .Q(data_out1[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[5] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[5]),
        .Q(data_out1[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[6] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[6]),
        .Q(data_out1[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[7] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[7]),
        .Q(data_out1[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[8] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[8]),
        .Q(data_out1[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out1_reg[9] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg1[9]),
        .Q(data_out1[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[0] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[0]),
        .Q(data_out2[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[10] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[10]),
        .Q(data_out2[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[11] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[11]),
        .Q(data_out2[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[12] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[12]),
        .Q(data_out2[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[13] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[13]),
        .Q(data_out2[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[14] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[14]),
        .Q(data_out2[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[15] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[15]),
        .Q(data_out2[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[16] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[16]),
        .Q(data_out2[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[17] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[17]),
        .Q(data_out2[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[18] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[18]),
        .Q(data_out2[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[19] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[19]),
        .Q(data_out2[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[1] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[1]),
        .Q(data_out2[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[20] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[20]),
        .Q(data_out2[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[21] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[21]),
        .Q(data_out2[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[22] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[22]),
        .Q(data_out2[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[23] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[23]),
        .Q(data_out2[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[2] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[2]),
        .Q(data_out2[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[3] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[3]),
        .Q(data_out2[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[4] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[4]),
        .Q(data_out2[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[5] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[5]),
        .Q(data_out2[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[6] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[6]),
        .Q(data_out2[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[7] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[7]),
        .Q(data_out2[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[8] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[8]),
        .Q(data_out2[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out2_reg[9] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(shift_reg2[9]),
        .Q(data_out2[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[0] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[0] ),
        .Q(data_out3[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[10] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[10] ),
        .Q(data_out3[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[11] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[11] ),
        .Q(data_out3[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[12] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[12] ),
        .Q(data_out3[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[13] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[13] ),
        .Q(data_out3[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[14] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[14] ),
        .Q(data_out3[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[15] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[15] ),
        .Q(data_out3[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[16] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[16] ),
        .Q(data_out3[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[17] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[17] ),
        .Q(data_out3[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[18] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[18] ),
        .Q(data_out3[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[19] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[19] ),
        .Q(data_out3[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[1] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[1] ),
        .Q(data_out3[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[20] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[20] ),
        .Q(data_out3[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[21] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[21] ),
        .Q(data_out3[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[22] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[22] ),
        .Q(data_out3[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[23] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[23] ),
        .Q(data_out3[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[2] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[2] ),
        .Q(data_out3[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[3] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[3] ),
        .Q(data_out3[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[4] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[4] ),
        .Q(data_out3[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[5] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[5] ),
        .Q(data_out3[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[6] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[6] ),
        .Q(data_out3[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[7] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[7] ),
        .Q(data_out3[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[8] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[8] ),
        .Q(data_out3[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out3_reg[9] 
       (.C(slow_clk),
        .CE(\data_out0[23]_i_1_n_0 ),
        .CLR(odr_int_i_2_n_0),
        .D(\shift_reg3_reg_n_0_[9] ),
        .Q(data_out3[9]));
  LUT5 #(
    .INIT(32'h88888889)) 
    data_rdy_flag_i_1
       (.I0(dclk_active),
        .I1(data_rdy_flag),
        .I2(\data_out0[23]_i_2_n_0 ),
        .I3(bit_count[1]),
        .I4(bit_count[0]),
        .O(data_rdy_flag_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    data_rdy_flag_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(data_rdy_flag_i_1_n_0),
        .Q(data_rdy_flag));
  LUT6 #(
    .INIT(64'h0000AAAB0000AAAA)) 
    data_rdy_i_1
       (.I0(data_rdy_flag),
        .I1(\data_out0[23]_i_2_n_0 ),
        .I2(bit_count[1]),
        .I3(bit_count[0]),
        .I4(dclk_active),
        .I5(data_rdy),
        .O(data_rdy_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    data_rdy_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(data_rdy_i_1_n_0),
        .Q(data_rdy));
  LUT4 #(
    .INIT(16'h007E)) 
    dclk_active_i_1
       (.I0(odr_tracker_reg[3]),
        .I1(odr_tracker_reg[4]),
        .I2(odr_tracker_reg[2]),
        .I3(odr_tracker_reg[5]),
        .O(dclk_active_i_1_n_0));
  FDCE dclk_active_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(dclk_active_i_1_n_0),
        .Q(dclk_active));
  LUT2 #(
    .INIT(4'h8)) 
    dclk_out_INST_0
       (.I0(dclk_active),
        .I1(slow_clk),
        .O(dclk_out));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    odr_int_i_1
       (.I0(odr_tracker_reg[3]),
        .I1(odr_tracker_reg[4]),
        .I2(odr_tracker_reg[2]),
        .I3(odr_tracker_reg[5]),
        .I4(odr_tracker_reg[1]),
        .I5(odr_tracker_reg[0]),
        .O(odr_int_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    odr_int_i_2
       (.I0(rst_n),
        .O(odr_int_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    odr_int_reg
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(odr_int_i_1_n_0),
        .Q(odr_out));
  LUT6 #(
    .INIT(64'h000000000007FFFF)) 
    \odr_tracker[0]_i_1 
       (.I0(odr_tracker_reg[1]),
        .I1(odr_tracker_reg[2]),
        .I2(odr_tracker_reg[4]),
        .I3(odr_tracker_reg[3]),
        .I4(odr_tracker_reg[5]),
        .I5(odr_tracker_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h000001FF03FF0000)) 
    \odr_tracker[1]_i_1 
       (.I0(odr_tracker_reg[2]),
        .I1(odr_tracker_reg[4]),
        .I2(odr_tracker_reg[3]),
        .I3(odr_tracker_reg[5]),
        .I4(odr_tracker_reg[0]),
        .I5(odr_tracker_reg[1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h1111222A333F0000)) 
    \odr_tracker[2]_i_1 
       (.I0(odr_tracker_reg[0]),
        .I1(odr_tracker_reg[5]),
        .I2(odr_tracker_reg[3]),
        .I3(odr_tracker_reg[4]),
        .I4(odr_tracker_reg[2]),
        .I5(odr_tracker_reg[1]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \odr_tracker[3]_i_1 
       (.I0(odr_tracker_reg[1]),
        .I1(odr_tracker_reg[0]),
        .I2(odr_tracker_reg[2]),
        .I3(odr_tracker_reg[3]),
        .I4(odr_tracker_reg[5]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \odr_tracker[4]_i_1 
       (.I0(odr_tracker_reg[2]),
        .I1(odr_tracker_reg[0]),
        .I2(odr_tracker_reg[1]),
        .I3(odr_tracker_reg[3]),
        .I4(odr_tracker_reg[4]),
        .I5(odr_tracker_reg[5]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h0000005F80000000)) 
    \odr_tracker[5]_i_1 
       (.I0(odr_tracker_reg[2]),
        .I1(odr_tracker_reg[0]),
        .I2(odr_tracker_reg[1]),
        .I3(odr_tracker_reg[3]),
        .I4(odr_tracker_reg[4]),
        .I5(odr_tracker_reg[5]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[0] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(odr_tracker_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[1] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(odr_tracker_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[2] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(odr_tracker_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[3] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(odr_tracker_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[4] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(odr_tracker_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \odr_tracker_reg[5] 
       (.C(slow_clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in__0[5]),
        .Q(odr_tracker_reg[5]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \shift_reg0[0]_i_1 
       (.I0(dclk_active),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .I5(bit_count[4]),
        .O(shift_reg0[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \shift_reg0[10]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[3]),
        .I2(bit_count[4]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[10]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \shift_reg0[11]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[2]),
        .I3(dclk_active),
        .I4(bit_count[4]),
        .I5(bit_count[3]),
        .O(shift_reg0[11]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \shift_reg0[12]_i_1 
       (.I0(bit_count[2]),
        .I1(dclk_active),
        .I2(bit_count[0]),
        .I3(bit_count[1]),
        .I4(bit_count[4]),
        .I5(bit_count[3]),
        .O(shift_reg0[12]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \shift_reg0[13]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[3]),
        .I2(bit_count[4]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[13]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \shift_reg0[14]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[3]),
        .I2(bit_count[4]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[14]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \shift_reg0[15]_i_1 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .I2(bit_count[2]),
        .I3(dclk_active),
        .I4(bit_count[3]),
        .I5(bit_count[4]),
        .O(shift_reg0[15]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \shift_reg0[16]_i_1 
       (.I0(bit_count[4]),
        .I1(bit_count[3]),
        .I2(dclk_active),
        .I3(bit_count[2]),
        .I4(bit_count[1]),
        .I5(bit_count[0]),
        .O(shift_reg0[16]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \shift_reg0[17]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[4]),
        .I2(bit_count[3]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[17]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \shift_reg0[18]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[4]),
        .I2(bit_count[3]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[18]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \shift_reg0[19]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[2]),
        .I3(dclk_active),
        .I4(bit_count[3]),
        .I5(bit_count[4]),
        .O(shift_reg0[19]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \shift_reg0[1]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(dclk_active),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .I5(bit_count[4]),
        .O(shift_reg0[1]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \shift_reg0[20]_i_1 
       (.I0(bit_count[2]),
        .I1(dclk_active),
        .I2(bit_count[4]),
        .I3(bit_count[3]),
        .I4(bit_count[1]),
        .I5(bit_count[0]),
        .O(shift_reg0[20]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \shift_reg0[21]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[4]),
        .I2(bit_count[3]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[21]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \shift_reg0[22]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[4]),
        .I2(bit_count[3]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[22]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \shift_reg0[23]_i_1 
       (.I0(bit_count[4]),
        .I1(bit_count[3]),
        .I2(bit_count[1]),
        .I3(bit_count[0]),
        .I4(bit_count[2]),
        .I5(dclk_active),
        .O(shift_reg0[23]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \shift_reg0[2]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(dclk_active),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .I5(bit_count[4]),
        .O(shift_reg0[2]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \shift_reg0[3]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[3]),
        .I3(bit_count[4]),
        .I4(dclk_active),
        .I5(bit_count[2]),
        .O(shift_reg0[3]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \shift_reg0[4]_i_1 
       (.I0(bit_count[3]),
        .I1(bit_count[4]),
        .I2(bit_count[2]),
        .I3(dclk_active),
        .I4(bit_count[1]),
        .I5(bit_count[0]),
        .O(shift_reg0[4]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \shift_reg0[5]_i_1 
       (.I0(bit_count[3]),
        .I1(bit_count[4]),
        .I2(bit_count[2]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[5]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \shift_reg0[6]_i_1 
       (.I0(bit_count[3]),
        .I1(bit_count[4]),
        .I2(bit_count[2]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[6]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \shift_reg0[7]_i_1 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .I2(bit_count[2]),
        .I3(dclk_active),
        .I4(bit_count[4]),
        .I5(bit_count[3]),
        .O(shift_reg0[7]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \shift_reg0[8]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(dclk_active),
        .I3(bit_count[2]),
        .I4(bit_count[4]),
        .I5(bit_count[3]),
        .O(shift_reg0[8]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \shift_reg0[9]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[3]),
        .I2(bit_count[4]),
        .I3(bit_count[0]),
        .I4(bit_count[1]),
        .I5(dclk_active),
        .O(shift_reg0[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[0] 
       (.C(slow_clk),
        .CE(shift_reg0[0]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[10] 
       (.C(slow_clk),
        .CE(shift_reg0[10]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[10] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[11] 
       (.C(slow_clk),
        .CE(shift_reg0[11]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[11] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[12] 
       (.C(slow_clk),
        .CE(shift_reg0[12]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[12] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[13] 
       (.C(slow_clk),
        .CE(shift_reg0[13]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[13] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[14] 
       (.C(slow_clk),
        .CE(shift_reg0[14]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[14] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[15] 
       (.C(slow_clk),
        .CE(shift_reg0[15]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[15] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[16] 
       (.C(slow_clk),
        .CE(shift_reg0[16]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[16] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[17] 
       (.C(slow_clk),
        .CE(shift_reg0[17]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[17] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[18] 
       (.C(slow_clk),
        .CE(shift_reg0[18]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[18] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[19] 
       (.C(slow_clk),
        .CE(shift_reg0[19]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[19] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[1] 
       (.C(slow_clk),
        .CE(shift_reg0[1]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[20] 
       (.C(slow_clk),
        .CE(shift_reg0[20]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[20] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[21] 
       (.C(slow_clk),
        .CE(shift_reg0[21]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[21] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[22] 
       (.C(slow_clk),
        .CE(shift_reg0[22]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[22] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[23] 
       (.C(slow_clk),
        .CE(shift_reg0[23]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[23] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[2] 
       (.C(slow_clk),
        .CE(shift_reg0[2]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[3] 
       (.C(slow_clk),
        .CE(shift_reg0[3]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[3] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[4] 
       (.C(slow_clk),
        .CE(shift_reg0[4]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[4] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[5] 
       (.C(slow_clk),
        .CE(shift_reg0[5]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[5] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[6] 
       (.C(slow_clk),
        .CE(shift_reg0[6]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[6] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[7] 
       (.C(slow_clk),
        .CE(shift_reg0[7]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[7] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[8] 
       (.C(slow_clk),
        .CE(shift_reg0[8]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[8] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg0_reg[9] 
       (.C(slow_clk),
        .CE(shift_reg0[9]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in0),
        .Q(\shift_reg0_reg_n_0_[9] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[0] 
       (.C(slow_clk),
        .CE(shift_reg0[0]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[10] 
       (.C(slow_clk),
        .CE(shift_reg0[10]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[11] 
       (.C(slow_clk),
        .CE(shift_reg0[11]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[12] 
       (.C(slow_clk),
        .CE(shift_reg0[12]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[13] 
       (.C(slow_clk),
        .CE(shift_reg0[13]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[14] 
       (.C(slow_clk),
        .CE(shift_reg0[14]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[15] 
       (.C(slow_clk),
        .CE(shift_reg0[15]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[16] 
       (.C(slow_clk),
        .CE(shift_reg0[16]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[17] 
       (.C(slow_clk),
        .CE(shift_reg0[17]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[18] 
       (.C(slow_clk),
        .CE(shift_reg0[18]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[19] 
       (.C(slow_clk),
        .CE(shift_reg0[19]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[1] 
       (.C(slow_clk),
        .CE(shift_reg0[1]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[20] 
       (.C(slow_clk),
        .CE(shift_reg0[20]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[21] 
       (.C(slow_clk),
        .CE(shift_reg0[21]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[22] 
       (.C(slow_clk),
        .CE(shift_reg0[22]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[23] 
       (.C(slow_clk),
        .CE(shift_reg0[23]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[2] 
       (.C(slow_clk),
        .CE(shift_reg0[2]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[3] 
       (.C(slow_clk),
        .CE(shift_reg0[3]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[4] 
       (.C(slow_clk),
        .CE(shift_reg0[4]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[5] 
       (.C(slow_clk),
        .CE(shift_reg0[5]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[6] 
       (.C(slow_clk),
        .CE(shift_reg0[6]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[7] 
       (.C(slow_clk),
        .CE(shift_reg0[7]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[8] 
       (.C(slow_clk),
        .CE(shift_reg0[8]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg1_reg[9] 
       (.C(slow_clk),
        .CE(shift_reg0[9]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in1),
        .Q(shift_reg1[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[0] 
       (.C(slow_clk),
        .CE(shift_reg0[0]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[10] 
       (.C(slow_clk),
        .CE(shift_reg0[10]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[11] 
       (.C(slow_clk),
        .CE(shift_reg0[11]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[12] 
       (.C(slow_clk),
        .CE(shift_reg0[12]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[13] 
       (.C(slow_clk),
        .CE(shift_reg0[13]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[14] 
       (.C(slow_clk),
        .CE(shift_reg0[14]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[15] 
       (.C(slow_clk),
        .CE(shift_reg0[15]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[16] 
       (.C(slow_clk),
        .CE(shift_reg0[16]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[17] 
       (.C(slow_clk),
        .CE(shift_reg0[17]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[18] 
       (.C(slow_clk),
        .CE(shift_reg0[18]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[19] 
       (.C(slow_clk),
        .CE(shift_reg0[19]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[1] 
       (.C(slow_clk),
        .CE(shift_reg0[1]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[20] 
       (.C(slow_clk),
        .CE(shift_reg0[20]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[21] 
       (.C(slow_clk),
        .CE(shift_reg0[21]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[22] 
       (.C(slow_clk),
        .CE(shift_reg0[22]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[23] 
       (.C(slow_clk),
        .CE(shift_reg0[23]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[2] 
       (.C(slow_clk),
        .CE(shift_reg0[2]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[3] 
       (.C(slow_clk),
        .CE(shift_reg0[3]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[4] 
       (.C(slow_clk),
        .CE(shift_reg0[4]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[5] 
       (.C(slow_clk),
        .CE(shift_reg0[5]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[6] 
       (.C(slow_clk),
        .CE(shift_reg0[6]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[7] 
       (.C(slow_clk),
        .CE(shift_reg0[7]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[8] 
       (.C(slow_clk),
        .CE(shift_reg0[8]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg2_reg[9] 
       (.C(slow_clk),
        .CE(shift_reg0[9]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in2),
        .Q(shift_reg2[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[0] 
       (.C(slow_clk),
        .CE(shift_reg0[0]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[10] 
       (.C(slow_clk),
        .CE(shift_reg0[10]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[10] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[11] 
       (.C(slow_clk),
        .CE(shift_reg0[11]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[11] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[12] 
       (.C(slow_clk),
        .CE(shift_reg0[12]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[12] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[13] 
       (.C(slow_clk),
        .CE(shift_reg0[13]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[13] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[14] 
       (.C(slow_clk),
        .CE(shift_reg0[14]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[14] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[15] 
       (.C(slow_clk),
        .CE(shift_reg0[15]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[15] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[16] 
       (.C(slow_clk),
        .CE(shift_reg0[16]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[16] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[17] 
       (.C(slow_clk),
        .CE(shift_reg0[17]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[17] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[18] 
       (.C(slow_clk),
        .CE(shift_reg0[18]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[18] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[19] 
       (.C(slow_clk),
        .CE(shift_reg0[19]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[19] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[1] 
       (.C(slow_clk),
        .CE(shift_reg0[1]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[20] 
       (.C(slow_clk),
        .CE(shift_reg0[20]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[20] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[21] 
       (.C(slow_clk),
        .CE(shift_reg0[21]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[21] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[22] 
       (.C(slow_clk),
        .CE(shift_reg0[22]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[22] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[23] 
       (.C(slow_clk),
        .CE(shift_reg0[23]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[23] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[2] 
       (.C(slow_clk),
        .CE(shift_reg0[2]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[3] 
       (.C(slow_clk),
        .CE(shift_reg0[3]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[3] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[4] 
       (.C(slow_clk),
        .CE(shift_reg0[4]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[4] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[5] 
       (.C(slow_clk),
        .CE(shift_reg0[5]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[5] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[6] 
       (.C(slow_clk),
        .CE(shift_reg0[6]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[6] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[7] 
       (.C(slow_clk),
        .CE(shift_reg0[7]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[7] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[8] 
       (.C(slow_clk),
        .CE(shift_reg0[8]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[8] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \shift_reg3_reg[9] 
       (.C(slow_clk),
        .CE(shift_reg0[9]),
        .CLR(odr_int_i_2_n_0),
        .D(data_in3),
        .Q(\shift_reg3_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    \slow_clk_counter[0]_i_1 
       (.I0(slow_clk_counter_reg[3]),
        .I1(slow_clk_counter_reg[2]),
        .I2(slow_clk_counter_reg[1]),
        .I3(slow_clk_counter_reg[4]),
        .I4(slow_clk_counter_reg[5]),
        .I5(\slow_clk_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0000777F77770000)) 
    \slow_clk_counter[1]_i_1 
       (.I0(slow_clk_counter_reg[5]),
        .I1(slow_clk_counter_reg[4]),
        .I2(slow_clk_counter_reg[3]),
        .I3(slow_clk_counter_reg[2]),
        .I4(slow_clk_counter_reg[1]),
        .I5(\slow_clk_counter_reg_n_0_[0] ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h07777000)) 
    \slow_clk_counter[2]_i_1 
       (.I0(slow_clk_counter_reg[4]),
        .I1(slow_clk_counter_reg[5]),
        .I2(slow_clk_counter_reg[1]),
        .I3(\slow_clk_counter_reg_n_0_[0] ),
        .I4(slow_clk_counter_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \slow_clk_counter[3]_i_1 
       (.I0(slow_clk_counter_reg[1]),
        .I1(\slow_clk_counter_reg_n_0_[0] ),
        .I2(slow_clk_counter_reg[2]),
        .I3(slow_clk_counter_reg[5]),
        .I4(slow_clk_counter_reg[4]),
        .I5(slow_clk_counter_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h1555555FC0000000)) 
    \slow_clk_counter[4]_i_1 
       (.I0(slow_clk_counter_reg[5]),
        .I1(\slow_clk_counter_reg_n_0_[0] ),
        .I2(slow_clk_counter_reg[3]),
        .I3(slow_clk_counter_reg[2]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h5555555F80000000)) 
    \slow_clk_counter[5]_i_1 
       (.I0(slow_clk_counter_reg[4]),
        .I1(\slow_clk_counter_reg_n_0_[0] ),
        .I2(slow_clk_counter_reg[3]),
        .I3(slow_clk_counter_reg[2]),
        .I4(slow_clk_counter_reg[1]),
        .I5(slow_clk_counter_reg[5]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[0]),
        .Q(\slow_clk_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[1]),
        .Q(slow_clk_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[2]),
        .Q(slow_clk_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[3]),
        .Q(slow_clk_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[4]),
        .Q(slow_clk_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \slow_clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(p_0_in[5]),
        .Q(slow_clk_counter_reg[5]));
  LUT6 #(
    .INIT(64'h01FFFFFFFE000000)) 
    slow_clk_i_1
       (.I0(slow_clk_counter_reg[3]),
        .I1(slow_clk_counter_reg[2]),
        .I2(slow_clk_counter_reg[1]),
        .I3(slow_clk_counter_reg[4]),
        .I4(slow_clk_counter_reg[5]),
        .I5(slow_clk),
        .O(slow_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    slow_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(odr_int_i_2_n_0),
        .D(slow_clk_i_1_n_0),
        .Q(slow_clk));
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
