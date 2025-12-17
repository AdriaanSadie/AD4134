-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 16 21:37:04 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_control_0_0/ad4134fw_ad4134_control_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_ad4134_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_control_0_0_ad4134_control is
  port (
    datain : out STD_LOGIC_VECTOR ( 7 downto 0 );
    spiaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    write : out STD_LOGIC;
    spi_clk_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    spidone : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_ad4134_control_0_0_ad4134_control : entity is "ad4134_control";
end ad4134fw_ad4134_control_0_0_ad4134_control;

architecture STRUCTURE of ad4134fw_ad4134_control_0_0_ad4134_control is
  signal \FSM_onehot_setup_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state[12]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_setup_state_reg_n_0_[9]\ : STD_LOGIC;
  signal ODR_COUNT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ODR_COUNT[2]_i_1_n_0\ : STD_LOGIC;
  signal \ODR_COUNT_reg_n_0_[0]\ : STD_LOGIC;
  signal \ODR_COUNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \ODR_COUNT_reg_n_0_[2]\ : STD_LOGIC;
  signal \datain_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \datain_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \datain_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \debug[0]_i_1_n_0\ : STD_LOGIC;
  signal \debug[1]_i_1_n_0\ : STD_LOGIC;
  signal \debug[2]_i_1_n_0\ : STD_LOGIC;
  signal \debug[3]_i_1_n_0\ : STD_LOGIC;
  signal \debug[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal reset_count : STD_LOGIC;
  signal \reset_count0_carry__0_n_5\ : STD_LOGIC;
  signal \reset_count0_carry__0_n_6\ : STD_LOGIC;
  signal \reset_count0_carry__0_n_7\ : STD_LOGIC;
  signal reset_count0_carry_n_0 : STD_LOGIC;
  signal reset_count0_carry_n_1 : STD_LOGIC;
  signal reset_count0_carry_n_2 : STD_LOGIC;
  signal reset_count0_carry_n_3 : STD_LOGIC;
  signal reset_count0_carry_n_4 : STD_LOGIC;
  signal reset_count0_carry_n_5 : STD_LOGIC;
  signal reset_count0_carry_n_6 : STD_LOGIC;
  signal reset_count0_carry_n_7 : STD_LOGIC;
  signal reset_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal setup_done : STD_LOGIC;
  signal setup_done_i_1_n_0 : STD_LOGIC;
  signal \^spi_clk_en\ : STD_LOGIC;
  signal spi_clk_en_i_i_1_n_0 : STD_LOGIC;
  signal \spiaddr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \spiaddr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \spiaddr_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \spiaddr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \spiaddr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \spiaddr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \spiaddr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal spidone_post : STD_LOGIC;
  signal spidone_pre : STD_LOGIC;
  signal \^write\ : STD_LOGIC;
  signal write_i_i_1_n_0 : STD_LOGIC;
  signal write_i_i_2_n_0 : STD_LOGIC;
  signal write_i_i_3_n_0 : STD_LOGIC;
  signal write_i_i_4_n_0 : STD_LOGIC;
  signal \NLW_reset_count0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_reset_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_setup_state[12]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_setup_state[12]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_setup_state[12]_i_6\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[0]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[10]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[11]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[12]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[1]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[2]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[3]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[4]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[5]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[6]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[7]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[8]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_setup_state_reg[9]\ : label is "odrconfig:0000010000000,odrchannel:0000100000000,adreset:0000000000001,gpioconfig:0010000000000,transferregister:0100000000000,filterconfig:0001000000000,resetwait:0000000000010,idle:1000000000000,powercontrol:0000001000000,datapacketconfig:0000000010000,digitalinterfaceconfig:0000000100000,deviceconfig_1:0000000001000,deviceconfig_0:0000000000100";
  attribute SOFT_HLUTNM of \ODR_COUNT[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \datain_i[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \datain_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \datain_i[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \datain_i[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \datain_i[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \datain_i[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \datain_i[7]_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of reset_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \reset_count0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \reset_count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spiaddr_i[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spiaddr_i[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spiaddr_i[1]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spiaddr_i[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spiaddr_i[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spiaddr_i[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spiaddr_i[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of write_i_i_4 : label is "soft_lutpair2";
begin
  spi_clk_en <= \^spi_clk_en\;
  write <= \^write\;
\FSM_onehot_setup_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I1 => setup_done,
      O => \FSM_onehot_setup_state[0]_i_1_n_0\
    );
\FSM_onehot_setup_state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF0CFFFFFFAE"
    )
        port map (
      I0 => write_i_i_3_n_0,
      I1 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state[12]_i_3_n_0\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_setup_state[12]_i_4_n_0\,
      O => \FSM_onehot_setup_state[12]_i_1_n_0\
    );
\FSM_onehot_setup_state[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I1 => setup_done,
      I2 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      O => \FSM_onehot_setup_state[12]_i_2_n_0\
    );
\FSM_onehot_setup_state[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \FSM_onehot_setup_state[12]_i_5_n_0\,
      I1 => reset_count_reg(4),
      I2 => reset_count_reg(3),
      I3 => reset_count_reg(6),
      I4 => reset_count_reg(5),
      I5 => \FSM_onehot_setup_state[12]_i_6_n_0\,
      O => \FSM_onehot_setup_state[12]_i_3_n_0\
    );
\FSM_onehot_setup_state[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => spidone_pre,
      I1 => spidone_post,
      O => \FSM_onehot_setup_state[12]_i_4_n_0\
    );
\FSM_onehot_setup_state[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reset_count_reg(8),
      I1 => reset_count_reg(7),
      I2 => reset_count_reg(10),
      I3 => reset_count_reg(9),
      O => \FSM_onehot_setup_state[12]_i_5_n_0\
    );
\FSM_onehot_setup_state[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset_count_reg(0),
      I1 => reset_count_reg(11),
      I2 => reset_count_reg(12),
      I3 => reset_count_reg(2),
      I4 => reset_count_reg(1),
      O => \FSM_onehot_setup_state[12]_i_6_n_0\
    );
\FSM_onehot_setup_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      D => \FSM_onehot_setup_state[0]_i_1_n_0\,
      PRE => write_i_i_2_n_0,
      Q => \FSM_onehot_setup_state_reg_n_0_[0]\
    );
\FSM_onehot_setup_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[9]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[10]\
    );
\FSM_onehot_setup_state_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[10]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[11]\
    );
\FSM_onehot_setup_state_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state[12]_i_2_n_0\,
      Q => \FSM_onehot_setup_state_reg_n_0_[12]\
    );
\FSM_onehot_setup_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[0]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[1]\
    );
\FSM_onehot_setup_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[1]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[2]\
    );
\FSM_onehot_setup_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[2]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[3]\
    );
\FSM_onehot_setup_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[3]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[4]\
    );
\FSM_onehot_setup_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[4]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[5]\
    );
\FSM_onehot_setup_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[5]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[6]\
    );
\FSM_onehot_setup_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[6]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[7]\
    );
\FSM_onehot_setup_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[7]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[8]\
    );
