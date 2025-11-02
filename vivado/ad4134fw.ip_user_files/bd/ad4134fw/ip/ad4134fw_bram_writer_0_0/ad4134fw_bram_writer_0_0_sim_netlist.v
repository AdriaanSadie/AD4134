// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Oct 30 23:04:23 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_bram_writer_0_0/ad4134fw_bram_writer_0_0_sim_netlist.v
// Design      : ad4134fw_bram_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_bram_writer_0_0,bram_writer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "bram_writer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_bram_writer_0_0
   (clk,
    reset_n,
    start,
    addra,
    dia,
    wea,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input start;
  output [12:0]addra;
  output [31:0]dia;
  output wea;
  output done;

  wire \<const0> ;
  wire [12:2]\^addra ;
  wire clk;
  wire [31:0]dia;
  wire done;
  wire reset_n;
  wire start;
  wire wea;

  assign addra[12:2] = \^addra [12:2];
  assign addra[1] = \<const0> ;
  assign addra[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ad4134fw_bram_writer_0_0_bram_writer U0
       (.addra(\^addra ),
        .clk(clk),
        .dia(dia),
        .done(done),
        .reset_n(reset_n),
        .start(start),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "bram_writer" *) 
module ad4134fw_bram_writer_0_0_bram_writer
   (addra,
    dia,
    done,
    wea,
    clk,
    reset_n,
    start);
  output [10:0]addra;
  output [31:0]dia;
  output done;
  output wea;
  input clk;
  input reset_n;
  input start;

  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \addr_cnt[0]_i_1_n_0 ;
  wire \addr_cnt[10]_i_1_n_0 ;
  wire \addr_cnt[10]_i_2_n_0 ;
  wire \addr_cnt[10]_i_3_n_0 ;
  wire \addr_cnt[11]_i_1_n_0 ;
  wire \addr_cnt[12]_i_1_n_0 ;
  wire \addr_cnt[1]_i_1_n_0 ;
  wire \addr_cnt[2]_i_1_n_0 ;
  wire \addr_cnt[3]_i_1_n_0 ;
  wire \addr_cnt[4]_i_1_n_0 ;
  wire \addr_cnt[5]_i_1_n_0 ;
  wire \addr_cnt[6]_i_1_n_0 ;
  wire \addr_cnt[7]_i_1_n_0 ;
  wire \addr_cnt[8]_i_1_n_0 ;
  wire \addr_cnt[9]_i_1_n_0 ;
  wire \addr_cnt_reg_n_0_[11] ;
  wire \addr_cnt_reg_n_0_[12] ;
  wire [10:0]addra;
  wire clk;
  wire \data_cnt[0]_i_1_n_0 ;
  wire \data_cnt[10]_i_1_n_0 ;
  wire \data_cnt[11]_i_1_n_0 ;
  wire \data_cnt[12]_i_1_n_0 ;
  wire \data_cnt[13]_i_1_n_0 ;
  wire \data_cnt[14]_i_1_n_0 ;
  wire \data_cnt[15]_i_1_n_0 ;
  wire \data_cnt[16]_i_1_n_0 ;
  wire \data_cnt[17]_i_1_n_0 ;
  wire \data_cnt[18]_i_1_n_0 ;
  wire \data_cnt[19]_i_1_n_0 ;
  wire \data_cnt[1]_i_1_n_0 ;
  wire \data_cnt[20]_i_1_n_0 ;
  wire \data_cnt[21]_i_1_n_0 ;
  wire \data_cnt[22]_i_1_n_0 ;
  wire \data_cnt[23]_i_1_n_0 ;
  wire \data_cnt[24]_i_1_n_0 ;
  wire \data_cnt[25]_i_1_n_0 ;
  wire \data_cnt[26]_i_1_n_0 ;
  wire \data_cnt[27]_i_1_n_0 ;
  wire \data_cnt[28]_i_1_n_0 ;
  wire \data_cnt[29]_i_1_n_0 ;
  wire \data_cnt[2]_i_1_n_0 ;
  wire \data_cnt[30]_i_1_n_0 ;
  wire \data_cnt[31]_i_1_n_0 ;
  wire \data_cnt[3]_i_1_n_0 ;
  wire \data_cnt[4]_i_1_n_0 ;
  wire \data_cnt[5]_i_1_n_0 ;
  wire \data_cnt[6]_i_1_n_0 ;
  wire \data_cnt[7]_i_1_n_0 ;
  wire \data_cnt[8]_i_1_n_0 ;
  wire \data_cnt[9]_i_1_n_0 ;
  wire [31:0]dia;
  wire done;
  wire [12:1]in2;
  wire [31:1]in4;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire reset_n;
  wire start;
  wire start_r1;
  wire start_r1_i_1_n_0;
  wire start_r2;
  wire start_r2_i_1_n_0;
  wire wea;
  wire wea_i_1_n_0;
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(addra[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[2]),
        .I4(addra[6]),
        .I5(addra[5]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(addra[9]),
        .I1(addra[10]),
        .I2(addra[7]),
        .I3(addra[8]),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .I5(\addr_cnt_reg_n_0_[11] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_r1),
        .I2(start_r2),
        .I3(done),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(done),
        .PRE(\addr_cnt[10]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,finished:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(addra[0]),
        .O(\addr_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    \addr_cnt[10]_i_1 
       (.I0(done),
        .I1(start_r2),
        .I2(start_r1),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[10]),
        .O(\addr_cnt[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[10]_i_3 
       (.I0(reset_n),
        .O(\addr_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[11]),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[12]),
        .O(\addr_cnt[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \addr_cnt[1]_i_1 
       (.I0(done),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(in2[1]),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[2]),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[3]),
        .O(\addr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[4]),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[5]),
        .O(\addr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[6]),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[7]),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[8]),
        .O(\addr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in2[9]),
        .O(\addr_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(addra[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[10]_i_2_n_0 ),
        .Q(addra[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[12] ));
  FDPE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .PRE(\addr_cnt[10]_i_3_n_0 ),
        .Q(addra[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(addra[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(addra[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(addra[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(addra[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(addra[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(addra[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(addra[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(addra[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(dia[0]),
        .O(\data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[10]),
        .O(\data_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[11]),
        .O(\data_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[12]),
        .O(\data_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[13]),
        .O(\data_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[14]),
        .O(\data_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[15]),
        .O(\data_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[16]),
        .O(\data_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[17]),
        .O(\data_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[18]),
        .O(\data_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[19]),
        .O(\data_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[1]),
        .O(\data_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[20]),
        .O(\data_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[21]),
        .O(\data_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[22]),
        .O(\data_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[23]),
        .O(\data_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[24]),
        .O(\data_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[25]),
        .O(\data_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[26]),
        .O(\data_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[27]),
        .O(\data_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[28]),
        .O(\data_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[29]),
        .O(\data_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[2]),
        .O(\data_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[30]),
        .O(\data_cnt[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[31]),
        .O(\data_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[3]),
        .O(\data_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[4]),
        .O(\data_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[5]),
        .O(\data_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[6]),
        .O(\data_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[7]),
        .O(\data_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[8]),
        .O(\data_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in4[9]),
        .O(\data_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[0] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[0]_i_1_n_0 ),
        .Q(dia[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[10] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[10]_i_1_n_0 ),
        .Q(dia[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[11] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[11]_i_1_n_0 ),
        .Q(dia[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[12] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[12]_i_1_n_0 ),
        .Q(dia[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[13] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[13]_i_1_n_0 ),
        .Q(dia[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[14] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[14]_i_1_n_0 ),
        .Q(dia[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[15] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[15]_i_1_n_0 ),
        .Q(dia[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[16] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[16]_i_1_n_0 ),
        .Q(dia[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[17] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[17]_i_1_n_0 ),
        .Q(dia[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[18] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[18]_i_1_n_0 ),
        .Q(dia[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[19] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[19]_i_1_n_0 ),
        .Q(dia[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[1] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[1]_i_1_n_0 ),
        .Q(dia[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[20] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[20]_i_1_n_0 ),
        .Q(dia[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[21] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[21]_i_1_n_0 ),
        .Q(dia[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[22] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[22]_i_1_n_0 ),
        .Q(dia[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[23] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[23]_i_1_n_0 ),
        .Q(dia[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[24] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[24]_i_1_n_0 ),
        .Q(dia[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[25] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[25]_i_1_n_0 ),
        .Q(dia[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[26] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[26]_i_1_n_0 ),
        .Q(dia[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[27] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[27]_i_1_n_0 ),
        .Q(dia[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[28] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[28]_i_1_n_0 ),
        .Q(dia[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[29] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[29]_i_1_n_0 ),
        .Q(dia[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[2] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[2]_i_1_n_0 ),
        .Q(dia[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[30] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[30]_i_1_n_0 ),
        .Q(dia[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[31] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[31]_i_1_n_0 ),
        .Q(dia[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[3] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[3]_i_1_n_0 ),
        .Q(dia[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[4] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[4]_i_1_n_0 ),
        .Q(dia[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[5] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[5]_i_1_n_0 ),
        .Q(dia[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[6] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[6]_i_1_n_0 ),
        .Q(dia[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[7] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[7]_i_1_n_0 ),
        .Q(dia[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[8] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[8]_i_1_n_0 ),
        .Q(dia[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_cnt_reg[9] 
       (.C(clk),
        .CE(\addr_cnt[10]_i_1_n_0 ),
        .CLR(\addr_cnt[10]_i_3_n_0 ),
        .D(\data_cnt[9]_i_1_n_0 ),
        .Q(dia[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(addra[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in2[4:1]),
        .S(addra[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in2[8:5]),
        .S(addra[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in2[12:9]),
        .S({\addr_cnt_reg_n_0_[12] ,\addr_cnt_reg_n_0_[11] ,addra[10:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(dia[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[4:1]),
        .S(dia[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S(dia[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S(dia[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:13]),
        .S(dia[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[20:17]),
        .S(dia[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:21]),
        .S(dia[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[28:25]),
        .S(dia[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],in4[31:29]}),
        .S({1'b0,dia[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    start_r1_i_1
       (.I0(start),
        .I1(reset_n),
        .I2(start_r1),
        .O(start_r1_i_1_n_0));
  FDRE start_r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_r1_i_1_n_0),
        .Q(start_r1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    start_r2_i_1
       (.I0(start_r1),
        .I1(reset_n),
        .I2(start_r2),
        .O(start_r2_i_1_n_0));
  FDRE start_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_r2_i_1_n_0),
        .Q(start_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    wea_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(reset_n),
        .I2(wea),
        .O(wea_i_1_n_0));
  FDRE wea_reg
       (.C(clk),
        .CE(1'b1),
        .D(wea_i_1_n_0),
        .Q(wea),
        .R(1'b0));
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
