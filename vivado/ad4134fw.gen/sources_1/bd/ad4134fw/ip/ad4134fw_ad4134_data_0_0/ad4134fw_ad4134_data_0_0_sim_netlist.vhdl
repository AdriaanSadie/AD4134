-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Oct 28 22:06:24 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_data_0_0/ad4134fw_ad4134_data_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_ad4134_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_data_0_0_ad4134_data is
  port (
    odr_out : out STD_LOGIC;
    dclk_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_ad4134_data_0_0_ad4134_data : entity is "ad4134_data";
end ad4134fw_ad4134_data_0_0_ad4134_data;

architecture STRUCTURE of ad4134fw_ad4134_data_0_0_ad4134_data is
  signal \dclk_active__0\ : STD_LOGIC;
  signal dclk_active_n_0 : STD_LOGIC;
  signal odr_int_i_1_n_0 : STD_LOGIC;
  signal odr_int_n_0 : STD_LOGIC;
  signal \odr_tracker[0]_i_1_n_0\ : STD_LOGIC;
  signal odr_tracker_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal slow_clk : STD_LOGIC;
  signal \slow_clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal slow_clk_counter_reg : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \slow_clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal slow_clk_i_1_n_0 : STD_LOGIC;
begin
dclk_active: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007E"
    )
        port map (
      I0 => odr_tracker_reg(2),
      I1 => odr_tracker_reg(3),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(5),
      O => dclk_active_n_0
    );
dclk_active_reg: unisim.vcomponents.FDCE
     port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => dclk_active_n_0,
      Q => \dclk_active__0\
    );
dclk_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dclk_active__0\,
      I1 => slow_clk,
      O => dclk_out
    );
odr_int: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000111"
    )
        port map (
      I0 => odr_tracker_reg(4),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(0),
      I3 => odr_tracker_reg(1),
      I4 => odr_tracker_reg(2),
      I5 => odr_tracker_reg(3),
      O => odr_int_n_0
    );
odr_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => odr_int_i_1_n_0
    );
odr_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => odr_int_n_0,
      Q => odr_out
    );
\odr_tracker[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => odr_tracker_reg(5),
      I1 => odr_tracker_reg(4),
      I2 => odr_tracker_reg(2),
      I3 => odr_tracker_reg(1),
      I4 => odr_tracker_reg(3),
      I5 => odr_tracker_reg(0),
      O => \odr_tracker[0]_i_1_n_0\
    );
\odr_tracker[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111222211152A2A"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(2),
      I4 => odr_tracker_reg(1),
      I5 => odr_tracker_reg(3),
      O => \p_0_in__0\(1)
    );
\odr_tracker[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11223300112A3F00"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(2),
      I4 => odr_tracker_reg(1),
      I5 => odr_tracker_reg(3),
      O => \p_0_in__0\(2)
    );
\odr_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13332000"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(2),
      I3 => odr_tracker_reg(1),
      I4 => odr_tracker_reg(3),
      O => \p_0_in__0\(3)
    );
\odr_tracker[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1230303030303030"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(2),
      I4 => odr_tracker_reg(1),
      I5 => odr_tracker_reg(3),
      O => \p_0_in__0\(4)
    );
\odr_tracker[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000000C0C0C"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(2),
      I4 => odr_tracker_reg(1),
      I5 => odr_tracker_reg(3),
      O => \p_0_in__0\(5)
    );
\odr_tracker_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \odr_tracker[0]_i_1_n_0\,
      Q => odr_tracker_reg(0)
    );
\odr_tracker_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \p_0_in__0\(1),
      Q => odr_tracker_reg(1)
    );
\odr_tracker_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \p_0_in__0\(2),
      Q => odr_tracker_reg(2)
    );
\odr_tracker_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \p_0_in__0\(3),
      Q => odr_tracker_reg(3)
    );
\odr_tracker_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \p_0_in__0\(4),
      Q => odr_tracker_reg(4)
    );
\odr_tracker_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \p_0_in__0\(5),
      Q => odr_tracker_reg(5)
    );