\FSM_onehot_setup_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_setup_state[12]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[8]\,
      Q => \FSM_onehot_setup_state_reg_n_0_[9]\
    );
\ODR_COUNT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCDCFCDC"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[0]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I3 => spidone_post,
      I4 => spidone_pre,
      O => ODR_COUNT(0)
    );
\ODR_COUNT[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F0F9F0FFF0F9F0"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[0]\,
      I1 => \ODR_COUNT_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I4 => spidone_post,
      I5 => spidone_pre,
      O => ODR_COUNT(1)
    );
\ODR_COUNT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0FFFFF0E0F0F0"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[0]\,
      I1 => \ODR_COUNT_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I3 => \ODR_COUNT_reg_n_0_[2]\,
      I4 => \FSM_onehot_setup_state[12]_i_4_n_0\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      O => \ODR_COUNT[2]_i_1_n_0\
    );
\ODR_COUNT[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FF00FFFFFF00"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[2]\,
      I1 => \ODR_COUNT_reg_n_0_[0]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_setup_state[12]_i_4_n_0\,
      O => ODR_COUNT(2)
    );
\ODR_COUNT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ODR_COUNT[2]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => ODR_COUNT(0),
      Q => \ODR_COUNT_reg_n_0_[0]\
    );
\ODR_COUNT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ODR_COUNT[2]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => ODR_COUNT(1),
      Q => \ODR_COUNT_reg_n_0_[1]\
    );
\ODR_COUNT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ODR_COUNT[2]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => ODR_COUNT(2),
      Q => \ODR_COUNT_reg_n_0_[2]\
    );
\datain_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      O => \datain_i[0]_i_1_n_0\
    );
\datain_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[2]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I2 => \ODR_COUNT_reg_n_0_[0]\,
      I3 => \ODR_COUNT_reg_n_0_[1]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      O => \datain_i[1]_i_1_n_0\
    );
\datain_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[1]\,
      I1 => \ODR_COUNT_reg_n_0_[2]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      O => \datain_i[2]_i_1_n_0\
    );
\datain_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      I3 => \ODR_COUNT_reg_n_0_[0]\,
      I4 => \datain_i[3]_i_2_n_0\,
      O => \datain_i[3]_i_1_n_0\
    );
\datain_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I1 => \ODR_COUNT_reg_n_0_[2]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      O => \datain_i[3]_i_2_n_0\
    );
\datain_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[1]\,
      I1 => \ODR_COUNT_reg_n_0_[2]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[0]\,
      O => \datain_i[4]_i_1_n_0\
    );
