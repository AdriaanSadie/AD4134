-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 19 13:49:56 2023
-- Host        : ZA-WASADIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_spi_0_0_stub.vhdl
-- Design      : system_spi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_in : in STD_LOGIC;
    rstn : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sclk : out STD_LOGIC;
    csn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rstn,axi_gpio_in[31:0],axi_gpio_out[31:0],sclk,csn[3:0],mosi,miso";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi,Vivado 2020.2";
begin
end;
