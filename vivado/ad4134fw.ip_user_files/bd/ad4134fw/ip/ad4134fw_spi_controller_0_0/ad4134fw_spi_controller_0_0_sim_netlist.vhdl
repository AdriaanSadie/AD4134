-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 16 21:40:49 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_spi_controller_0_0/ad4134fw_spi_controller_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_spi_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_spi_controller_0_0_spi_controller is
  port (
    spidone_i_reg_0 : out STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi : out STD_LOGIC;
    cs_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    miso : in STD_LOGIC;
    rstn : in STD_LOGIC;
    read : in STD_LOGIC;
    write : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spiaddr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_spi_controller_0_0_spi_controller : entity is "spi_controller";
end ad4134fw_spi_controller_0_0_spi_controller;

architecture STRUCTURE of ad4134fw_spi_controller_0_0_spi_controller is
  signal \FSM_sequential_spi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spi_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \^cs_n\ : STD_LOGIC;
  signal cs_n_i_i_1_n_0 : STD_LOGIC;
  signal cs_n_i_i_2_n_0 : STD_LOGIC;
  signal \^dataout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dataout_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \dataout_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \dataout_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \dataout_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \dataout_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \dataout_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataout_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal mosi0 : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_5_n_0 : STD_LOGIC;
  signal mosi_i_6_n_0 : STD_LOGIC;
  signal mosi_i_7_n_0 : STD_LOGIC;
  signal mosi_i_8_n_0 : STD_LOGIC;
  signal mosi_reg_i_2_n_0 : STD_LOGIC;
  signal mosi_reg_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \spi_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \spi_state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \spibitcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \spibitcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \spibitcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \spibitcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \spibitcount[3]_i_2_n_0\ : STD_LOGIC;
  signal \spibitcount[3]_i_3_n_0\ : STD_LOGIC;
  signal \spibitcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \spibitcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \spibitcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \spibitcount_reg_n_0_[3]\ : STD_LOGIC;
  signal spidone_i_i_1_n_0 : STD_LOGIC;
  signal spidone_i_i_2_n_0 : STD_LOGIC;
  signal \^spidone_i_reg_0\ : STD_LOGIC;
  signal spiendcount : STD_LOGIC;
  signal \spiendcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \spiendcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \spiendcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \spiendcount[3]_i_2_n_0\ : STD_LOGIC;
  signal \spiendcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \spiendcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \spiendcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \spiendcount_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_spi_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_spi_state[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_spi_state[2]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_spi_state_reg[0]\ : label is "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_spi_state_reg[1]\ : label is "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_spi_state_reg[2]\ : label is "spi_cs:100,spi_end:101,init:000,spi_addr:001,spi_read:011,spi_write:010";
  attribute SOFT_HLUTNM of \dataout_i[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dataout_i[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataout_i[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dataout_i[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dataout_i[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dataout_i[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dataout_i[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of mosi_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spibitcount[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spibitcount[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spibitcount[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of spidone_i_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of spidone_i_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spiendcount[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spiendcount[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spiendcount[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spiendcount[3]_i_2\ : label is "soft_lutpair1";
begin
  cs_n <= \^cs_n\;
  dataout(7 downto 0) <= \^dataout\(7 downto 0);
  mosi <= \^mosi\;
  spidone_i_reg_0 <= \^spidone_i_reg_0\;
\FSM_sequential_spi_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F300000FF2"
    )
        port map (
      I0 => read,
      I1 => \^spidone_i_reg_0\,
      I2 => \spi_state__0\(2),
      I3 => \spi_state__0\(0),
      I4 => \spi_state__0\(1),
      I5 => write,
      O => \spi_state__1\(0)
    );
\FSM_sequential_spi_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \spi_state__0\(1),
      I1 => \spi_state__0\(0),
      I2 => \spi_state__0\(2),
      O => \spi_state__1\(1)
    );
\FSM_sequential_spi_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00DF000000DD00"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \FSM_sequential_spi_state[2]_i_3_n_0\,
      I2 => cs_n_i_i_2_n_0,
      I3 => rstn,
      I4 => \spi_state__0\(1),
      I5 => \FSM_sequential_spi_state[2]_i_4_n_0\,
      O => \FSM_sequential_spi_state[2]_i_1_n_0\
    );
\FSM_sequential_spi_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spi_state__0\(2),
      I2 => \spi_state__0\(1),
      O => \spi_state__1\(2)
    );
\FSM_sequential_spi_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \spi_state__0\(2),
      I1 => \spiendcount_reg_n_0_[2]\,
      I2 => \spiendcount_reg_n_0_[0]\,
      I3 => \spiendcount_reg_n_0_[1]\,
      I4 => \spiendcount_reg_n_0_[3]\,
      O => \FSM_sequential_spi_state[2]_i_3_n_0\
    );
\FSM_sequential_spi_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \spi_state__0\(2),
      I1 => \spibitcount_reg_n_0_[2]\,
      I2 => \spibitcount_reg_n_0_[3]\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spibitcount_reg_n_0_[1]\,
      O => \FSM_sequential_spi_state[2]_i_4_n_0\
    );
\FSM_sequential_spi_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_spi_state[2]_i_1_n_0\,
      D => \spi_state__1\(0),
      Q => \spi_state__0\(0),
      R => '0'
    );
\FSM_sequential_spi_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_spi_state[2]_i_1_n_0\,
      D => \spi_state__1\(1),
      Q => \spi_state__0\(1),
      R => '0'
    );
\FSM_sequential_spi_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_spi_state[2]_i_1_n_0\,
      D => \spi_state__1\(2),
      Q => \spi_state__0\(2),
      R => '0'
    );
cs_n_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE11110000"
    )
        port map (
      I0 => \spi_state__0\(1),
      I1 => \spi_state__0\(0),
      I2 => \^spidone_i_reg_0\,
      I3 => cs_n_i_i_2_n_0,
      I4 => \spi_state__0\(2),
      I5 => \^cs_n\,
      O => cs_n_i_i_1_n_0
    );
cs_n_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read,
      I1 => write,
      O => cs_n_i_i_2_n_0
    );
cs_n_i_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => cs_n_i_i_1_n_0,
      PRE => p_0_in,
      Q => \^cs_n\
    );
\dataout_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => miso,
      I1 => \dataout_i[3]_i_2_n_0\,
      I2 => \dataout_i[3]_i_3_n_0\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spibitcount_reg_n_0_[1]\,
      I5 => \^dataout\(0),
      O => \dataout_i[0]_i_1_n_0\
    );
\dataout_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => miso,
      I1 => \dataout_i[3]_i_2_n_0\,
      I2 => \dataout_i[3]_i_3_n_0\,
      I3 => \spibitcount_reg_n_0_[1]\,
      I4 => \spibitcount_reg_n_0_[0]\,
      I5 => \^dataout\(1),
      O => \dataout_i[1]_i_1_n_0\
    );
\dataout_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => miso,
      I1 => \dataout_i[3]_i_2_n_0\,
      I2 => \dataout_i[3]_i_3_n_0\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spibitcount_reg_n_0_[1]\,
      I5 => \^dataout\(2),
      O => \dataout_i[2]_i_1_n_0\
    );