\datain_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I1 => \ODR_COUNT_reg_n_0_[2]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      O => \datain_i[5]_i_1_n_0\
    );
\datain_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCC8"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[2]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      I3 => \ODR_COUNT_reg_n_0_[0]\,
      I4 => write_i_i_3_n_0,
      O => \datain_i[7]_i_1_n_0\
    );
\datain_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      O => \datain_i[7]_i_2_n_0\
    );
\datain_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[0]_i_1_n_0\,
      Q => datain(0)
    );
\datain_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[1]_i_1_n_0\,
      Q => datain(1)
    );
\datain_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[2]_i_1_n_0\,
      Q => datain(2)
    );
\datain_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[3]_i_1_n_0\,
      Q => datain(3)
    );
\datain_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[4]_i_1_n_0\,
      Q => datain(4)
    );
\datain_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[5]_i_1_n_0\,
      Q => datain(5)
    );
\datain_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \FSM_onehot_setup_state_reg_n_0_[2]\,
      Q => datain(6)
    );
\datain_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \datain_i[7]_i_2_n_0\,
      Q => datain(7)
    );
\debug[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \spiaddr_i[6]_i_1_n_0\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      O => \debug[0]_i_1_n_0\
    );
\debug[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      O => \debug[1]_i_1_n_0\
    );
\debug[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      O => \debug[2]_i_1_n_0\
    );
\debug[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I3 => write_i_i_3_n_0,
      O => \debug[3]_i_1_n_0\
    );
\debug[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[10]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      O => \debug[3]_i_2_n_0\
    );
\debug_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \debug[3]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \debug[0]_i_1_n_0\,
      Q => debug(0)
    );
\debug_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \debug[3]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \debug[1]_i_1_n_0\,
      Q => debug(1)
    );
\debug_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \debug[3]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \debug[2]_i_1_n_0\,
      Q => debug(2)
    );
\debug_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \debug[3]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \debug[3]_i_2_n_0\,
      Q => debug(3)
    );
reset_count0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => reset_count_reg(0),
      CI_TOP => '0',
      CO(7) => reset_count0_carry_n_0,
      CO(6) => reset_count0_carry_n_1,
      CO(5) => reset_count0_carry_n_2,
      CO(4) => reset_count0_carry_n_3,
      CO(3) => reset_count0_carry_n_4,
      CO(2) => reset_count0_carry_n_5,
      CO(1) => reset_count0_carry_n_6,
      CO(0) => reset_count0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_0_in(8 downto 1),
      S(7 downto 0) => reset_count_reg(8 downto 1)
    );
\reset_count0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => reset_count0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_reset_count0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \reset_count0_carry__0_n_5\,
      CO(1) => \reset_count0_carry__0_n_6\,
      CO(0) => \reset_count0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_reset_count0_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => p_0_in(12 downto 9),
      S(7 downto 4) => B"0000",
      S(3 downto 0) => reset_count_reg(12 downto 9)
    );
\reset_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_count_reg(0),
      O => p_0_in(0)
    );
\reset_count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_setup_state[12]_i_3_n_0\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      O => reset_count
    );
\reset_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(0),
      Q => reset_count_reg(0)
    );
\reset_count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(10),
      Q => reset_count_reg(10)
    );
\reset_count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(11),
      Q => reset_count_reg(11)
    );
\reset_count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(12),
      Q => reset_count_reg(12)
    );
\reset_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(1),
      Q => reset_count_reg(1)
    );
\reset_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(2),
      Q => reset_count_reg(2)
    );
\reset_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(3),
      Q => reset_count_reg(3)
    );
\reset_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(4),
      Q => reset_count_reg(4)
    );
\reset_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(5),
      Q => reset_count_reg(5)
    );
\reset_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(6),
      Q => reset_count_reg(6)
    );
\reset_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(7),
      Q => reset_count_reg(7)
    );
\reset_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(8),
      Q => reset_count_reg(8)
    );
\reset_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => reset_count,
      CLR => write_i_i_2_n_0,
      D => p_0_in(9),
      Q => reset_count_reg(9)
    );
setup_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00E0"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[10]\,
      I2 => spidone_post,
      I3 => spidone_pre,
      I4 => setup_done,
      O => setup_done_i_1_n_0
    );
setup_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => write_i_i_2_n_0,
      D => setup_done_i_1_n_0,
      Q => setup_done
    );
spi_clk_en_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF7FFF3000000"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I1 => spidone_post,
      I2 => spidone_pre,
      I3 => rstn,
      I4 => write_i_i_3_n_0,
      I5 => \^spi_clk_en\,
      O => spi_clk_en_i_i_1_n_0
    );
spi_clk_en_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => spi_clk_en_i_i_1_n_0,
      Q => \^spi_clk_en\,
      R => '0'
    );
