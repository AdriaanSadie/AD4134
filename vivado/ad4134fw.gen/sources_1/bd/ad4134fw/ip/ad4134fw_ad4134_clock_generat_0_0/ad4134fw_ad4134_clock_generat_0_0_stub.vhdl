-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 16 21:37:04 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_clock_generat_0_0/ad4134fw_ad4134_clock_generat_0_0_stub.vhdl
-- Design      : ad4134fw_ad4134_clock_generat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ad4134fw_ad4134_clock_generat_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_clk_en : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_clock_generat_0_0 : entity is "ad4134fw_ad4134_clock_generat_0_0,ad4134_clock_generator,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ad4134fw_ad4134_clock_generat_0_0 : entity is "ad4134fw_ad4134_clock_generat_0_0,ad4134_clock_generator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_clock_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_clock_generat_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_clock_generat_0_0 : entity is "module_ref";
end ad4134fw_ad4134_clock_generat_0_0;

architecture stub of ad4134fw_ad4134_clock_generat_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rstn,spi_clk,spi_clk_en";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_mode of rstn : signal is "slave rstn";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_mode of spi_clk : signal is "master spi_clk";
  attribute x_interface_parameter of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ad4134fw_ad4134_clock_generat_0_0_spi_clk, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "ad4134_clock_generator,Vivado 2024.2";
begin
end;
