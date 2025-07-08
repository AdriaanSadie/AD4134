-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Dec 15 19:08:19 2022
-- Host        : SADIE-SAAB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_scc_config_0_0_sim_netlist.vhdl
-- Design      : system_scc_config_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    cfg_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gain_ctrl_1_1 : out STD_LOGIC;
    gain_ctrl_1_0 : out STD_LOGIC;
    gain_ctrl_2_1 : out STD_LOGIC;
    gain_ctrl_2_0 : out STD_LOGIC;
    switch_1 : out STD_LOGIC;
    switch_2 : out STD_LOGIC;
    n_enable_switch : out STD_LOGIC;
    led_2 : out STD_LOGIC;
    led_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_scc_config_0_0,scc_config,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "scc_config,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^cfg_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^cfg_in\(8 downto 0) <= cfg_in(8 downto 0);
  gain_ctrl_1_0 <= \^cfg_in\(7);
  gain_ctrl_1_1 <= \^cfg_in\(8);
  gain_ctrl_2_0 <= \^cfg_in\(5);
  gain_ctrl_2_1 <= \^cfg_in\(6);
  led_1 <= \^cfg_in\(0);
  led_2 <= \^cfg_in\(1);
  n_enable_switch <= \^cfg_in\(2);
  switch_1 <= \^cfg_in\(4);
  switch_2 <= \^cfg_in\(3);
end STRUCTURE;
