-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Oct 28 21:30:46 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_control_0_0/ad4134fw_ad4134_control_0_0_stub.vhdl
-- Design      : ad4134fw_ad4134_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ad4134fw_ad4134_control_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    write : out STD_LOGIC;
    read : out STD_LOGIC;
    datain : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spiaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ch_en : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_clk_en : out STD_LOGIC;
    spidone : in STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_control_0_0 : entity is "ad4134fw_ad4134_control_0_0,ad4134_control,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ad4134fw_ad4134_control_0_0 : entity is "ad4134fw_ad4134_control_0_0,ad4134_control,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_control_0_0 : entity is "module_ref";
end ad4134fw_ad4134_control_0_0;

architecture stub of ad4134fw_ad4134_control_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rstn,write,read,datain[7:0],dataout[7:0],spiaddr[7:0],ch_en[3:0],spi_clk_en,spidone,debug[3:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_mode of rstn : signal is "slave rstn";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "ad4134_control,Vivado 2024.2";
begin
end;