\spiaddr_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I5 => \spiaddr_i[0]_i_2_n_0\,
      O => \spiaddr_i[0]_i_1_n_0\
    );
\spiaddr_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3200"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[2]\,
      I1 => \ODR_COUNT_reg_n_0_[0]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      O => \spiaddr_i[0]_i_2_n_0\
    );
\spiaddr_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \spiaddr_i[1]_i_2_n_0\,
      I1 => \spiaddr_i[6]_i_1_n_0\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      I4 => \spiaddr_i[1]_i_3_n_0\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      O => \spiaddr_i[1]_i_1_n_0\
    );
\spiaddr_i[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      O => \spiaddr_i[1]_i_2_n_0\
    );
\spiaddr_i[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ODR_COUNT_reg_n_0_[1]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      O => \spiaddr_i[1]_i_3_n_0\
    );
\spiaddr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF82"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I1 => \ODR_COUNT_reg_n_0_[2]\,
      I2 => \ODR_COUNT_reg_n_0_[1]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I5 => \spiaddr_i[3]_i_2_n_0\,
      O => \spiaddr_i[2]_i_1_n_0\
    );
\spiaddr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFAFFFFFFFA"
    )
        port map (
      I0 => \spiaddr_i[3]_i_2_n_0\,
      I1 => \ODR_COUNT_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I5 => \ODR_COUNT_reg_n_0_[2]\,
      O => \spiaddr_i[3]_i_1_n_0\
    );
\spiaddr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      O => \spiaddr_i[3]_i_2_n_0\
    );
\spiaddr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \spiaddr_i[4]_i_2_n_0\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I3 => \spiaddr_i[6]_i_1_n_0\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      O => \spiaddr_i[4]_i_1_n_0\
    );
\spiaddr_i[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[3]\,
      O => \spiaddr_i[4]_i_2_n_0\
    );
\spiaddr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[10]\,
      O => \spiaddr_i[5]_i_1_n_0\
    );
\spiaddr_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[12]\,
      O => \spiaddr_i[6]_i_1_n_0\
    );
\spiaddr_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[0]_i_1_n_0\,
      Q => spiaddr(0)
    );
\spiaddr_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[1]_i_1_n_0\,
      Q => spiaddr(1)
    );
\spiaddr_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[2]_i_1_n_0\,
      Q => spiaddr(2)
    );
\spiaddr_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[3]_i_1_n_0\,
      Q => spiaddr(3)
    );
\spiaddr_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[4]_i_1_n_0\,
      Q => spiaddr(4)
    );
\spiaddr_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[5]_i_1_n_0\,
      Q => spiaddr(5)
    );
\spiaddr_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \datain_i[7]_i_1_n_0\,
      CLR => write_i_i_2_n_0,
      D => \spiaddr_i[6]_i_1_n_0\,
      Q => spiaddr(6)
    );
spidone_post_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => write_i_i_2_n_0,
      D => spidone_pre,
      Q => spidone_post
    );
spidone_pre_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => write_i_i_2_n_0,
      D => spidone,
      Q => spidone_pre
    );
write_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFBBB0"
    )
        port map (
      I0 => spidone_pre,
      I1 => spidone_post,
      I2 => write_i_i_3_n_0,
      I3 => \FSM_onehot_setup_state_reg_n_0_[7]\,
      I4 => \^write\,
      O => write_i_i_1_n_0
    );
write_i_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => write_i_i_2_n_0
    );
write_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[3]\,
      I5 => write_i_i_4_n_0,
      O => write_i_i_3_n_0
    );
write_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_setup_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_setup_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_setup_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_setup_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_setup_state_reg_n_0_[11]\,
      O => write_i_i_4_n_0
    );
write_i_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => write_i_i_2_n_0,
      D => write_i_i_1_n_0,
      Q => \^write\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_control_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_ad4134_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_control_0_0 : entity is "ad4134fw_ad4134_control_0_0,ad4134_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_ad4134_control_0_0 : entity is "ad4134_control,Vivado 2024.2";
end ad4134fw_ad4134_control_0_0;

architecture STRUCTURE of ad4134fw_ad4134_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spiaddr\ : STD_LOGIC_VECTOR ( 6 downto 0 );
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
  read <= \<const0>\;
  spiaddr(7) <= \<const0>\;
  spiaddr(6 downto 0) <= \^spiaddr\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ad4134fw_ad4134_control_0_0_ad4134_control
     port map (
      clk => clk,
      datain(7 downto 0) => datain(7 downto 0),
      debug(3 downto 0) => debug(3 downto 0),
      rstn => rstn,
      spi_clk_en => spi_clk_en,
      spiaddr(6 downto 0) => \^spiaddr\(6 downto 0),
      spidone => spidone,
      write => write
    );
end STRUCTURE;