\dataout_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => miso,
      I1 => \dataout_i[3]_i_2_n_0\,
      I2 => \dataout_i[3]_i_3_n_0\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spibitcount_reg_n_0_[1]\,
      I5 => \^dataout\(3),
      O => \dataout_i[3]_i_1_n_0\
    );
\dataout_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[2]\,
      I1 => \spibitcount_reg_n_0_[3]\,
      O => \dataout_i[3]_i_2_n_0\
    );
\dataout_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \spi_state__0\(2),
      I1 => \spi_state__0\(1),
      I2 => \spi_state__0\(0),
      O => \dataout_i[3]_i_3_n_0\
    );
\dataout_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => miso,
      I1 => \spibitcount_reg_n_0_[3]\,
      I2 => \spibitcount_reg_n_0_[2]\,
      I3 => \dataout_i[4]_i_2_n_0\,
      I4 => \^dataout\(4),
      O => \dataout_i[4]_i_1_n_0\
    );
\dataout_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[1]\,
      I1 => \spibitcount_reg_n_0_[0]\,
      I2 => \spi_state__0\(0),
      I3 => \spi_state__0\(1),
      I4 => \spi_state__0\(2),
      O => \dataout_i[4]_i_2_n_0\
    );
\dataout_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => miso,
      I1 => \spibitcount_reg_n_0_[3]\,
      I2 => \spibitcount_reg_n_0_[2]\,
      I3 => \dataout_i[5]_i_2_n_0\,
      I4 => \^dataout\(5),
      O => \dataout_i[5]_i_1_n_0\
    );
\dataout_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[0]\,
      I1 => \spibitcount_reg_n_0_[1]\,
      I2 => \spi_state__0\(0),
      I3 => \spi_state__0\(1),
      I4 => \spi_state__0\(2),
      O => \dataout_i[5]_i_2_n_0\
    );
\dataout_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => miso,
      I1 => \spibitcount_reg_n_0_[3]\,
      I2 => \spibitcount_reg_n_0_[2]\,
      I3 => \dataout_i[6]_i_2_n_0\,
      I4 => \^dataout\(6),
      O => \dataout_i[6]_i_1_n_0\
    );
