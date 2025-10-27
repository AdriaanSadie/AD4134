// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Oct 25 15:09:26 2025
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_control_0_0/ad4134fw_ad4134_control_0_0_sim_netlist.v
// Design      : ad4134fw_ad4134_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ad4134fw_ad4134_control_0_0,ad4134_control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ad4134_control,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module ad4134fw_ad4134_control_0_0
   (clk,
    rstn,
    write,
    read,
    datain,
    dataout,
    spiaddr,
    ch_en,
    spi_clk_en,
    spidone,
    debug);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  output write;
  output read;
  output [7:0]datain;
  input [7:0]dataout;
  output [7:0]spiaddr;
  input [3:0]ch_en;
  output spi_clk_en;
  input spidone;
  output [3:0]debug;

  wire \<const0> ;
  wire clk;
  wire [7:0]datain;
  wire [3:0]debug;
  wire rstn;
  wire spi_clk_en;
  wire [6:0]\^spiaddr ;
  wire spidone;
  wire write;

  assign read = \<const0> ;
  assign spiaddr[7] = \<const0> ;
  assign spiaddr[6:0] = \^spiaddr [6:0];
  GND GND
       (.G(\<const0> ));
  ad4134fw_ad4134_control_0_0_ad4134_control inst
       (.clk(clk),
        .datain(datain),
        .debug(debug),
        .rstn(rstn),
        .spi_clk_en(spi_clk_en),
        .spiaddr(\^spiaddr ),
        .spidone(spidone),
        .write(write));
endmodule

