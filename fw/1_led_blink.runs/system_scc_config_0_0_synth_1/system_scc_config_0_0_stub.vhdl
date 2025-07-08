-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Dec 15 19:08:19 2022
-- Host        : SADIE-SAAB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_scc_config_0_0_stub.vhdl
-- Design      : system_scc_config_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cfg_in[31:0],gain_ctrl_1_1,gain_ctrl_1_0,gain_ctrl_2_1,gain_ctrl_2_0,switch_1,switch_2,n_enable_switch,led_2,led_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "scc_config,Vivado 2020.2";
begin
end;