\dataout_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[1]\,
      I1 => \spibitcount_reg_n_0_[0]\,
      I2 => \spi_state__0\(0),
      I3 => \spi_state__0\(1),
      I4 => \spi_state__0\(2),
      O => \dataout_i[6]_i_2_n_0\
    );
\dataout_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => miso,
      I1 => \spibitcount_reg_n_0_[3]\,
      I2 => \spibitcount_reg_n_0_[2]\,
      I3 => \dataout_i[7]_i_3_n_0\,
      I4 => \^dataout\(7),
      O => \dataout_i[7]_i_1_n_0\
    );
\dataout_i[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => p_0_in
    );
\dataout_i[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[1]\,
      I1 => \spibitcount_reg_n_0_[0]\,
      I2 => \spi_state__0\(0),
      I3 => \spi_state__0\(1),
      I4 => \spi_state__0\(2),
      O => \dataout_i[7]_i_3_n_0\
    );
\dataout_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[0]_i_1_n_0\,
      Q => \^dataout\(0)
    );
\dataout_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[1]_i_1_n_0\,
      Q => \^dataout\(1)
    );
\dataout_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[2]_i_1_n_0\,
      Q => \^dataout\(2)
    );
\dataout_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[3]_i_1_n_0\,
      Q => \^dataout\(3)
    );
\dataout_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[4]_i_1_n_0\,
      Q => \^dataout\(4)
    );
\dataout_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[5]_i_1_n_0\,
      Q => \^dataout\(5)
    );
\dataout_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[6]_i_1_n_0\,
      Q => \^dataout\(6)
    );
\dataout_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => \dataout_i[7]_i_1_n_0\,
      Q => \^dataout\(7)
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => mosi_reg_i_2_n_0,
      I1 => \spi_state__0\(1),
      I2 => mosi_reg_i_3_n_0,
      I3 => \spi_state__0\(2),
      I4 => mosi0,
      I5 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => rstn,
      I1 => \spi_state__0\(0),
      I2 => \spi_state__0\(1),
      I3 => \spi_state__0\(2),
      O => mosi0
    );
mosi_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spiaddr(3),
      I1 => spiaddr(2),
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => spiaddr(1),
      I4 => \spibitcount_reg_n_0_[0]\,
      I5 => spiaddr(0),
      O => mosi_i_5_n_0
    );
mosi_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => spiaddr(7),
      I1 => spiaddr(6),
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => spiaddr(5),
      I4 => \spibitcount_reg_n_0_[0]\,
      I5 => spiaddr(4),
      O => mosi_i_6_n_0
    );
mosi_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(3),
      I1 => datain(2),
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => datain(1),
      I4 => \spibitcount_reg_n_0_[0]\,
      I5 => datain(0),
      O => mosi_i_7_n_0
    );
mosi_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(7),
      I1 => datain(6),
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => datain(5),
      I4 => \spibitcount_reg_n_0_[0]\,
      I5 => datain(4),
      O => mosi_i_8_n_0
    );
mosi_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mosi_i_1_n_0,
      Q => \^mosi\,
      R => '0'
    );
mosi_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_5_n_0,
      I1 => mosi_i_6_n_0,
      O => mosi_reg_i_2_n_0,
      S => \spibitcount_reg_n_0_[2]\
    );
mosi_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_7_n_0,
      I1 => mosi_i_8_n_0,
      O => mosi_reg_i_3_n_0,
      S => \spibitcount_reg_n_0_[2]\
    );
\spibitcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spibitcount_reg_n_0_[0]\,
      I2 => \spi_state__0\(1),
      O => \spibitcount[0]_i_1_n_0\
    );
\spibitcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F11F"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spi_state__0\(1),
      I2 => \spibitcount_reg_n_0_[0]\,
      I3 => \spibitcount_reg_n_0_[1]\,
      O => \spibitcount[1]_i_1_n_0\
    );
\spibitcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC3DDD7"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spibitcount_reg_n_0_[2]\,
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spi_state__0\(1),
      O => \spibitcount[2]_i_1_n_0\
    );
\spibitcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555454544454445"
    )
        port map (
      I0 => \spi_state__0\(2),
      I1 => \spi_state__0\(1),
      I2 => cs_n_i_i_2_n_0,
      I3 => \^spidone_i_reg_0\,
      I4 => \spibitcount[3]_i_3_n_0\,
      I5 => \spi_state__0\(0),
      O => \spibitcount[3]_i_1_n_0\
    );
\spibitcount[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000EEE00000"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spi_state__0\(1),
      I2 => \spibitcount_reg_n_0_[1]\,
      I3 => \spibitcount_reg_n_0_[0]\,
      I4 => \spibitcount_reg_n_0_[3]\,
      I5 => \spibitcount_reg_n_0_[2]\,
      O => \spibitcount[3]_i_2_n_0\
    );