(* ORIG_REF_NAME = "ad4134_control" *) 
module ad4134fw_ad4134_control_0_0_ad4134_control
   (datain,
    spiaddr,
    debug,
    write,
    spi_clk_en,
    clk,
    spidone,
    rstn);
  output [7:0]datain;
  output [6:0]spiaddr;
  output [3:0]debug;
  output write;
  output spi_clk_en;
  input clk;
  input spidone;
  input rstn;

  wire \FSM_onehot_setup_state[0]_i_1_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_1_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_2_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_3_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_4_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_5_n_0 ;
  wire \FSM_onehot_setup_state[12]_i_6_n_0 ;
  wire \FSM_onehot_setup_state_reg_n_0_[0] ;
  wire \FSM_onehot_setup_state_reg_n_0_[10] ;
  wire \FSM_onehot_setup_state_reg_n_0_[11] ;
  wire \FSM_onehot_setup_state_reg_n_0_[12] ;
  wire \FSM_onehot_setup_state_reg_n_0_[1] ;
  wire \FSM_onehot_setup_state_reg_n_0_[2] ;
  wire \FSM_onehot_setup_state_reg_n_0_[3] ;
  wire \FSM_onehot_setup_state_reg_n_0_[4] ;
  wire \FSM_onehot_setup_state_reg_n_0_[5] ;
  wire \FSM_onehot_setup_state_reg_n_0_[6] ;
  wire \FSM_onehot_setup_state_reg_n_0_[7] ;
  wire \FSM_onehot_setup_state_reg_n_0_[8] ;
  wire \FSM_onehot_setup_state_reg_n_0_[9] ;
  wire \ODR_COUNT[0]_i_1_n_0 ;
  wire \ODR_COUNT[1]_i_1_n_0 ;
  wire \ODR_COUNT[2]_i_1_n_0 ;
  wire \ODR_COUNT_reg_n_0_[0] ;
  wire \ODR_COUNT_reg_n_0_[1] ;
  wire \ODR_COUNT_reg_n_0_[2] ;
  wire clk;
  wire [7:0]datain;
  wire \datain_i[0]_i_1_n_0 ;
  wire \datain_i[1]_i_1_n_0 ;
  wire \datain_i[2]_i_1_n_0 ;
  wire \datain_i[3]_i_1_n_0 ;
  wire \datain_i[3]_i_2_n_0 ;
  wire \datain_i[4]_i_1_n_0 ;
  wire \datain_i[5]_i_1_n_0 ;
  wire \datain_i[7]_i_1_n_0 ;
  wire \datain_i[7]_i_2_n_0 ;
  wire [3:0]debug;
  wire \debug[0]_i_1_n_0 ;
  wire \debug[1]_i_1_n_0 ;
  wire \debug[2]_i_1_n_0 ;
  wire \debug[3]_i_1_n_0 ;
  wire \debug[3]_i_2_n_0 ;
  wire reset_count;
  wire \reset_count[0]_i_3_n_0 ;
  wire [12:0]reset_count_reg;
  wire \reset_count_reg[0]_i_2_n_0 ;
  wire \reset_count_reg[0]_i_2_n_1 ;
  wire \reset_count_reg[0]_i_2_n_2 ;
  wire \reset_count_reg[0]_i_2_n_3 ;
  wire \reset_count_reg[0]_i_2_n_4 ;
  wire \reset_count_reg[0]_i_2_n_5 ;
  wire \reset_count_reg[0]_i_2_n_6 ;
  wire \reset_count_reg[0]_i_2_n_7 ;
  wire \reset_count_reg[12]_i_1_n_7 ;
  wire \reset_count_reg[4]_i_1_n_0 ;
  wire \reset_count_reg[4]_i_1_n_1 ;
  wire \reset_count_reg[4]_i_1_n_2 ;
  wire \reset_count_reg[4]_i_1_n_3 ;
  wire \reset_count_reg[4]_i_1_n_4 ;
  wire \reset_count_reg[4]_i_1_n_5 ;
  wire \reset_count_reg[4]_i_1_n_6 ;
  wire \reset_count_reg[4]_i_1_n_7 ;
  wire \reset_count_reg[8]_i_1_n_0 ;
  wire \reset_count_reg[8]_i_1_n_1 ;
  wire \reset_count_reg[8]_i_1_n_2 ;
  wire \reset_count_reg[8]_i_1_n_3 ;
  wire \reset_count_reg[8]_i_1_n_4 ;
  wire \reset_count_reg[8]_i_1_n_5 ;
  wire \reset_count_reg[8]_i_1_n_6 ;
  wire \reset_count_reg[8]_i_1_n_7 ;
  wire rstn;
  wire setup_done;
  wire setup_done_i_1_n_0;
  wire spi_clk_en;
  wire spi_clk_en_i_i_1_n_0;
  wire [6:0]spiaddr;
  wire \spiaddr_i[0]_i_1_n_0 ;
  wire \spiaddr_i[0]_i_2_n_0 ;
  wire \spiaddr_i[1]_i_1_n_0 ;
  wire \spiaddr_i[1]_i_2_n_0 ;
  wire \spiaddr_i[1]_i_3_n_0 ;
  wire \spiaddr_i[2]_i_1_n_0 ;
  wire \spiaddr_i[3]_i_1_n_0 ;
  wire \spiaddr_i[3]_i_2_n_0 ;
  wire \spiaddr_i[4]_i_1_n_0 ;
  wire \spiaddr_i[4]_i_2_n_0 ;
  wire \spiaddr_i[5]_i_1_n_0 ;
  wire \spiaddr_i[6]_i_1_n_0 ;
  wire spidone;
  wire spidone_post;
  wire spidone_pre;
  wire write;
  wire write_i_i_1_n_0;
  wire write_i_i_2_n_0;
  wire write_i_i_3_n_0;
  wire write_i_i_4_n_0;
  wire [3:0]\NLW_reset_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_reset_count_reg[12]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_setup_state[0]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I1(setup_done),
        .O(\FSM_onehot_setup_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF0CFFFFFFAE)) 
    \FSM_onehot_setup_state[12]_i_1 
       (.I0(write_i_i_3_n_0),
        .I1(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state[12]_i_3_n_0 ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_setup_state[12]_i_4_n_0 ),
        .O(\FSM_onehot_setup_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_setup_state[12]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I1(setup_done),
        .I2(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .O(\FSM_onehot_setup_state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \FSM_onehot_setup_state[12]_i_3 
       (.I0(\FSM_onehot_setup_state[12]_i_5_n_0 ),
        .I1(reset_count_reg[4]),
        .I2(reset_count_reg[3]),
        .I3(reset_count_reg[6]),
        .I4(reset_count_reg[5]),
        .I5(\FSM_onehot_setup_state[12]_i_6_n_0 ),
        .O(\FSM_onehot_setup_state[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_setup_state[12]_i_4 
       (.I0(spidone_pre),
        .I1(spidone_post),
        .O(\FSM_onehot_setup_state[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_setup_state[12]_i_5 
       (.I0(reset_count_reg[8]),
        .I1(reset_count_reg[7]),
        .I2(reset_count_reg[10]),
        .I3(reset_count_reg[9]),
        .O(\FSM_onehot_setup_state[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_setup_state[12]_i_6 
       (.I0(reset_count_reg[0]),
        .I1(reset_count_reg[11]),
        .I2(reset_count_reg[12]),
        .I3(reset_count_reg[2]),
        .I4(reset_count_reg[1]),
        .O(\FSM_onehot_setup_state[12]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .D(\FSM_onehot_setup_state[0]_i_1_n_0 ),
        .PRE(write_i_i_2_n_0),
        .Q(\FSM_onehot_setup_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_setup_state_reg[12] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state[12]_i_2_n_0 ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_setup_state_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_setup_state[12]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_setup_state_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFAEAFFFF5A4AFAFA)) 
    \ODR_COUNT[0]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[0] ),
        .I1(\ODR_COUNT_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I3(\ODR_COUNT_reg_n_0_[2] ),
        .I4(\FSM_onehot_setup_state[12]_i_4_n_0 ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .O(\ODR_COUNT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCECFFFF9C8CFCFC)) 
    \ODR_COUNT[1]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[0] ),
        .I1(\ODR_COUNT_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I3(\ODR_COUNT_reg_n_0_[2] ),
        .I4(\FSM_onehot_setup_state[12]_i_4_n_0 ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .O(\ODR_COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFEF00FFF0)) 
    \ODR_COUNT[2]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[0] ),
        .I1(\ODR_COUNT_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I3(\ODR_COUNT_reg_n_0_[2] ),
        .I4(\FSM_onehot_setup_state[12]_i_4_n_0 ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .O(\ODR_COUNT[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ODR_COUNT_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(\ODR_COUNT[0]_i_1_n_0 ),
        .Q(\ODR_COUNT_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ODR_COUNT_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(\ODR_COUNT[1]_i_1_n_0 ),
        .Q(\ODR_COUNT_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \ODR_COUNT_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(\ODR_COUNT[2]_i_1_n_0 ),
        .Q(\ODR_COUNT_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \datain_i[0]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .O(\datain_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0080)) 
    \datain_i[1]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[2] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I2(\ODR_COUNT_reg_n_0_[0] ),
        .I3(\ODR_COUNT_reg_n_0_[1] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .O(\datain_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \datain_i[2]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[1] ),
        .I1(\ODR_COUNT_reg_n_0_[2] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .O(\datain_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \datain_i[3]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .I3(\ODR_COUNT_reg_n_0_[0] ),
        .I4(\datain_i[3]_i_2_n_0 ),
        .O(\datain_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \datain_i[3]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I1(\ODR_COUNT_reg_n_0_[2] ),
        .I2(\ODR_COUNT_reg_n_0_[1] ),
        .O(\datain_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \datain_i[4]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[1] ),
        .I1(\ODR_COUNT_reg_n_0_[2] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .O(\datain_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \datain_i[5]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I1(\ODR_COUNT_reg_n_0_[2] ),
        .I2(\ODR_COUNT_reg_n_0_[1] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .O(\datain_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCCC8)) 
    \datain_i[7]_i_1 
       (.I0(\ODR_COUNT_reg_n_0_[2] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I2(\ODR_COUNT_reg_n_0_[1] ),
        .I3(\ODR_COUNT_reg_n_0_[0] ),
        .I4(write_i_i_3_n_0),
        .O(\datain_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \datain_i[7]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .O(\datain_i[7]_i_2_n_0 ));
  FDCE \datain_i_reg[0] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[0]_i_1_n_0 ),
        .Q(datain[0]));
  FDCE \datain_i_reg[1] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[1]_i_1_n_0 ),
        .Q(datain[1]));
  FDCE \datain_i_reg[2] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[2]_i_1_n_0 ),
        .Q(datain[2]));
  FDCE \datain_i_reg[3] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[3]_i_1_n_0 ),
        .Q(datain[3]));
  FDCE \datain_i_reg[4] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[4]_i_1_n_0 ),
        .Q(datain[4]));
  FDCE \datain_i_reg[5] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[5]_i_1_n_0 ),
        .Q(datain[5]));
  FDCE \datain_i_reg[6] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .Q(datain[6]));
  FDCE \datain_i_reg[7] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\datain_i[7]_i_2_n_0 ),
        .Q(datain[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \debug[0]_i_1 
       (.I0(\spiaddr_i[6]_i_1_n_0 ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .O(\debug[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \debug[1]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .O(\debug[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \debug[2]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .O(\debug[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debug[3]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I3(write_i_i_3_n_0),
        .O(\debug[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \debug[3]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .O(\debug[3]_i_2_n_0 ));
  FDCE \debug_reg[0] 
       (.C(clk),
        .CE(\debug[3]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\debug[0]_i_1_n_0 ),
        .Q(debug[0]));
  FDCE \debug_reg[1] 
       (.C(clk),
        .CE(\debug[3]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\debug[1]_i_1_n_0 ),
        .Q(debug[1]));
  FDCE \debug_reg[2] 
       (.C(clk),
        .CE(\debug[3]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\debug[2]_i_1_n_0 ),
        .Q(debug[2]));
  FDCE \debug_reg[3] 
       (.C(clk),
        .CE(\debug[3]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\debug[3]_i_2_n_0 ),
        .Q(debug[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \reset_count[0]_i_1 
       (.I0(\FSM_onehot_setup_state[12]_i_3_n_0 ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .O(reset_count));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_count[0]_i_3 
       (.I0(reset_count_reg[0]),
        .O(\reset_count[0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[0] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[0]_i_2_n_7 ),
        .Q(reset_count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reset_count_reg[0]_i_2_n_0 ,\reset_count_reg[0]_i_2_n_1 ,\reset_count_reg[0]_i_2_n_2 ,\reset_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reset_count_reg[0]_i_2_n_4 ,\reset_count_reg[0]_i_2_n_5 ,\reset_count_reg[0]_i_2_n_6 ,\reset_count_reg[0]_i_2_n_7 }),
        .S({reset_count_reg[3:1],\reset_count[0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[10] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[8]_i_1_n_5 ),
        .Q(reset_count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[11] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[8]_i_1_n_4 ),
        .Q(reset_count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[12] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[12]_i_1_n_7 ),
        .Q(reset_count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_count_reg[12]_i_1 
       (.CI(\reset_count_reg[8]_i_1_n_0 ),
        .CO(\NLW_reset_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_reset_count_reg[12]_i_1_O_UNCONNECTED [3:1],\reset_count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,reset_count_reg[12]}));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[1] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[0]_i_2_n_6 ),
        .Q(reset_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[2] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[0]_i_2_n_5 ),
        .Q(reset_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[3] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[0]_i_2_n_4 ),
        .Q(reset_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[4] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[4]_i_1_n_7 ),
        .Q(reset_count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_count_reg[4]_i_1 
       (.CI(\reset_count_reg[0]_i_2_n_0 ),
        .CO({\reset_count_reg[4]_i_1_n_0 ,\reset_count_reg[4]_i_1_n_1 ,\reset_count_reg[4]_i_1_n_2 ,\reset_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_count_reg[4]_i_1_n_4 ,\reset_count_reg[4]_i_1_n_5 ,\reset_count_reg[4]_i_1_n_6 ,\reset_count_reg[4]_i_1_n_7 }),
        .S(reset_count_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[5] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[4]_i_1_n_6 ),
        .Q(reset_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[6] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[4]_i_1_n_5 ),
        .Q(reset_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[7] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[4]_i_1_n_4 ),
        .Q(reset_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[8] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[8]_i_1_n_7 ),
        .Q(reset_count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_count_reg[8]_i_1 
       (.CI(\reset_count_reg[4]_i_1_n_0 ),
        .CO({\reset_count_reg[8]_i_1_n_0 ,\reset_count_reg[8]_i_1_n_1 ,\reset_count_reg[8]_i_1_n_2 ,\reset_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_count_reg[8]_i_1_n_4 ,\reset_count_reg[8]_i_1_n_5 ,\reset_count_reg[8]_i_1_n_6 ,\reset_count_reg[8]_i_1_n_7 }),
        .S(reset_count_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_count_reg[9] 
       (.C(clk),
        .CE(reset_count),
        .CLR(write_i_i_2_n_0),
        .D(\reset_count_reg[8]_i_1_n_6 ),
        .Q(reset_count_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    setup_done_i_1
       (.I0(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .I2(spidone_post),
        .I3(spidone_pre),
        .I4(setup_done),
        .O(setup_done_i_1_n_0));
  FDCE setup_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(setup_done_i_1_n_0),
        .Q(setup_done));
  LUT6 #(
    .INIT(64'hF3FFF7FFF3000000)) 
    spi_clk_en_i_i_1
       (.I0(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I1(spidone_post),
        .I2(spidone_pre),
        .I3(rstn),
        .I4(write_i_i_3_n_0),
        .I5(spi_clk_en),
        .O(spi_clk_en_i_i_1_n_0));
  FDRE spi_clk_en_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_clk_en_i_i_1_n_0),
        .Q(spi_clk_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spiaddr_i[0]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I5(\spiaddr_i[0]_i_2_n_0 ),
        .O(\spiaddr_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3200)) 
    \spiaddr_i[0]_i_2 
       (.I0(\ODR_COUNT_reg_n_0_[2] ),
        .I1(\ODR_COUNT_reg_n_0_[0] ),
        .I2(\ODR_COUNT_reg_n_0_[1] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .O(\spiaddr_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spiaddr_i[1]_i_1 
       (.I0(\spiaddr_i[1]_i_2_n_0 ),
        .I1(\spiaddr_i[6]_i_1_n_0 ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .I4(\spiaddr_i[1]_i_3_n_0 ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .O(\spiaddr_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spiaddr_i[1]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .O(\spiaddr_i[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spiaddr_i[1]_i_3 
       (.I0(\ODR_COUNT_reg_n_0_[1] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .O(\spiaddr_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF82)) 
    \spiaddr_i[2]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I1(\ODR_COUNT_reg_n_0_[2] ),
        .I2(\ODR_COUNT_reg_n_0_[1] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I5(\spiaddr_i[3]_i_2_n_0 ),
        .O(\spiaddr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFAFFFFFFFA)) 
    \spiaddr_i[3]_i_1 
       (.I0(\spiaddr_i[3]_i_2_n_0 ),
        .I1(\ODR_COUNT_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I5(\ODR_COUNT_reg_n_0_[2] ),
        .O(\spiaddr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spiaddr_i[3]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .O(\spiaddr_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spiaddr_i[4]_i_1 
       (.I0(\spiaddr_i[4]_i_2_n_0 ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I3(\spiaddr_i[6]_i_1_n_0 ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .O(\spiaddr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spiaddr_i[4]_i_2 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[3] ),
        .O(\spiaddr_i[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spiaddr_i[5]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .O(\spiaddr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spiaddr_i[6]_i_1 
       (.I0(\FSM_onehot_setup_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[12] ),
        .O(\spiaddr_i[6]_i_1_n_0 ));
  FDCE \spiaddr_i_reg[0] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[0]_i_1_n_0 ),
        .Q(spiaddr[0]));
  FDCE \spiaddr_i_reg[1] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[1]_i_1_n_0 ),
        .Q(spiaddr[1]));
  FDCE \spiaddr_i_reg[2] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[2]_i_1_n_0 ),
        .Q(spiaddr[2]));
  FDCE \spiaddr_i_reg[3] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[3]_i_1_n_0 ),
        .Q(spiaddr[3]));
  FDCE \spiaddr_i_reg[4] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[4]_i_1_n_0 ),
        .Q(spiaddr[4]));
  FDCE \spiaddr_i_reg[5] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[5]_i_1_n_0 ),
        .Q(spiaddr[5]));
  FDCE \spiaddr_i_reg[6] 
       (.C(clk),
        .CE(\datain_i[7]_i_1_n_0 ),
        .CLR(write_i_i_2_n_0),
        .D(\spiaddr_i[6]_i_1_n_0 ),
        .Q(spiaddr[6]));
  FDCE spidone_post_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(spidone_pre),
        .Q(spidone_post));
  FDCE spidone_pre_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(spidone),
        .Q(spidone_pre));
  LUT5 #(
    .INIT(32'hBBBFBBB0)) 
    write_i_i_1
       (.I0(spidone_pre),
        .I1(spidone_post),
        .I2(write_i_i_3_n_0),
        .I3(\FSM_onehot_setup_state_reg_n_0_[7] ),
        .I4(write),
        .O(write_i_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_i_i_2
       (.I0(rstn),
        .O(write_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    write_i_i_3
       (.I0(\FSM_onehot_setup_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[3] ),
        .I5(write_i_i_4_n_0),
        .O(write_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    write_i_i_4
       (.I0(\FSM_onehot_setup_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_setup_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_setup_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_setup_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_setup_state_reg_n_0_[11] ),
        .O(write_i_i_4_n_0));
  FDCE write_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(write_i_i_2_n_0),
        .D(write_i_i_1_n_0),
        .Q(write));
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