\slow_clk_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777777F"
    )
        port map (
      I0 => slow_clk_counter_reg(5),
      I1 => slow_clk_counter_reg(4),
      I2 => slow_clk_counter_reg(3),
      I3 => slow_clk_counter_reg(1),
      I4 => slow_clk_counter_reg(2),
      I5 => \slow_clk_counter_reg_n_0_[0]\,
      O => \slow_clk_counter[0]_i_1_n_0\
    );
\slow_clk_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15152A2A15152AAA"
    )
        port map (
      I0 => \slow_clk_counter_reg_n_0_[0]\,
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(4),
      I3 => slow_clk_counter_reg(3),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(2),
      O => p_0_in(1)
    );
\slow_clk_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"153F2A00"
    )
        port map (
      I0 => \slow_clk_counter_reg_n_0_[0]\,
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(4),
      I3 => slow_clk_counter_reg(1),
      I4 => slow_clk_counter_reg(2),
      O => p_0_in(2)
    );
\slow_clk_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"152A3F003F003F00"
    )
        port map (
      I0 => \slow_clk_counter_reg_n_0_[0]\,
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(4),
      I3 => slow_clk_counter_reg(3),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(2),
      O => p_0_in(3)
    );
\slow_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A303030303030F0"
    )
        port map (
      I0 => \slow_clk_counter_reg_n_0_[0]\,
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(4),
      I3 => slow_clk_counter_reg(3),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(2),
      O => p_0_in(4)
    );
\slow_clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C0C0C0C0C0C0CCC"
    )
        port map (
      I0 => \slow_clk_counter_reg_n_0_[0]\,
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(4),
      I3 => slow_clk_counter_reg(3),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(2),
      O => p_0_in(5)
    );
\slow_clk_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => \slow_clk_counter[0]_i_1_n_0\,
      Q => \slow_clk_counter_reg_n_0_[0]\
    );
\slow_clk_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => p_0_in(1),
      Q => slow_clk_counter_reg(1)
    );
\slow_clk_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => p_0_in(2),
      Q => slow_clk_counter_reg(2)
    );
\slow_clk_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => p_0_in(3),
      Q => slow_clk_counter_reg(3)
    );
\slow_clk_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => p_0_in(4),
      Q => slow_clk_counter_reg(4)
    );
\slow_clk_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => p_0_in(5),
      Q => slow_clk_counter_reg(5)
    );
slow_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777F88888880"
    )
        port map (
      I0 => slow_clk_counter_reg(5),
      I1 => slow_clk_counter_reg(4),
      I2 => slow_clk_counter_reg(3),
      I3 => slow_clk_counter_reg(1),
      I4 => slow_clk_counter_reg(2),
      I5 => slow_clk,
      O => slow_clk_i_1_n_0
    );
slow_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_1_n_0,
      D => slow_clk_i_1_n_0,
      Q => slow_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_data_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in0 : in STD_LOGIC;
    data_in1 : in STD_LOGIC;
    data_in2 : in STD_LOGIC;
    data_in3 : in STD_LOGIC;
    dclk_out : out STD_LOGIC;
    odr_out : out STD_LOGIC;
    data_out0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_ad4134_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_data_0_0 : entity is "ad4134fw_ad4134_data_0_0,ad4134_data,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_data_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_ad4134_data_0_0 : entity is "ad4134_data,Vivado 2024.2";
end ad4134fw_ad4134_data_0_0;

