// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 20 11:13:20 2023
// Host        : ZA-WASADIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work_other/FW/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_i2c_expander_0_1/system_i2c_expander_0_1_sim_netlist.v
// Design      : system_i2c_expander_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_i2c_expander_0_1,i2c_expander,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "i2c_expander,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_i2c_expander_0_1
   (clk_in,
    rstn,
    axi_gpio_in,
    axi_gpio_out,
    scl,
    sda);
  input clk_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]axi_gpio_in;
  output [31:0]axi_gpio_out;
  output scl;
  inout sda;

  wire \<const0> ;
  wire U0_n_1;
  wire U0_n_2;
  wire [31:0]axi_gpio_in;
  wire clk_in;
  wire i2c_clk;
  wire rstn;
  wire scl;
  wire sda;
  wire sda_INST_0_i_2_n_0;

  assign axi_gpio_out[31] = \<const0> ;
  assign axi_gpio_out[30] = \<const0> ;
  assign axi_gpio_out[29] = \<const0> ;
  assign axi_gpio_out[28] = \<const0> ;
  assign axi_gpio_out[27] = \<const0> ;
  assign axi_gpio_out[26] = \<const0> ;
  assign axi_gpio_out[25] = \<const0> ;
  assign axi_gpio_out[24] = \<const0> ;
  assign axi_gpio_out[23] = \<const0> ;
  assign axi_gpio_out[22] = \<const0> ;
  assign axi_gpio_out[21] = \<const0> ;
  assign axi_gpio_out[20] = \<const0> ;
  assign axi_gpio_out[19] = \<const0> ;
  assign axi_gpio_out[18] = \<const0> ;
  assign axi_gpio_out[17] = \<const0> ;
  assign axi_gpio_out[16] = \<const0> ;
  assign axi_gpio_out[15] = \<const0> ;
  assign axi_gpio_out[14] = \<const0> ;
  assign axi_gpio_out[13] = \<const0> ;
  assign axi_gpio_out[12] = \<const0> ;
  assign axi_gpio_out[11] = \<const0> ;
  assign axi_gpio_out[10] = \<const0> ;
  assign axi_gpio_out[9] = \<const0> ;
  assign axi_gpio_out[8] = \<const0> ;
  assign axi_gpio_out[7] = \<const0> ;
  assign axi_gpio_out[6] = \<const0> ;
  assign axi_gpio_out[5] = \<const0> ;
  assign axi_gpio_out[4] = \<const0> ;
  assign axi_gpio_out[3] = \<const0> ;
  assign axi_gpio_out[2] = \<const0> ;
  assign axi_gpio_out[1] = \<const0> ;
  assign axi_gpio_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_i2c_expander_0_1_i2c_expander U0
       (.axi_gpio_in({axi_gpio_in[31:29],axi_gpio_in[15:0]}),
        .clk_in(clk_in),
        .i2c_clk(i2c_clk),
        .i2c_start_flag_reg_0(U0_n_2),
        .rstn(rstn),
        .rstn_0(U0_n_1),
        .scl(scl),
        .sda(sda),
        .sda_INST_0_i_2(sda_INST_0_i_2_n_0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sda_INST_0_i_2
       (.C(i2c_clk),
        .CE(1'b1),
        .D(U0_n_2),
        .PRE(U0_n_1),
        .Q(sda_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "i2c_expander" *) 
module system_i2c_expander_0_1_i2c_expander
   (i2c_clk,
    rstn_0,
    i2c_start_flag_reg_0,
    sda,
    scl,
    clk_in,
    rstn,
    sda_INST_0_i_2,
    axi_gpio_in);
  output i2c_clk;
  output rstn_0;
  output i2c_start_flag_reg_0;
  output sda;
  output scl;
  input clk_in;
  input rstn;
  input sda_INST_0_i_2;
  input [18:0]axi_gpio_in;

  wire FSM_sequential_i2c_state_i_1_n_0;
  wire [18:0]axi_gpio_in;
  wire \axi_gpio_in_reg1_reg_n_0_[0] ;
  wire \axi_gpio_in_reg1_reg_n_0_[10] ;
  wire \axi_gpio_in_reg1_reg_n_0_[11] ;
  wire \axi_gpio_in_reg1_reg_n_0_[12] ;
  wire \axi_gpio_in_reg1_reg_n_0_[13] ;
  wire \axi_gpio_in_reg1_reg_n_0_[14] ;
  wire \axi_gpio_in_reg1_reg_n_0_[15] ;
  wire \axi_gpio_in_reg1_reg_n_0_[1] ;
  wire \axi_gpio_in_reg1_reg_n_0_[29] ;
  wire \axi_gpio_in_reg1_reg_n_0_[2] ;
  wire \axi_gpio_in_reg1_reg_n_0_[30] ;
  wire \axi_gpio_in_reg1_reg_n_0_[3] ;
  wire \axi_gpio_in_reg1_reg_n_0_[4] ;
  wire \axi_gpio_in_reg1_reg_n_0_[5] ;
  wire \axi_gpio_in_reg1_reg_n_0_[6] ;
  wire \axi_gpio_in_reg1_reg_n_0_[7] ;
  wire \axi_gpio_in_reg1_reg_n_0_[8] ;
  wire \axi_gpio_in_reg1_reg_n_0_[9] ;
  wire [31:31]axi_gpio_in_reg2;
  wire clk_in;
  wire i2c_ack_flag;
  wire i2c_ack_flag_reg_n_0;
  wire i2c_clk;
  wire \i2c_clk_counter[0]_i_1_n_0 ;
  wire \i2c_clk_counter[1]_i_1_n_0 ;
  wire \i2c_clk_counter[2]_i_1_n_0 ;
  wire \i2c_clk_counter[3]_i_1_n_0 ;
  wire \i2c_clk_counter[4]_i_1_n_0 ;
  wire \i2c_clk_counter[5]_i_1_n_0 ;
  wire [5:0]i2c_clk_counter_reg;
  wire i2c_clk_i_1_n_0;
  wire [7:0]i2c_ctrl_addr_reg;
  wire \i2c_ctrl_addr_reg_reg_n_0_[0] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[1] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[2] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[3] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[4] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[5] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[6] ;
  wire \i2c_ctrl_addr_reg_reg_n_0_[7] ;
  wire [7:0]i2c_data_reg;
  wire \i2c_data_reg[7]_i_1_n_0 ;
  wire \i2c_data_reg[7]_i_3_n_0 ;
  wire \i2c_data_reg_reg_n_0_[0] ;
  wire \i2c_data_reg_reg_n_0_[1] ;
  wire \i2c_data_reg_reg_n_0_[2] ;
  wire \i2c_data_reg_reg_n_0_[3] ;
  wire \i2c_data_reg_reg_n_0_[4] ;
  wire \i2c_data_reg_reg_n_0_[5] ;
  wire \i2c_data_reg_reg_n_0_[6] ;
  wire \i2c_data_reg_reg_n_0_[7] ;
  wire [3:0]i2c_opcode_reg;
  wire \i2c_opcode_reg_reg_n_0_[0] ;
  wire \i2c_opcode_reg_reg_n_0_[2] ;
  wire \i2c_opcode_reg_reg_n_0_[3] ;
  wire [3:0]i2c_shift_reg_counter;
  wire \i2c_shift_reg_counter[0]_i_2_n_0 ;
  wire \i2c_shift_reg_counter[3]_i_1_n_0 ;
  wire \i2c_shift_reg_counter[3]_i_3_n_0 ;
  wire \i2c_shift_reg_counter_reg_n_0_[0] ;
  wire \i2c_shift_reg_counter_reg_n_0_[1] ;
  wire \i2c_shift_reg_counter_reg_n_0_[2] ;
  wire \i2c_shift_reg_counter_reg_n_0_[3] ;
  wire i2c_start_flag;
  wire i2c_start_flag_reg_0;
  wire i2c_start_flag_reg_n_0;
  wire i2c_state112_out;
  wire i2c_write_ctrl_addr_flag;
  wire i2c_write_ctrl_addr_flag_reg_n_0;
  wire i2c_write_data_flag;
  wire i2c_write_data_flag_reg_n_0;
  wire i2c_write_opcode_flag;
  wire i2c_write_opcode_flag_reg_n_0;
  wire i2c_write_stop_flag;
  wire i2c_write_stop_flag_0;
  wire i2c_write_tracker;
  wire \i2c_write_tracker[0]_i_1_n_0 ;
  wire [4:0]p_0_in;
  wire p_0_in__0;
  wire [4:1]p_0_in__1;
  wire p_1_in11_in;
  wire rstn;
  wire rstn_0;
  wire scl;
  wire scl_en_i_1_n_0;
  wire scl_en_reg_n_0;
  wire scl_write;
  wire scl_write_i_1_n_0;
  wire scl_write_i_3_n_0;
  wire scl_write_reg_n_0;
  wire sda;
  wire sda_INST_0_i_2;
  wire sda_out;
  wire sda_out2;
  wire sda_out_tristate_oe_i_10_n_0;
  wire sda_out_tristate_oe_i_11_n_0;
  wire sda_out_tristate_oe_i_1_n_0;
  wire sda_out_tristate_oe_i_3_n_0;
  wire sda_out_tristate_oe_i_4_n_0;
  wire sda_out_tristate_oe_i_5_n_0;
  wire sda_out_tristate_oe_i_6_n_0;
  wire sda_out_tristate_oe_i_7_n_0;
  wire sda_out_tristate_oe_i_8_n_0;
  wire sda_out_tristate_oe_i_9_n_0;
  wire sda_out_tristate_oe_reg_i_2_n_0;
  wire sda_out_tristate_oe_reg_n_0;
  wire sda_write_i_1_n_0;
  wire sda_write_i_2_n_0;
  wire sda_write_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF404)) 
    FSM_sequential_i2c_state_i_1
       (.I0(axi_gpio_in_reg2),
        .I1(p_1_in11_in),
        .I2(i2c_write_tracker),
        .I3(\i2c_data_reg[7]_i_3_n_0 ),
        .O(FSM_sequential_i2c_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "i2c_s_read:01,i2c_s_idle:0,i2c_s_write:1" *) 
  FDCE FSM_sequential_i2c_state_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(FSM_sequential_i2c_state_i_1_n_0),
        .Q(i2c_write_tracker));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_gpio_in_reg1[31]_i_1 
       (.I0(rstn),
        .O(rstn_0));
  FDCE \axi_gpio_in_reg1_reg[0] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[0]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[0] ));
  FDCE \axi_gpio_in_reg1_reg[10] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[10]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[10] ));
  FDCE \axi_gpio_in_reg1_reg[11] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[11]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[11] ));
  FDCE \axi_gpio_in_reg1_reg[12] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[12]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[12] ));
  FDCE \axi_gpio_in_reg1_reg[13] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[13]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[13] ));
  FDCE \axi_gpio_in_reg1_reg[14] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[14]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[14] ));
  FDCE \axi_gpio_in_reg1_reg[15] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[15]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[15] ));
  FDCE \axi_gpio_in_reg1_reg[1] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[1]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[1] ));
  FDCE \axi_gpio_in_reg1_reg[29] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[16]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[29] ));
  FDCE \axi_gpio_in_reg1_reg[2] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[2]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[2] ));
  FDCE \axi_gpio_in_reg1_reg[30] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[17]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[30] ));
  FDCE \axi_gpio_in_reg1_reg[31] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[18]),
        .Q(p_1_in11_in));
  FDCE \axi_gpio_in_reg1_reg[3] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[3]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[3] ));
  FDCE \axi_gpio_in_reg1_reg[4] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[4]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[4] ));
  FDCE \axi_gpio_in_reg1_reg[5] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[5]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[5] ));
  FDCE \axi_gpio_in_reg1_reg[6] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[6]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[6] ));
  FDCE \axi_gpio_in_reg1_reg[7] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[7]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[7] ));
  FDCE \axi_gpio_in_reg1_reg[8] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[8]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[8] ));
  FDCE \axi_gpio_in_reg1_reg[9] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(axi_gpio_in[9]),
        .Q(\axi_gpio_in_reg1_reg_n_0_[9] ));
  FDCE \axi_gpio_in_reg2_reg[31] 
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(p_1_in11_in),
        .Q(axi_gpio_in_reg2));
  LUT6 #(
    .INIT(64'h0000000082000080)) 
    i2c_ack_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(i2c_ack_flag));
  FDCE i2c_ack_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_ack_flag),
        .Q(i2c_ack_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    \i2c_clk_counter[0]_i_1 
       (.I0(i2c_clk_counter_reg[2]),
        .I1(i2c_clk_counter_reg[3]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[0]),
        .I4(i2c_clk_counter_reg[4]),
        .I5(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \i2c_clk_counter[1]_i_1 
       (.I0(i2c_clk_counter_reg[1]),
        .I1(i2c_clk_counter_reg[0]),
        .I2(i2c_clk_counter_reg[4]),
        .I3(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006A6A6A)) 
    \i2c_clk_counter[2]_i_1 
       (.I0(i2c_clk_counter_reg[2]),
        .I1(i2c_clk_counter_reg[1]),
        .I2(i2c_clk_counter_reg[0]),
        .I3(i2c_clk_counter_reg[4]),
        .I4(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00006CCC6CCC6CCC)) 
    \i2c_clk_counter[3]_i_1 
       (.I0(i2c_clk_counter_reg[2]),
        .I1(i2c_clk_counter_reg[3]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[0]),
        .I4(i2c_clk_counter_reg[4]),
        .I5(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000180007FFF8000)) 
    \i2c_clk_counter[4]_i_1 
       (.I0(i2c_clk_counter_reg[2]),
        .I1(i2c_clk_counter_reg[3]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[0]),
        .I4(i2c_clk_counter_reg[4]),
        .I5(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF80000000)) 
    \i2c_clk_counter[5]_i_1 
       (.I0(i2c_clk_counter_reg[2]),
        .I1(i2c_clk_counter_reg[3]),
        .I2(i2c_clk_counter_reg[1]),
        .I3(i2c_clk_counter_reg[0]),
        .I4(i2c_clk_counter_reg[4]),
        .I5(i2c_clk_counter_reg[5]),
        .O(\i2c_clk_counter[5]_i_1_n_0 ));
  FDCE \i2c_clk_counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[0]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[0]));
  FDCE \i2c_clk_counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[1]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[1]));
  FDCE \i2c_clk_counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[2]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[2]));
  FDCE \i2c_clk_counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[3]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[3]));
  FDCE \i2c_clk_counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[4]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[4]));
  FDCE \i2c_clk_counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(\i2c_clk_counter[5]_i_1_n_0 ),
        .Q(i2c_clk_counter_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    i2c_clk_i_1
       (.I0(p_0_in__0),
        .I1(i2c_clk),
        .O(i2c_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    i2c_clk_i_2
       (.I0(i2c_clk_counter_reg[5]),
        .I1(i2c_clk_counter_reg[4]),
        .I2(i2c_clk_counter_reg[0]),
        .I3(i2c_clk_counter_reg[1]),
        .I4(i2c_clk_counter_reg[3]),
        .I5(i2c_clk_counter_reg[2]),
        .O(p_0_in__0));
  FDPE i2c_clk_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(i2c_clk_i_1_n_0),
        .PRE(rstn_0),
        .Q(i2c_clk));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[8] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[1]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[9] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[10] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[3]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[11] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[4]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[12] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[5]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[13] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[6]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[14] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_ctrl_addr_reg[7]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[15] ),
        .I1(i2c_write_tracker),
        .O(i2c_ctrl_addr_reg[7]));
  FDCE \i2c_ctrl_addr_reg_reg[0] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[0]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[0] ));
  FDCE \i2c_ctrl_addr_reg_reg[1] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[1]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[1] ));
  FDCE \i2c_ctrl_addr_reg_reg[2] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[2]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[2] ));
  FDCE \i2c_ctrl_addr_reg_reg[3] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[3]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[3] ));
  FDCE \i2c_ctrl_addr_reg_reg[4] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[4]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[4] ));
  FDCE \i2c_ctrl_addr_reg_reg[5] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[5]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[5] ));
  FDCE \i2c_ctrl_addr_reg_reg[6] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[6]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[6] ));
  FDCE \i2c_ctrl_addr_reg_reg[7] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_ctrl_addr_reg[7]),
        .Q(\i2c_ctrl_addr_reg_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[0] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[1]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[1] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[2] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[3]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[3] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[4]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[4] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[5]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[5] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[6]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[6] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[6]));
  LUT4 #(
    .INIT(16'h4474)) 
    \i2c_data_reg[7]_i_1 
       (.I0(\i2c_data_reg[7]_i_3_n_0 ),
        .I1(i2c_write_tracker),
        .I2(p_1_in11_in),
        .I3(axi_gpio_in_reg2),
        .O(\i2c_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_data_reg[7]_i_2 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[7] ),
        .I1(i2c_write_tracker),
        .O(i2c_data_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \i2c_data_reg[7]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .O(\i2c_data_reg[7]_i_3_n_0 ));
  FDCE \i2c_data_reg_reg[0] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[0]),
        .Q(\i2c_data_reg_reg_n_0_[0] ));
  FDCE \i2c_data_reg_reg[1] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[1]),
        .Q(\i2c_data_reg_reg_n_0_[1] ));
  FDCE \i2c_data_reg_reg[2] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[2]),
        .Q(\i2c_data_reg_reg_n_0_[2] ));
  FDCE \i2c_data_reg_reg[3] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[3]),
        .Q(\i2c_data_reg_reg_n_0_[3] ));
  FDCE \i2c_data_reg_reg[4] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[4]),
        .Q(\i2c_data_reg_reg_n_0_[4] ));
  FDCE \i2c_data_reg_reg[5] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[5]),
        .Q(\i2c_data_reg_reg_n_0_[5] ));
  FDCE \i2c_data_reg_reg[6] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[6]),
        .Q(\i2c_data_reg_reg_n_0_[6] ));
  FDCE \i2c_data_reg_reg[7] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_data_reg[7]),
        .Q(\i2c_data_reg_reg_n_0_[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_opcode_reg[0]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[29] ),
        .I1(i2c_write_tracker),
        .O(i2c_opcode_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_opcode_reg[2]_i_1 
       (.I0(\axi_gpio_in_reg1_reg_n_0_[30] ),
        .I1(i2c_write_tracker),
        .O(i2c_opcode_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i2c_opcode_reg[3]_i_1 
       (.I0(i2c_write_tracker),
        .O(i2c_opcode_reg[3]));
  FDCE \i2c_opcode_reg_reg[0] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_opcode_reg[0]),
        .Q(\i2c_opcode_reg_reg_n_0_[0] ));
  FDCE \i2c_opcode_reg_reg[2] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_opcode_reg[2]),
        .Q(\i2c_opcode_reg_reg_n_0_[2] ));
  FDCE \i2c_opcode_reg_reg[3] 
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_opcode_reg[3]),
        .Q(\i2c_opcode_reg_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000055540000)) 
    \i2c_shift_reg_counter[0]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(i2c_write_ctrl_addr_flag_reg_n_0),
        .I2(i2c_write_data_flag_reg_n_0),
        .I3(i2c_write_opcode_flag_reg_n_0),
        .I4(\i2c_shift_reg_counter[0]_i_2_n_0 ),
        .I5(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .O(i2c_shift_reg_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i2c_shift_reg_counter[0]_i_2 
       (.I0(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .O(\i2c_shift_reg_counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444000000004440)) 
    \i2c_shift_reg_counter[1]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(\i2c_shift_reg_counter[3]_i_3_n_0 ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I5(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .O(i2c_shift_reg_counter[1]));
  LUT6 #(
    .INIT(64'h4400440044000040)) 
    \i2c_shift_reg_counter[2]_i_1 
       (.I0(i2c_ack_flag_reg_n_0),
        .I1(\i2c_shift_reg_counter[3]_i_3_n_0 ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I5(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .O(i2c_shift_reg_counter[2]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \i2c_shift_reg_counter[3]_i_1 
       (.I0(i2c_write_stop_flag),
        .I1(i2c_write_opcode_flag_reg_n_0),
        .I2(i2c_write_data_flag_reg_n_0),
        .I3(i2c_write_ctrl_addr_flag_reg_n_0),
        .I4(i2c_ack_flag_reg_n_0),
        .I5(i2c_start_flag_reg_n_0),
        .O(\i2c_shift_reg_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE01FFFF)) 
    \i2c_shift_reg_counter[3]_i_2 
       (.I0(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[3] ),
        .I4(\i2c_shift_reg_counter[3]_i_3_n_0 ),
        .I5(i2c_ack_flag_reg_n_0),
        .O(i2c_shift_reg_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i2c_shift_reg_counter[3]_i_3 
       (.I0(i2c_write_ctrl_addr_flag_reg_n_0),
        .I1(i2c_write_data_flag_reg_n_0),
        .I2(i2c_write_opcode_flag_reg_n_0),
        .O(\i2c_shift_reg_counter[3]_i_3_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[0] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_shift_reg_counter[0]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[1] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_shift_reg_counter[1]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[1] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[2] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(i2c_shift_reg_counter[2]),
        .Q(\i2c_shift_reg_counter_reg_n_0_[2] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \i2c_shift_reg_counter_reg[3] 
       (.C(i2c_clk),
        .CE(\i2c_shift_reg_counter[3]_i_1_n_0 ),
        .D(i2c_shift_reg_counter[3]),
        .PRE(rstn_0),
        .Q(\i2c_shift_reg_counter_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    i2c_start_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(i2c_start_flag));
  FDCE i2c_start_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_start_flag),
        .Q(i2c_start_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00A80200)) 
    i2c_write_ctrl_addr_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .O(i2c_write_ctrl_addr_flag));
  FDCE i2c_write_ctrl_addr_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_write_ctrl_addr_flag),
        .Q(i2c_write_ctrl_addr_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h0000888808888000)) 
    i2c_write_data_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[4]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(p_0_in[2]),
        .O(i2c_write_data_flag));
  FDCE i2c_write_data_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_write_data_flag),
        .Q(i2c_write_data_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h000000000A0A0A28)) 
    i2c_write_opcode_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[4]),
        .O(i2c_write_opcode_flag));
  FDCE i2c_write_opcode_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_write_opcode_flag),
        .Q(i2c_write_opcode_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    i2c_write_stop_flag_i_1
       (.I0(i2c_write_tracker),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(i2c_write_stop_flag_0));
  FDCE i2c_write_stop_flag_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(i2c_write_stop_flag_0),
        .Q(i2c_write_stop_flag));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \i2c_write_tracker[0]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(\i2c_write_tracker[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1555AAAA)) 
    \i2c_write_tracker[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h15AAFF00)) 
    \i2c_write_tracker[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1AF0F0F0)) 
    \i2c_write_tracker[3]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2CCCCCCC)) 
    \i2c_write_tracker[4]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(p_0_in__1[4]));
  FDCE \i2c_write_tracker_reg[0] 
       (.C(i2c_clk),
        .CE(i2c_write_tracker),
        .CLR(rstn_0),
        .D(\i2c_write_tracker[0]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE \i2c_write_tracker_reg[1] 
       (.C(i2c_clk),
        .CE(i2c_write_tracker),
        .CLR(rstn_0),
        .D(p_0_in__1[1]),
        .Q(p_0_in[1]));
  FDCE \i2c_write_tracker_reg[2] 
       (.C(i2c_clk),
        .CE(i2c_write_tracker),
        .CLR(rstn_0),
        .D(p_0_in__1[2]),
        .Q(p_0_in[2]));
  FDCE \i2c_write_tracker_reg[3] 
       (.C(i2c_clk),
        .CE(i2c_write_tracker),
        .CLR(rstn_0),
        .D(p_0_in__1[3]),
        .Q(p_0_in[3]));
  FDCE \i2c_write_tracker_reg[4] 
       (.C(i2c_clk),
        .CE(i2c_write_tracker),
        .CLR(rstn_0),
        .D(p_0_in__1[4]),
        .Q(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    scl_INST_0
       (.I0(i2c_clk),
        .I1(scl_write_reg_n_0),
        .I2(scl_en_reg_n_0),
        .O(scl));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    scl_en_i_1
       (.I0(axi_gpio_in_reg2),
        .I1(p_1_in11_in),
        .I2(i2c_write_tracker),
        .O(scl_en_i_1_n_0));
  FDCE scl_en_reg
       (.C(i2c_clk),
        .CE(\i2c_data_reg[7]_i_1_n_0 ),
        .CLR(rstn_0),
        .D(scl_en_i_1_n_0),
        .Q(scl_en_reg_n_0));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    scl_write_i_1
       (.I0(scl_write),
        .I1(scl_write_i_3_n_0),
        .I2(i2c_write_tracker),
        .I3(p_1_in11_in),
        .I4(axi_gpio_in_reg2),
        .I5(scl_write_reg_n_0),
        .O(scl_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0AAA0AA8)) 
    scl_write_i_2
       (.I0(i2c_write_tracker),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(scl_write));
  LUT5 #(
    .INIT(32'hA80001FF)) 
    scl_write_i_3
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .O(scl_write_i_3_n_0));
  FDCE scl_write_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(scl_write_i_1_n_0),
        .Q(scl_write_reg_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    sda_INST_0
       (.I0(sda_write_reg_n_0),
        .I1(sda_out),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0_i_1
       (.I0(sda_out_tristate_oe_reg_n_0),
        .I1(sda_INST_0_i_2),
        .O(sda_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAFAE)) 
    sda_INST_0_i_3
       (.I0(i2c_start_flag_reg_n_0),
        .I1(sda_out2),
        .I2(i2c_ack_flag_reg_n_0),
        .I3(sda_INST_0_i_2),
        .O(i2c_start_flag_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF0F1)) 
    sda_INST_0_i_4
       (.I0(i2c_write_opcode_flag_reg_n_0),
        .I1(i2c_write_ctrl_addr_flag_reg_n_0),
        .I2(\i2c_shift_reg_counter[0]_i_2_n_0 ),
        .I3(i2c_write_data_flag_reg_n_0),
        .O(sda_out2));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    sda_out_tristate_oe_i_1
       (.I0(sda_out_tristate_oe_reg_i_2_n_0),
        .I1(i2c_write_opcode_flag_reg_n_0),
        .I2(sda_out_tristate_oe_i_3_n_0),
        .I3(i2c_start_flag_reg_n_0),
        .I4(sda_out_tristate_oe_i_4_n_0),
        .I5(sda_out_tristate_oe_reg_n_0),
        .O(sda_out_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_10
       (.I0(\i2c_ctrl_addr_reg_reg_n_0_[0] ),
        .I1(\i2c_ctrl_addr_reg_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\i2c_ctrl_addr_reg_reg_n_0_[2] ),
        .I5(\i2c_ctrl_addr_reg_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_11
       (.I0(\i2c_ctrl_addr_reg_reg_n_0_[4] ),
        .I1(\i2c_ctrl_addr_reg_reg_n_0_[5] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\i2c_ctrl_addr_reg_reg_n_0_[6] ),
        .I5(\i2c_ctrl_addr_reg_reg_n_0_[7] ),
        .O(sda_out_tristate_oe_i_11_n_0));
  LUT6 #(
    .INIT(64'hF00FCA000000CA00)) 
    sda_out_tristate_oe_i_3
       (.I0(\i2c_opcode_reg_reg_n_0_[0] ),
        .I1(\i2c_opcode_reg_reg_n_0_[2] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I4(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I5(\i2c_opcode_reg_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAFFAB)) 
    sda_out_tristate_oe_i_4
       (.I0(i2c_start_flag_reg_n_0),
        .I1(i2c_write_opcode_flag_reg_n_0),
        .I2(i2c_write_ctrl_addr_flag_reg_n_0),
        .I3(\i2c_shift_reg_counter[0]_i_2_n_0 ),
        .I4(i2c_write_data_flag_reg_n_0),
        .I5(i2c_ack_flag_reg_n_0),
        .O(sda_out_tristate_oe_i_4_n_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    sda_out_tristate_oe_i_5
       (.I0(sda_out_tristate_oe_i_7_n_0),
        .I1(sda_out_tristate_oe_i_8_n_0),
        .I2(sda_out_tristate_oe_i_9_n_0),
        .I3(i2c_write_data_flag_reg_n_0),
        .I4(i2c_write_stop_flag),
        .O(sda_out_tristate_oe_i_5_n_0));
  LUT5 #(
    .INIT(32'hFEAB02A8)) 
    sda_out_tristate_oe_i_6
       (.I0(sda_out_tristate_oe_i_10_n_0),
        .I1(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .I4(sda_out_tristate_oe_i_11_n_0),
        .O(sda_out_tristate_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_7
       (.I0(\i2c_data_reg_reg_n_0_[0] ),
        .I1(\i2c_data_reg_reg_n_0_[1] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\i2c_data_reg_reg_n_0_[2] ),
        .I5(\i2c_data_reg_reg_n_0_[3] ),
        .O(sda_out_tristate_oe_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    sda_out_tristate_oe_i_8
       (.I0(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I1(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[2] ),
        .O(sda_out_tristate_oe_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_tristate_oe_i_9
       (.I0(\i2c_data_reg_reg_n_0_[4] ),
        .I1(\i2c_data_reg_reg_n_0_[5] ),
        .I2(\i2c_shift_reg_counter_reg_n_0_[0] ),
        .I3(\i2c_shift_reg_counter_reg_n_0_[1] ),
        .I4(\i2c_data_reg_reg_n_0_[6] ),
        .I5(\i2c_data_reg_reg_n_0_[7] ),
        .O(sda_out_tristate_oe_i_9_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_out_tristate_oe_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .D(sda_out_tristate_oe_i_1_n_0),
        .PRE(rstn_0),
        .Q(sda_out_tristate_oe_reg_n_0));
  MUXF7 sda_out_tristate_oe_reg_i_2
       (.I0(sda_out_tristate_oe_i_5_n_0),
        .I1(sda_out_tristate_oe_i_6_n_0),
        .O(sda_out_tristate_oe_reg_i_2_n_0),
        .S(i2c_write_ctrl_addr_flag_reg_n_0));
  LUT6 #(
    .INIT(64'h4F004FFF40004000)) 
    sda_write_i_1
       (.I0(p_0_in[1]),
        .I1(\i2c_data_reg[7]_i_3_n_0 ),
        .I2(sda_write_i_2_n_0),
        .I3(i2c_write_tracker),
        .I4(i2c_state112_out),
        .I5(sda_write_reg_n_0),
        .O(sda_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE0000001)) 
    sda_write_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(sda_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sda_write_i_3
       (.I0(p_1_in11_in),
        .I1(axi_gpio_in_reg2),
        .O(i2c_state112_out));
  FDCE sda_write_reg
       (.C(i2c_clk),
        .CE(1'b1),
        .CLR(rstn_0),
        .D(sda_write_i_1_n_0),
        .Q(sda_write_reg_n_0));
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
