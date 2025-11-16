-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Nov  3 21:15:44 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_to_bram_0_0/ad4134fw_ad4134_to_bram_0_0_stub.vhdl
-- Design      : ad4134fw_ad4134_to_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ad4134fw_ad4134_to_bram_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy : in STD_LOGIC;
    addra : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : out STD_LOGIC;
    done : out STD_LOGIC;
    bram_enable : in STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_to_bram_0_0 : entity is "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ad4134fw_ad4134_to_bram_0_0 : entity is "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ad4134_to_bram,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=24}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_to_bram_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_to_bram_0_0 : entity is "module_ref";
end ad4134fw_ad4134_to_bram_0_0;

architecture stub of ad4134fw_ad4134_to_bram_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst_n,data_in0[23:0],data_in1[23:0],data_in2[23:0],data_in3[23:0],data_rdy,addra[14:0],dia[31:0],wea,done,bram_enable,debug[3:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_mode of rst_n : signal is "slave rst_n";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "ad4134_to_bram,Vivado 2024.2";
begin
end;