\spibitcount[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spibitcount_reg_n_0_[1]\,
      I1 => \spibitcount_reg_n_0_[0]\,
      I2 => \spibitcount_reg_n_0_[3]\,
      I3 => \spibitcount_reg_n_0_[2]\,
      O => \spibitcount[3]_i_3_n_0\
    );
\spibitcount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \spibitcount[3]_i_1_n_0\,
      CLR => p_0_in,
      D => \spibitcount[0]_i_1_n_0\,
      Q => \spibitcount_reg_n_0_[0]\
    );
\spibitcount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \spibitcount[3]_i_1_n_0\,
      CLR => p_0_in,
      D => \spibitcount[1]_i_1_n_0\,
      Q => \spibitcount_reg_n_0_[1]\
    );
\spibitcount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \spibitcount[3]_i_1_n_0\,
      CLR => p_0_in,
      D => \spibitcount[2]_i_1_n_0\,
      Q => \spibitcount_reg_n_0_[2]\
    );
\spibitcount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \spibitcount[3]_i_1_n_0\,
      CLR => p_0_in,
      D => \spibitcount[3]_i_2_n_0\,
      Q => \spibitcount_reg_n_0_[3]\
    );
spidone_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spidone_i_i_2_n_0,
      I1 => \spi_state__0\(2),
      I2 => \spi_state__0\(0),
      I3 => \spi_state__0\(1),
      I4 => \^spidone_i_reg_0\,
      O => spidone_i_i_1_n_0
    );
spidone_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spiendcount_reg_n_0_[3]\,
      I1 => \spiendcount_reg_n_0_[1]\,
      I2 => \spiendcount_reg_n_0_[0]\,
      I3 => \spiendcount_reg_n_0_[2]\,
      O => spidone_i_i_2_n_0
    );
spidone_i_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => spidone_i_i_1_n_0,
      Q => \^spidone_i_reg_0\
    );
\spiendcount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spiendcount_reg_n_0_[0]\,
      O => \spiendcount[0]_i_1_n_0\
    );
\spiendcount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spiendcount_reg_n_0_[1]\,
      I2 => \spiendcount_reg_n_0_[0]\,
      O => \spiendcount[1]_i_1_n_0\
    );
\spiendcount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spiendcount_reg_n_0_[1]\,
      I2 => \spiendcount_reg_n_0_[0]\,
      I3 => \spiendcount_reg_n_0_[2]\,
      O => \spiendcount[2]_i_1_n_0\
    );
\spiendcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \spi_state__0\(1),
      I1 => \spi_state__0\(2),
      I2 => spidone_i_i_2_n_0,
      I3 => \spi_state__0\(0),
      O => spiendcount
    );
\spiendcount[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80002"
    )
        port map (
      I0 => \spi_state__0\(0),
      I1 => \spiendcount_reg_n_0_[2]\,
      I2 => \spiendcount_reg_n_0_[0]\,
      I3 => \spiendcount_reg_n_0_[1]\,
      I4 => \spiendcount_reg_n_0_[3]\,
      O => \spiendcount[3]_i_2_n_0\
    );
\spiendcount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spiendcount,
      CLR => p_0_in,
      D => \spiendcount[0]_i_1_n_0\,
      Q => \spiendcount_reg_n_0_[0]\
    );
\spiendcount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spiendcount,
      CLR => p_0_in,
      D => \spiendcount[1]_i_1_n_0\,
      Q => \spiendcount_reg_n_0_[1]\
    );
\spiendcount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spiendcount,
      CLR => p_0_in,
      D => \spiendcount[2]_i_1_n_0\,
      Q => \spiendcount_reg_n_0_[2]\
    );
\spiendcount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spiendcount,
      CLR => p_0_in,
      D => \spiendcount[3]_i_2_n_0\,
      Q => \spiendcount_reg_n_0_[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_spi_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    write : in STD_LOGIC;
    read : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    spiaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spidone : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    cs_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_spi_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_spi_controller_0_0 : entity is "ad4134fw_spi_controller_0_0,spi_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_spi_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_spi_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_spi_controller_0_0 : entity is "spi_controller,Vivado 2024.2";
end ad4134fw_spi_controller_0_0;

architecture STRUCTURE of ad4134fw_spi_controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_mode of rstn : signal is "slave rstn";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.ad4134fw_spi_controller_0_0_spi_controller
     port map (
      clk => clk,
      cs_n => cs_n,
      datain(7 downto 0) => datain(7 downto 0),
      dataout(7 downto 0) => dataout(7 downto 0),
      miso => miso,
      mosi => mosi,
      read => read,
      rstn => rstn,
      spiaddr(7 downto 0) => spiaddr(7 downto 0),
      spidone_i_reg_0 => spidone,
      write => write
    );
end STRUCTURE;