architecture STRUCTURE of ad4134fw_ad4134_data_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_mode of rst_n : signal is "slave rst_n";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  data_out0(23) <= \<const0>\;
  data_out0(22) <= \<const0>\;
  data_out0(21) <= \<const0>\;
  data_out0(20) <= \<const0>\;
  data_out0(19) <= \<const0>\;
  data_out0(18) <= \<const0>\;
  data_out0(17) <= \<const0>\;
  data_out0(16) <= \<const0>\;
  data_out0(15) <= \<const0>\;
  data_out0(14) <= \<const0>\;
  data_out0(13) <= \<const0>\;
  data_out0(12) <= \<const0>\;
  data_out0(11) <= \<const0>\;
  data_out0(10) <= \<const0>\;
  data_out0(9) <= \<const0>\;
  data_out0(8) <= \<const0>\;
  data_out0(7) <= \<const0>\;
  data_out0(6) <= \<const0>\;
  data_out0(5) <= \<const0>\;
  data_out0(4) <= \<const0>\;
  data_out0(3) <= \<const0>\;
  data_out0(2) <= \<const0>\;
  data_out0(1) <= \<const0>\;
  data_out0(0) <= \<const0>\;
  data_out1(23) <= \<const0>\;
  data_out1(22) <= \<const0>\;
  data_out1(21) <= \<const0>\;
  data_out1(20) <= \<const0>\;
  data_out1(19) <= \<const0>\;
  data_out1(18) <= \<const0>\;
  data_out1(17) <= \<const0>\;
  data_out1(16) <= \<const0>\;
  data_out1(15) <= \<const0>\;
  data_out1(14) <= \<const0>\;
  data_out1(13) <= \<const0>\;
  data_out1(12) <= \<const0>\;
  data_out1(11) <= \<const0>\;
  data_out1(10) <= \<const0>\;
  data_out1(9) <= \<const0>\;
  data_out1(8) <= \<const0>\;
  data_out1(7) <= \<const0>\;
  data_out1(6) <= \<const0>\;
  data_out1(5) <= \<const0>\;
  data_out1(4) <= \<const0>\;
  data_out1(3) <= \<const0>\;
  data_out1(2) <= \<const0>\;
  data_out1(1) <= \<const0>\;
  data_out1(0) <= \<const0>\;
  data_out2(23) <= \<const0>\;
  data_out2(22) <= \<const0>\;
  data_out2(21) <= \<const0>\;
  data_out2(20) <= \<const0>\;
  data_out2(19) <= \<const0>\;
  data_out2(18) <= \<const0>\;
  data_out2(17) <= \<const0>\;
  data_out2(16) <= \<const0>\;
  data_out2(15) <= \<const0>\;
  data_out2(14) <= \<const0>\;
  data_out2(13) <= \<const0>\;
  data_out2(12) <= \<const0>\;
  data_out2(11) <= \<const0>\;
  data_out2(10) <= \<const0>\;
  data_out2(9) <= \<const0>\;
  data_out2(8) <= \<const0>\;
  data_out2(7) <= \<const0>\;
  data_out2(6) <= \<const0>\;
  data_out2(5) <= \<const0>\;
  data_out2(4) <= \<const0>\;
  data_out2(3) <= \<const0>\;
  data_out2(2) <= \<const0>\;
  data_out2(1) <= \<const0>\;
  data_out2(0) <= \<const0>\;
  data_out3(23) <= \<const0>\;
  data_out3(22) <= \<const0>\;
  data_out3(21) <= \<const0>\;
  data_out3(20) <= \<const0>\;
  data_out3(19) <= \<const0>\;
  data_out3(18) <= \<const0>\;
  data_out3(17) <= \<const0>\;
  data_out3(16) <= \<const0>\;
  data_out3(15) <= \<const0>\;
  data_out3(14) <= \<const0>\;
  data_out3(13) <= \<const0>\;
  data_out3(12) <= \<const0>\;
  data_out3(11) <= \<const0>\;
  data_out3(10) <= \<const0>\;
  data_out3(9) <= \<const0>\;
  data_out3(8) <= \<const0>\;
  data_out3(7) <= \<const0>\;
  data_out3(6) <= \<const0>\;
  data_out3(5) <= \<const0>\;
  data_out3(4) <= \<const0>\;
  data_out3(3) <= \<const0>\;
  data_out3(2) <= \<const0>\;
  data_out3(1) <= \<const0>\;
  data_out3(0) <= \<const0>\;
  data_rdy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ad4134fw_ad4134_data_0_0_ad4134_data
     port map (
      clk => clk,
      dclk_out => dclk_out,
      odr_out => odr_out,
      rst_n => rst_n
    );
end STRUCTURE;
