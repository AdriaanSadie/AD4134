-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec 20 11:13:20 2023
-- Host        : ZA-WASADIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work_other/FW/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_i2c_expander_0_1/system_i2c_expander_0_1_stub.vhdl
-- Design      : system_i2c_expander_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_i2c_expander_0_1 is
  Port ( 
    clk_in : in STD_LOGIC;
    rstn : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );

end system_i2c_expander_0_1;

architecture stub of system_i2c_expander_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rstn,axi_gpio_in[31:0],axi_gpio_out[31:0],scl,sda";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2c_expander,Vivado 2020.2";
begin
end;
