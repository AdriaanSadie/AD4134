// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 16 21:37:04 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_to_bram_0_0/ad4134fw_ad4134_to_bram_0_0_sim_netlist.v
// Design      : ad4134fw_ad4134_to_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ad4134_to_bram,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_ad4134_to_bram_0_0
   (clk,
    rst_n,
    data_in0,
    data_in1,
    data_in2,
    data_in3,
    data_rdy,
    addra,
    dia,
    wea,
    done,
    bram_enable,
    debug);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
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
  input bram_enable;
  output [3:0]debug;

  wire \<const0> ;
  wire [14:2]\^addra ;
  wire bram_enable;
  wire clk;
  wire [23:0]data_in0;
  wire data_rdy;
  wire [2:0]\^debug ;
  wire [23:0]\^dia ;
  wire rst_n;
  wire wea;

  assign addra[14:2] = \^addra [14:2];
  assign addra[1] = \<const0> ;
  assign addra[0] = \<const0> ;
  assign debug[3] = \<const0> ;
  assign debug[2:0] = \^debug [2:0];
  assign dia[31] = \<const0> ;
  assign dia[30] = \<const0> ;
  assign dia[29] = \<const0> ;
  assign dia[28] = \<const0> ;
  assign dia[27] = \<const0> ;
  assign dia[26] = \<const0> ;
  assign dia[25] = \<const0> ;
  assign dia[24] = \<const0> ;
  assign dia[23:0] = \^dia [23:0];
  assign done = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram U0
       (.addra(\^addra ),
        .bram_enable(bram_enable),
        .clk(clk),
        .data_in0(data_in0),
        .data_rdy(data_rdy),
        .debug(\^debug ),
        .dia(\^dia ),
        .rst_n(rst_n),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "ad4134_to_bram" *) 
module ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram
   (addra,
    dia,
    debug,
    wea,
    clk,
    data_rdy,
    data_in0,
    rst_n,
    bram_enable);
  output [12:0]addra;
  output [23:0]dia;
  output [2:0]debug;
  output wea;
  input clk;
  input data_rdy;
  input [23:0]data_in0;
  input rst_n;
  input bram_enable;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \addr_cnt[12]_i_1_n_0 ;
  wire [14:2]addr_cnt_shifted;
  wire [12:0]addra;
  wire \addra[14]_i_2_n_0 ;
  wire \addra[14]_i_3_n_0 ;
  wire \addra[14]_i_4_n_0 ;
  wire bram_enable;
  wire clk;
  wire [23:0]data_in0;
  wire data_rdy;
  wire data_rdy_r1;
  wire data_rdy_r2;
  wire [2:0]debug;
  wire \debug[0]_i_1_n_0 ;
  wire \debug[1]_i_1_n_0 ;
  wire [23:0]dia;
  wire dia0;
  wire [14:2]p_1_in;
  wire [12:0]plusOp;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire rst_n;
  wire wea;
  wire wea_i_1_n_0;
  wire wea_i_2_n_0;
  wire [7:3]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFA2AA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_rdy_r1),
        .I2(data_rdy_r2),
        .I3(bram_enable),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(bram_enable),
        .I2(data_rdy_r2),
        .I3(data_rdy_r1),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "finished_s:100,idle_s:001,write_s:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(wea_i_2_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "finished_s:100,idle_s:001,write_s:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "finished_s:100,idle_s:001,write_s:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[0]_i_1 
       (.I0(p_1_in[2]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[12]_i_1 
       (.I0(\addra[14]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[12]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .D(plusOp[0]),
        .PRE(wea_i_2_n_0),
        .Q(p_1_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[10]),
        .Q(p_1_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[11]),
        .Q(p_1_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[12]),
        .Q(p_1_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[1]),
        .Q(p_1_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[2]),
        .Q(p_1_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[3]),
        .Q(p_1_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[4]),
        .Q(p_1_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[5]),
        .Q(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[6]),
        .Q(p_1_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[7]),
        .Q(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[8]),
        .Q(p_1_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(plusOp[9]),
        .Q(p_1_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[10]),
        .Q(addr_cnt_shifted[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[11]),
        .Q(addr_cnt_shifted[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[12]),
        .Q(addr_cnt_shifted[12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[13] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[13]),
        .Q(addr_cnt_shifted[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[14] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[14]),
        .Q(addr_cnt_shifted[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[2]),
        .Q(addr_cnt_shifted[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[3]),
        .Q(addr_cnt_shifted[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[4]),
        .Q(addr_cnt_shifted[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[5]),
        .Q(addr_cnt_shifted[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[6]),
        .Q(addr_cnt_shifted[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[7]),
        .Q(addr_cnt_shifted[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[8]),
        .Q(addr_cnt_shifted[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_shifted_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[12]_i_1_n_0 ),
        .CLR(wea_i_2_n_0),
        .D(p_1_in[9]),
        .Q(addr_cnt_shifted[9]));
  LUT3 #(
    .INIT(8'h80)) 
    \addra[14]_i_1 
       (.I0(\addra[14]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(rst_n),
        .O(dia0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \addra[14]_i_2 
       (.I0(\addra[14]_i_3_n_0 ),
        .I1(p_1_in[6]),
        .I2(p_1_in[5]),
        .I3(p_1_in[8]),
        .I4(p_1_in[7]),
        .I5(\addra[14]_i_4_n_0 ),
        .O(\addra[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addra[14]_i_3 
       (.I0(p_1_in[10]),
        .I1(p_1_in[9]),
        .I2(p_1_in[12]),
        .I3(p_1_in[11]),
        .O(\addra[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addra[14]_i_4 
       (.I0(p_1_in[2]),
        .I1(p_1_in[13]),
        .I2(p_1_in[14]),
        .I3(p_1_in[4]),
        .I4(p_1_in[3]),
        .O(\addra[14]_i_4_n_0 ));
  FDRE \addra_reg[10] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[10]),
        .Q(addra[8]),
        .R(1'b0));
  FDRE \addra_reg[11] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[11]),
        .Q(addra[9]),
        .R(1'b0));
  FDRE \addra_reg[12] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[12]),
        .Q(addra[10]),
        .R(1'b0));
  FDRE \addra_reg[13] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[13]),
        .Q(addra[11]),
        .R(1'b0));
  FDRE \addra_reg[14] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[14]),
        .Q(addra[12]),
        .R(1'b0));
  FDRE \addra_reg[2] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[2]),
        .Q(addra[0]),
        .R(1'b0));
  FDRE \addra_reg[3] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[3]),
        .Q(addra[1]),
        .R(1'b0));
  FDRE \addra_reg[4] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[4]),
        .Q(addra[2]),
        .R(1'b0));
  FDRE \addra_reg[5] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[5]),
        .Q(addra[3]),
        .R(1'b0));
  FDRE \addra_reg[6] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[6]),
        .Q(addra[4]),
        .R(1'b0));
  FDRE \addra_reg[7] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[7]),
        .Q(addra[5]),
        .R(1'b0));
  FDRE \addra_reg[8] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[8]),
        .Q(addra[6]),
        .R(1'b0));
  FDRE \addra_reg[9] 
       (.C(clk),
        .CE(dia0),
        .D(addr_cnt_shifted[9]),
        .Q(addra[7]),
        .R(1'b0));
  FDCE data_rdy_r1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(data_rdy),
        .Q(data_rdy_r1));
  FDCE data_rdy_r2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(data_rdy_r1),
        .Q(data_rdy_r2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debug[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\debug[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \debug[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\debug[1]_i_1_n_0 ));
  FDCE \debug_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(\debug[0]_i_1_n_0 ),
        .Q(debug[0]));
  FDCE \debug_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(\debug[1]_i_1_n_0 ),
        .Q(debug[1]));
  FDCE \debug_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(debug[2]));
  FDRE \dia_reg[0] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[0]),
        .Q(dia[0]),
        .R(1'b0));
  FDRE \dia_reg[10] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[10]),
        .Q(dia[10]),
        .R(1'b0));
  FDRE \dia_reg[11] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[11]),
        .Q(dia[11]),
        .R(1'b0));
  FDRE \dia_reg[12] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[12]),
        .Q(dia[12]),
        .R(1'b0));
  FDRE \dia_reg[13] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[13]),
        .Q(dia[13]),
        .R(1'b0));
  FDRE \dia_reg[14] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[14]),
        .Q(dia[14]),
        .R(1'b0));
  FDRE \dia_reg[15] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[15]),
        .Q(dia[15]),
        .R(1'b0));
  FDRE \dia_reg[16] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[16]),
        .Q(dia[16]),
        .R(1'b0));
  FDRE \dia_reg[17] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[17]),
        .Q(dia[17]),
        .R(1'b0));
  FDRE \dia_reg[18] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[18]),
        .Q(dia[18]),
        .R(1'b0));
  FDRE \dia_reg[19] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[19]),
        .Q(dia[19]),
        .R(1'b0));
  FDRE \dia_reg[1] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[1]),
        .Q(dia[1]),
        .R(1'b0));
  FDRE \dia_reg[20] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[20]),
        .Q(dia[20]),
        .R(1'b0));
  FDRE \dia_reg[21] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[21]),
        .Q(dia[21]),
        .R(1'b0));
  FDRE \dia_reg[22] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[22]),
        .Q(dia[22]),
        .R(1'b0));
  FDRE \dia_reg[23] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[23]),
        .Q(dia[23]),
        .R(1'b0));
  FDRE \dia_reg[2] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[2]),
        .Q(dia[2]),
        .R(1'b0));
  FDRE \dia_reg[3] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[3]),
        .Q(dia[3]),
        .R(1'b0));
  FDRE \dia_reg[4] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[4]),
        .Q(dia[4]),
        .R(1'b0));
  FDRE \dia_reg[5] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[5]),
        .Q(dia[5]),
        .R(1'b0));
  FDRE \dia_reg[6] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[6]),
        .Q(dia[6]),
        .R(1'b0));
  FDRE \dia_reg[7] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[7]),
        .Q(dia[7]),
        .R(1'b0));
  FDRE \dia_reg[8] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[8]),
        .Q(dia[8]),
        .R(1'b0));
  FDRE \dia_reg[9] 
       (.C(clk),
        .CE(dia0),
        .D(data_in0[9]),
        .Q(dia[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(p_1_in[2]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S(p_1_in[10:3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:3],plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:4],plusOp[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,p_1_in[14:11]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAB11AA00)) 
    wea_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\addra[14]_i_2_n_0 ),
        .I4(wea),
        .O(wea_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wea_i_2
       (.I0(rst_n),
        .O(wea_i_2_n_0));
  FDCE wea_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(wea_i_2_n_0),
        .D(wea_i_1_n_0),
        .Q(wea));
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
