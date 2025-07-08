-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Dec 18 16:41:22 2023
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/adria/OneDrive/Documents/Adriaan/Werk
--               Goedjies/BTT/fw/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_sim_netlist.vhdl}
-- Design      : system_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_0_0_spi is
  port (
    axi_gpio_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    csn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : in STD_LOGIC;
    rstn : in STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_spi_0_0_spi : entity is "spi";
end system_spi_0_0_spi;

architecture STRUCTURE of system_spi_0_0_spi is
  signal \FSM_onehot_spi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_gpio_in_reg2 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \axi_gpio_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_gpio_out[15]_i_2_n_0\ : STD_LOGIC;
  signal cs_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal csn_r : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csn_w : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \csn_w_reg_n_0_[0]\ : STD_LOGIC;
  signal ctrl_reg0 : STD_LOGIC;
  signal \ctrl_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_3_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal mosi_i_5_n_0 : STD_LOGIC;
  signal mosi_i_6_n_0 : STD_LOGIC;
  signal mosi_i_7_n_0 : STD_LOGIC;
  signal mosi_i_8_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal sdi_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sdi_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sdi_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sdi_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \sdi_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \sdi_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \sdi_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sdi_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sdi_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \sdo_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sdo_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sdo_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_counter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal shift_counter_r_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \shift_counter_w[0]_i_1_n_0\ : STD_LOGIC;
  signal shift_counter_w_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal spi_clk_counter0 : STD_LOGIC;
  signal \spi_clk_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_clk_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \spi_clk_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \spi_clk_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal spi_clk_counter_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \spi_clk_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \spi_clk_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \spi_clk_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \spi_clk_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \spi_clk_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal spi_clock : STD_LOGIC;
  signal spi_clock_flag_r : STD_LOGIC;
  signal spi_clock_flag_w : STD_LOGIC;
  signal spi_clock_i_1_n_0 : STD_LOGIC;
  signal spi_read_flag : STD_LOGIC;
  signal spi_read_flag_i_1_n_0 : STD_LOGIC;
  signal spi_read_flag_i_3_n_0 : STD_LOGIC;
  signal spi_read_flag_reg_n_0 : STD_LOGIC;
  signal spi_read_tracker : STD_LOGIC;
  signal spi_read_tracker_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal spi_write_flag : STD_LOGIC;
  signal spi_write_flag_i_1_n_0 : STD_LOGIC;
  signal spi_write_flag_reg_n_0 : STD_LOGIC;
  signal spi_write_tracker : STD_LOGIC;
  signal \spi_write_tracker[0]_i_1_n_0\ : STD_LOGIC;
  signal spi_write_tracker_reg : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \spi_write_tracker_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_write_tracker_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_write_tracker_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_write_tracker_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_spi_clk_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_spi_clk_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spi_state[2]_i_3\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_state_reg[0]\ : label is "spi_idle:001,spi_read:100,spi_write:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_state_reg[1]\ : label is "spi_idle:001,spi_read:100,spi_write:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_state_reg[2]\ : label is "spi_idle:001,spi_read:100,spi_write:010";
  attribute SOFT_HLUTNM of \csn_w[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \csn_w[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \csn_w[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \csn_w[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ctrl_reg[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctrl_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of mosi_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mosi_i_7 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mosi_i_8 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sclk_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sdi_reg[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sdi_reg[12]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sdi_reg[12]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sdi_reg[13]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sdi_reg[14]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sdi_reg[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sdo_reg[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sdo_reg[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_counter_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_counter_r[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_counter_r[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_counter_r[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_counter_w[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_counter_w[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_counter_w[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_counter_w[3]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \spi_clk_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \spi_clk_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \spi_clk_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \spi_clk_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of spi_clock_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of spi_read_flag_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spi_read_tracker[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_read_tracker[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of spi_write_flag_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_write_tracker[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_write_tracker[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_write_tracker[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_write_tracker[4]_i_1\ : label is "soft_lutpair2";
begin
\FSM_onehot_spi_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEE0000"
    )
        port map (
      I0 => spi_read_tracker,
      I1 => spi_write_tracker,
      I2 => axi_gpio_in_reg2(15),
      I3 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I4 => \FSM_onehot_spi_state[2]_i_2_n_0\,
      I5 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      O => \FSM_onehot_spi_state[0]_i_1_n_0\
    );
\FSM_onehot_spi_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => axi_gpio_in_reg2(15),
      I1 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I2 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I3 => \ctrl_reg[0]_i_1_n_0\,
      I4 => \FSM_onehot_spi_state[2]_i_2_n_0\,
      I5 => spi_write_tracker,
      O => \FSM_onehot_spi_state[1]_i_1_n_0\
    );
\FSM_onehot_spi_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => axi_gpio_in_reg2(15),
      I1 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I2 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I3 => \ctrl_reg[0]_i_1_n_0\,
      I4 => \FSM_onehot_spi_state[2]_i_2_n_0\,
      I5 => spi_read_tracker,
      O => \FSM_onehot_spi_state[2]_i_1_n_0\
    );
\FSM_onehot_spi_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I1 => spi_write_tracker_reg(4),
      I2 => spi_write_tracker,
      I3 => \FSM_onehot_spi_state[2]_i_3_n_0\,
      I4 => spi_read_tracker_reg(5),
      I5 => spi_read_tracker,
      O => \FSM_onehot_spi_state[2]_i_2_n_0\
    );
\FSM_onehot_spi_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => spi_read_tracker_reg(1),
      I1 => spi_read_tracker_reg(2),
      I2 => spi_read_tracker_reg(3),
      I3 => spi_read_tracker_reg(4),
      O => \FSM_onehot_spi_state[2]_i_3_n_0\
    );
\FSM_onehot_spi_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \FSM_onehot_spi_state[0]_i_1_n_0\,
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => \FSM_onehot_spi_state_reg_n_0_[0]\
    );
\FSM_onehot_spi_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \FSM_onehot_spi_state[1]_i_1_n_0\,
      Q => spi_write_tracker
    );
\FSM_onehot_spi_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \FSM_onehot_spi_state[2]_i_1_n_0\,
      Q => spi_read_tracker
    );
\axi_gpio_in_reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(0),
      Q => \axi_gpio_in_reg1_reg_n_0_[0]\
    );
\axi_gpio_in_reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(10),
      Q => p_0_in_0
    );
\axi_gpio_in_reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(11),
      Q => \axi_gpio_in_reg1_reg_n_0_[11]\
    );
\axi_gpio_in_reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(12),
      Q => \axi_gpio_in_reg1_reg_n_0_[12]\
    );
\axi_gpio_in_reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(13),
      Q => \axi_gpio_in_reg1_reg_n_0_[13]\
    );
\axi_gpio_in_reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(14),
      Q => p_1_in
    );
\axi_gpio_in_reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(15),
      Q => \axi_gpio_in_reg1_reg_n_0_[15]\
    );
\axi_gpio_in_reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(1),
      Q => \axi_gpio_in_reg1_reg_n_0_[1]\
    );
\axi_gpio_in_reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(2),
      Q => \axi_gpio_in_reg1_reg_n_0_[2]\
    );
\axi_gpio_in_reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(3),
      Q => \axi_gpio_in_reg1_reg_n_0_[3]\
    );
\axi_gpio_in_reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(4),
      Q => \axi_gpio_in_reg1_reg_n_0_[4]\
    );
\axi_gpio_in_reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(5),
      Q => \axi_gpio_in_reg1_reg_n_0_[5]\
    );
\axi_gpio_in_reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(6),
      Q => \axi_gpio_in_reg1_reg_n_0_[6]\
    );
\axi_gpio_in_reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(7),
      Q => \axi_gpio_in_reg1_reg_n_0_[7]\
    );
\axi_gpio_in_reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(8),
      Q => \axi_gpio_in_reg1_reg_n_0_[8]\
    );
\axi_gpio_in_reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => axi_gpio_in(9),
      Q => \axi_gpio_in_reg1_reg_n_0_[9]\
    );
\axi_gpio_in_reg2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \axi_gpio_in_reg1_reg_n_0_[15]\,
      Q => axi_gpio_in_reg2(15)
    );
\axi_gpio_out[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_read_flag_reg_n_0,
      O => \axi_gpio_out[15]_i_1_n_0\
    );
\axi_gpio_out[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \axi_gpio_out[15]_i_2_n_0\
    );
\axi_gpio_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(0),
      Q => axi_gpio_out(0)
    );
\axi_gpio_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(10),
      Q => axi_gpio_out(10)
    );
\axi_gpio_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(11),
      Q => axi_gpio_out(11)
    );
\axi_gpio_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(12),
      Q => axi_gpio_out(12)
    );
\axi_gpio_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(13),
      Q => axi_gpio_out(13)
    );
\axi_gpio_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(14),
      Q => axi_gpio_out(14)
    );
\axi_gpio_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(15),
      Q => axi_gpio_out(15)
    );
\axi_gpio_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(1),
      Q => axi_gpio_out(1)
    );
\axi_gpio_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(2),
      Q => axi_gpio_out(2)
    );
\axi_gpio_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(3),
      Q => axi_gpio_out(3)
    );
\axi_gpio_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(4),
      Q => axi_gpio_out(4)
    );
\axi_gpio_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(5),
      Q => axi_gpio_out(5)
    );
\axi_gpio_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(6),
      Q => axi_gpio_out(6)
    );
\axi_gpio_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(7),
      Q => axi_gpio_out(7)
    );
\axi_gpio_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(8),
      Q => axi_gpio_out(8)
    );
\axi_gpio_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => \axi_gpio_out[15]_i_1_n_0\,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => sdi_reg(9),
      Q => axi_gpio_out(9)
    );
\cs_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rstn,
      I1 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I2 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I3 => axi_gpio_in_reg2(15),
      O => ctrl_reg0
    );
\cs_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[11]\,
      Q => cs_reg(0),
      R => '0'
    );
\cs_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[12]\,
      Q => cs_reg(1),
      R => '0'
    );
\cs_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[13]\,
      Q => cs_reg(2),
      R => '0'
    );
\csn[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \csn_w_reg_n_0_[0]\,
      I1 => csn_r(0),
      O => csn(0)
    );
\csn_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \axi_gpio_out[15]_i_1_n_0\,
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => csn_r(0)
    );
\csn_w[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => cs_reg(2),
      I1 => spi_write_flag_reg_n_0,
      I2 => cs_reg(1),
      I3 => cs_reg(0),
      O => csn_w(0)
    );
\csn_w[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => cs_reg(2),
      I1 => spi_write_flag_reg_n_0,
      I2 => cs_reg(1),
      I3 => cs_reg(0),
      O => csn_w(1)
    );
\csn_w[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cs_reg(1),
      I1 => cs_reg(2),
      I2 => spi_write_flag_reg_n_0,
      I3 => cs_reg(0),
      O => csn_w(2)
    );
\csn_w[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cs_reg(1),
      I1 => cs_reg(2),
      I2 => spi_write_flag_reg_n_0,
      I3 => cs_reg(0),
      O => csn_w(3)
    );
\csn_w_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => csn_w(0),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => \csn_w_reg_n_0_[0]\
    );
\csn_w_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => csn_w(1),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => csn(1)
    );
\csn_w_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => csn_w(2),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => csn(2)
    );
\csn_w_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => csn_w(3),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => csn(3)
    );
\ctrl_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in_0,
      O => \ctrl_reg[0]_i_1_n_0\
    );
\ctrl_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in_0,
      O => \ctrl_reg[1]_i_1_n_0\
    );
\ctrl_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \ctrl_reg[0]_i_1_n_0\,
      Q => shift_reg(10),
      R => '0'
    );
\ctrl_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \ctrl_reg[1]_i_1_n_0\,
      Q => shift_reg(11),
      R => '0'
    );
\ctrl_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => p_1_in,
      Q => shift_reg(12),
      R => '0'
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC8C00800"
    )
        port map (
      I0 => shift_counter_w_reg(0),
      I1 => spi_write_flag_reg_n_0,
      I2 => shift_counter_w_reg(2),
      I3 => mosi_i_2_n_0,
      I4 => mosi_i_3_n_0,
      I5 => mosi_i_4_n_0,
      O => mosi_i_1_n_0
    );
mosi_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => shift_reg(11),
      I1 => shift_reg(3),
      I2 => shift_counter_w_reg(1),
      I3 => shift_reg(9),
      I4 => shift_counter_w_reg(3),
      I5 => shift_reg(1),
      O => mosi_i_2_n_0
    );
mosi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
        port map (
      I0 => shift_counter_w_reg(0),
      I1 => shift_counter_w_reg(1),
      I2 => shift_reg(12),
      I3 => shift_counter_w_reg(3),
      I4 => shift_reg(4),
      I5 => mosi_i_5_n_0,
      O => mosi_i_3_n_0
    );
mosi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000E20000"
    )
        port map (
      I0 => shift_reg(0),
      I1 => shift_counter_w_reg(3),
      I2 => shift_reg(8),
      I3 => mosi_i_6_n_0,
      I4 => mosi_i_7_n_0,
      I5 => mosi_i_8_n_0,
      O => mosi_i_4_n_0
    );
mosi_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2CCE200"
    )
        port map (
      I0 => shift_reg(5),
      I1 => shift_counter_w_reg(1),
      I2 => shift_reg(7),
      I3 => shift_counter_w_reg(0),
      I4 => shift_reg(6),
      I5 => shift_counter_w_reg(3),
      O => mosi_i_5_n_0
    );
mosi_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_counter_w_reg(0),
      I1 => shift_counter_w_reg(1),
      O => mosi_i_6_n_0
    );
mosi_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spi_write_flag_reg_n_0,
      I1 => shift_counter_w_reg(2),
      O => mosi_i_7_n_0
    );
mosi_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => shift_counter_w_reg(0),
      I1 => shift_counter_w_reg(1),
      I2 => shift_reg(2),
      I3 => shift_counter_w_reg(3),
      I4 => shift_reg(10),
      O => mosi_i_8_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => mosi_i_1_n_0,
      Q => mosi
    );
sclk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => spi_clock,
      I1 => spi_clock_flag_r,
      I2 => spi_clock_flag_w,
      O => sclk
    );
\sdi_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => miso,
      I1 => rstn,
      I2 => spi_read_flag_reg_n_0,
      I3 => shift_counter_r_reg(4),
      I4 => \sdi_reg[0]_i_2_n_0\,
      I5 => sdi_reg(0),
      O => \sdi_reg[0]_i_1_n_0\
    );
\sdi_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => shift_counter_r_reg(2),
      I1 => shift_counter_r_reg(0),
      I2 => shift_counter_r_reg(1),
      I3 => shift_counter_r_reg(3),
      O => \sdi_reg[0]_i_2_n_0\
    );
\sdi_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(2),
      I2 => shift_counter_r_reg(3),
      I3 => \sdi_reg[14]_i_2_n_0\,
      I4 => sdi_reg(10),
      O => \sdi_reg[10]_i_1_n_0\
    );
\sdi_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(2),
      I2 => shift_counter_r_reg(3),
      I3 => \sdi_reg[15]_i_2_n_0\,
      I4 => sdi_reg(11),
      O => \sdi_reg[11]_i_1_n_0\
    );
\sdi_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[12]_i_2_n_0\,
      I2 => shift_counter_r_reg(2),
      I3 => shift_counter_r_reg(3),
      I4 => \sdi_reg[12]_i_3_n_0\,
      I5 => sdi_reg(12),
      O => \sdi_reg[12]_i_1_n_0\
    );
\sdi_reg[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_counter_r_reg(0),
      I1 => shift_counter_r_reg(1),
      O => \sdi_reg[12]_i_2_n_0\
    );
\sdi_reg[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => shift_counter_r_reg(4),
      I1 => spi_read_flag_reg_n_0,
      I2 => rstn,
      O => \sdi_reg[12]_i_3_n_0\
    );
\sdi_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[13]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(13),
      O => \sdi_reg[13]_i_1_n_0\
    );
\sdi_reg[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => shift_counter_r_reg(0),
      I1 => shift_counter_r_reg(4),
      I2 => spi_read_flag_reg_n_0,
      I3 => rstn,
      I4 => shift_counter_r_reg(1),
      O => \sdi_reg[13]_i_2_n_0\
    );
\sdi_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[14]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(14),
      O => \sdi_reg[14]_i_1_n_0\
    );
\sdi_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => shift_counter_r_reg(0),
      I1 => shift_counter_r_reg(1),
      I2 => rstn,
      I3 => spi_read_flag_reg_n_0,
      I4 => shift_counter_r_reg(4),
      O => \sdi_reg[14]_i_2_n_0\
    );
\sdi_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[15]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(15),
      O => \sdi_reg[15]_i_1_n_0\
    );
\sdi_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => shift_counter_r_reg(0),
      I1 => shift_counter_r_reg(4),
      I2 => spi_read_flag_reg_n_0,
      I3 => rstn,
      I4 => shift_counter_r_reg(1),
      O => \sdi_reg[15]_i_2_n_0\
    );
\sdi_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(3),
      I2 => shift_counter_r_reg(2),
      I3 => \sdi_reg[13]_i_2_n_0\,
      I4 => sdi_reg(1),
      O => \sdi_reg[1]_i_1_n_0\
    );
\sdi_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(3),
      I2 => shift_counter_r_reg(2),
      I3 => \sdi_reg[14]_i_2_n_0\,
      I4 => sdi_reg(2),
      O => \sdi_reg[2]_i_1_n_0\
    );
\sdi_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(3),
      I2 => shift_counter_r_reg(2),
      I3 => \sdi_reg[15]_i_2_n_0\,
      I4 => sdi_reg(3),
      O => \sdi_reg[3]_i_1_n_0\
    );
\sdi_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[12]_i_2_n_0\,
      I2 => shift_counter_r_reg(2),
      I3 => shift_counter_r_reg(3),
      I4 => \sdi_reg[12]_i_3_n_0\,
      I5 => sdi_reg(4),
      O => \sdi_reg[4]_i_1_n_0\
    );
\sdi_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[13]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(5),
      O => \sdi_reg[5]_i_1_n_0\
    );
\sdi_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[14]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(6),
      O => \sdi_reg[6]_i_1_n_0\
    );
\sdi_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[15]_i_2_n_0\,
      I2 => shift_counter_r_reg(3),
      I3 => shift_counter_r_reg(2),
      I4 => sdi_reg(7),
      O => \sdi_reg[7]_i_1_n_0\
    );
\sdi_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => miso,
      I1 => \sdi_reg[12]_i_2_n_0\,
      I2 => shift_counter_r_reg(2),
      I3 => shift_counter_r_reg(3),
      I4 => \sdi_reg[12]_i_3_n_0\,
      I5 => sdi_reg(8),
      O => \sdi_reg[8]_i_1_n_0\
    );
\sdi_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => miso,
      I1 => shift_counter_r_reg(2),
      I2 => shift_counter_r_reg(3),
      I3 => \sdi_reg[13]_i_2_n_0\,
      I4 => sdi_reg(9),
      O => \sdi_reg[9]_i_1_n_0\
    );
\sdi_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[0]_i_1_n_0\,
      Q => sdi_reg(0),
      R => '0'
    );
\sdi_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[10]_i_1_n_0\,
      Q => sdi_reg(10),
      R => '0'
    );
\sdi_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[11]_i_1_n_0\,
      Q => sdi_reg(11),
      R => '0'
    );
\sdi_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[12]_i_1_n_0\,
      Q => sdi_reg(12),
      R => '0'
    );
\sdi_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[13]_i_1_n_0\,
      Q => sdi_reg(13),
      R => '0'
    );
\sdi_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[14]_i_1_n_0\,
      Q => sdi_reg(14),
      R => '0'
    );
\sdi_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[15]_i_1_n_0\,
      Q => sdi_reg(15),
      R => '0'
    );
\sdi_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[1]_i_1_n_0\,
      Q => sdi_reg(1),
      R => '0'
    );
\sdi_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[2]_i_1_n_0\,
      Q => sdi_reg(2),
      R => '0'
    );
\sdi_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[3]_i_1_n_0\,
      Q => sdi_reg(3),
      R => '0'
    );
\sdi_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[4]_i_1_n_0\,
      Q => sdi_reg(4),
      R => '0'
    );
\sdi_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[5]_i_1_n_0\,
      Q => sdi_reg(5),
      R => '0'
    );
\sdi_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[6]_i_1_n_0\,
      Q => sdi_reg(6),
      R => '0'
    );
\sdi_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[7]_i_1_n_0\,
      Q => sdi_reg(7),
      R => '0'
    );
\sdi_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[8]_i_1_n_0\,
      Q => sdi_reg(8),
      R => '0'
    );
\sdi_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \sdi_reg[9]_i_1_n_0\,
      Q => sdi_reg(9),
      R => '0'
    );
\sdo_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => \axi_gpio_in_reg1_reg_n_0_[0]\,
      O => \sdo_reg[0]_i_1_n_0\
    );
\sdo_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => \axi_gpio_in_reg1_reg_n_0_[1]\,
      O => \sdo_reg[1]_i_1_n_0\
    );
\sdo_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => p_1_in,
      I1 => axi_gpio_in_reg2(15),
      I2 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I3 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I4 => rstn,
      O => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \sdo_reg[0]_i_1_n_0\,
      Q => shift_reg(0),
      R => '0'
    );
\sdo_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \sdo_reg[1]_i_1_n_0\,
      Q => shift_reg(1),
      R => '0'
    );
\sdo_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[2]\,
      Q => shift_reg(2),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[3]\,
      Q => shift_reg(3),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[4]\,
      Q => shift_reg(4),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[5]\,
      Q => shift_reg(5),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[6]\,
      Q => shift_reg(6),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[7]\,
      Q => shift_reg(7),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[8]\,
      Q => shift_reg(8),
      R => \sdo_reg[9]_i_1_n_0\
    );
\sdo_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clock,
      CE => ctrl_reg0,
      D => \axi_gpio_in_reg1_reg_n_0_[9]\,
      Q => shift_reg(9),
      R => \sdo_reg[9]_i_1_n_0\
    );
\shift_counter_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spi_read_flag_reg_n_0,
      I1 => shift_counter_r_reg(0),
      O => \shift_counter_r[0]_i_1_n_0\
    );
\shift_counter_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => shift_counter_r_reg(0),
      I1 => shift_counter_r_reg(1),
      I2 => spi_read_flag_reg_n_0,
      O => \p_0_in__1\(1)
    );
\shift_counter_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => shift_counter_r_reg(1),
      I1 => shift_counter_r_reg(0),
      I2 => shift_counter_r_reg(2),
      I3 => spi_read_flag_reg_n_0,
      O => \p_0_in__1\(2)
    );
\shift_counter_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE010000"
    )
        port map (
      I0 => shift_counter_r_reg(2),
      I1 => shift_counter_r_reg(0),
      I2 => shift_counter_r_reg(1),
      I3 => shift_counter_r_reg(3),
      I4 => spi_read_flag_reg_n_0,
      O => \p_0_in__1\(3)
    );
\shift_counter_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9FFFFFFFF"
    )
        port map (
      I0 => shift_counter_r_reg(4),
      I1 => shift_counter_r_reg(2),
      I2 => shift_counter_r_reg(0),
      I3 => shift_counter_r_reg(1),
      I4 => shift_counter_r_reg(3),
      I5 => spi_read_flag_reg_n_0,
      O => \p_0_in__1\(4)
    );
\shift_counter_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \shift_counter_r[0]_i_1_n_0\,
      Q => shift_counter_r_reg(0)
    );
\shift_counter_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => shift_counter_r_reg(1)
    );
\shift_counter_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => shift_counter_r_reg(2)
    );
\shift_counter_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => shift_counter_r_reg(3)
    );
\shift_counter_r_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      D => \p_0_in__1\(4),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => shift_counter_r_reg(4)
    );
\shift_counter_w[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_write_flag_reg_n_0,
      I1 => shift_counter_w_reg(0),
      O => \shift_counter_w[0]_i_1_n_0\
    );
\shift_counter_w[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => spi_write_flag_reg_n_0,
      I1 => shift_counter_w_reg(1),
      I2 => shift_counter_w_reg(0),
      O => \p_0_in__2\(1)
    );
\shift_counter_w[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD7"
    )
        port map (
      I0 => spi_write_flag_reg_n_0,
      I1 => shift_counter_w_reg(2),
      I2 => shift_counter_w_reg(0),
      I3 => shift_counter_w_reg(1),
      O => \p_0_in__2\(2)
    );
\shift_counter_w[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA9FFFF"
    )
        port map (
      I0 => shift_counter_w_reg(3),
      I1 => shift_counter_w_reg(1),
      I2 => shift_counter_w_reg(0),
      I3 => shift_counter_w_reg(2),
      I4 => spi_write_flag_reg_n_0,
      O => \p_0_in__2\(3)
    );
\shift_counter_w_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => \shift_counter_w[0]_i_1_n_0\,
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => shift_counter_w_reg(0)
    );
\shift_counter_w_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => \p_0_in__2\(1),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => shift_counter_w_reg(1)
    );
\shift_counter_w_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => \p_0_in__2\(2),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => shift_counter_w_reg(2)
    );
\shift_counter_w_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => spi_clock,
      CE => '1',
      D => \p_0_in__2\(3),
      PRE => \axi_gpio_out[15]_i_2_n_0\,
      Q => shift_counter_w_reg(3)
    );
\spi_clk_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rstn,
      I1 => spi_clk_counter_reg(12),
      I2 => \spi_clk_counter[0]_i_3_n_0\,
      O => spi_clk_counter0
    );
\spi_clk_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEEA"
    )
        port map (
      I0 => spi_clk_counter_reg(11),
      I1 => \spi_clk_counter[0]_i_5_n_0\,
      I2 => spi_clk_counter_reg(4),
      I3 => spi_clk_counter_reg(5),
      I4 => \spi_clk_counter[0]_i_6_n_0\,
      I5 => spi_clk_counter_reg(10),
      O => \spi_clk_counter[0]_i_3_n_0\
    );
\spi_clk_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_clk_counter_reg(0),
      O => \spi_clk_counter[0]_i_4_n_0\
    );
\spi_clk_counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => spi_clk_counter_reg(9),
      I1 => spi_clk_counter_reg(8),
      I2 => spi_clk_counter_reg(7),
      O => \spi_clk_counter[0]_i_5_n_0\
    );
\spi_clk_counter[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => spi_clk_counter_reg(6),
      I1 => spi_clk_counter_reg(2),
      I2 => spi_clk_counter_reg(1),
      I3 => spi_clk_counter_reg(0),
      I4 => spi_clk_counter_reg(3),
      O => \spi_clk_counter[0]_i_6_n_0\
    );
\spi_clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[0]_i_2_n_7\,
      Q => spi_clk_counter_reg(0),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_clk_counter_reg[0]_i_2_n_0\,
      CO(2) => \spi_clk_counter_reg[0]_i_2_n_1\,
      CO(1) => \spi_clk_counter_reg[0]_i_2_n_2\,
      CO(0) => \spi_clk_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \spi_clk_counter_reg[0]_i_2_n_4\,
      O(2) => \spi_clk_counter_reg[0]_i_2_n_5\,
      O(1) => \spi_clk_counter_reg[0]_i_2_n_6\,
      O(0) => \spi_clk_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => spi_clk_counter_reg(3 downto 1),
      S(0) => \spi_clk_counter[0]_i_4_n_0\
    );
\spi_clk_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[8]_i_1_n_5\,
      Q => spi_clk_counter_reg(10),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[8]_i_1_n_4\,
      Q => spi_clk_counter_reg(11),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[12]_i_1_n_7\,
      Q => spi_clk_counter_reg(12),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_clk_counter_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_spi_clk_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_spi_clk_counter_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \spi_clk_counter_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => spi_clk_counter_reg(12)
    );
\spi_clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[0]_i_2_n_6\,
      Q => spi_clk_counter_reg(1),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[0]_i_2_n_5\,
      Q => spi_clk_counter_reg(2),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[0]_i_2_n_4\,
      Q => spi_clk_counter_reg(3),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[4]_i_1_n_7\,
      Q => spi_clk_counter_reg(4),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_clk_counter_reg[0]_i_2_n_0\,
      CO(3) => \spi_clk_counter_reg[4]_i_1_n_0\,
      CO(2) => \spi_clk_counter_reg[4]_i_1_n_1\,
      CO(1) => \spi_clk_counter_reg[4]_i_1_n_2\,
      CO(0) => \spi_clk_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_clk_counter_reg[4]_i_1_n_4\,
      O(2) => \spi_clk_counter_reg[4]_i_1_n_5\,
      O(1) => \spi_clk_counter_reg[4]_i_1_n_6\,
      O(0) => \spi_clk_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => spi_clk_counter_reg(7 downto 4)
    );
\spi_clk_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[4]_i_1_n_6\,
      Q => spi_clk_counter_reg(5),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[4]_i_1_n_5\,
      Q => spi_clk_counter_reg(6),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[4]_i_1_n_4\,
      Q => spi_clk_counter_reg(7),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[8]_i_1_n_7\,
      Q => spi_clk_counter_reg(8),
      R => spi_clk_counter0
    );
\spi_clk_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_clk_counter_reg[4]_i_1_n_0\,
      CO(3) => \spi_clk_counter_reg[8]_i_1_n_0\,
      CO(2) => \spi_clk_counter_reg[8]_i_1_n_1\,
      CO(1) => \spi_clk_counter_reg[8]_i_1_n_2\,
      CO(0) => \spi_clk_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_clk_counter_reg[8]_i_1_n_4\,
      O(2) => \spi_clk_counter_reg[8]_i_1_n_5\,
      O(1) => \spi_clk_counter_reg[8]_i_1_n_6\,
      O(0) => \spi_clk_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => spi_clk_counter_reg(11 downto 8)
    );
\spi_clk_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => rstn,
      D => \spi_clk_counter_reg[8]_i_1_n_6\,
      Q => spi_clk_counter_reg(9),
      R => spi_clk_counter0
    );
spi_clock_flag_r_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => spi_read_flag_reg_n_0,
      Q => spi_clock_flag_r
    );
spi_clock_flag_w_reg: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => spi_write_flag_reg_n_0,
      Q => spi_clock_flag_w
    );
spi_clock_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spi_clk_counter_reg(12),
      I1 => \spi_clk_counter[0]_i_3_n_0\,
      I2 => spi_clock,
      O => spi_clock_i_1_n_0
    );
spi_clock_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => spi_clock_i_1_n_0,
      Q => spi_clock
    );
spi_read_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => spi_read_flag,
      I1 => spi_write_tracker,
      I2 => spi_read_tracker,
      I3 => spi_read_flag_reg_n_0,
      O => spi_read_flag_i_1_n_0
    );
spi_read_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0500E000"
    )
        port map (
      I0 => spi_read_flag_i_3_n_0,
      I1 => spi_read_tracker_reg(0),
      I2 => spi_read_tracker_reg(4),
      I3 => spi_read_tracker,
      I4 => spi_read_tracker_reg(5),
      O => spi_read_flag
    );
spi_read_flag_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spi_read_tracker_reg(3),
      I1 => spi_read_tracker_reg(2),
      I2 => spi_read_tracker_reg(1),
      O => spi_read_flag_i_3_n_0
    );
spi_read_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => spi_read_flag_i_1_n_0,
      Q => spi_read_flag_reg_n_0
    );
\spi_read_tracker[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => spi_read_tracker_reg(5),
      I1 => spi_read_tracker_reg(1),
      I2 => spi_read_tracker_reg(2),
      I3 => spi_read_tracker_reg(3),
      I4 => spi_read_tracker_reg(4),
      I5 => spi_read_tracker_reg(0),
      O => \p_0_in__0\(0)
    );
\spi_read_tracker[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111344444444"
    )
        port map (
      I0 => spi_read_tracker_reg(5),
      I1 => spi_read_tracker_reg(1),
      I2 => spi_read_tracker_reg(2),
      I3 => spi_read_tracker_reg(3),
      I4 => spi_read_tracker_reg(4),
      I5 => spi_read_tracker_reg(0),
      O => \p_0_in__0\(1)
    );
\spi_read_tracker[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => spi_read_tracker_reg(0),
      I1 => spi_read_tracker_reg(1),
      I2 => spi_read_tracker_reg(2),
      I3 => spi_read_tracker_reg(5),
      O => \p_0_in__0\(2)
    );
\spi_read_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => spi_read_tracker_reg(1),
      I1 => spi_read_tracker_reg(0),
      I2 => spi_read_tracker_reg(2),
      I3 => spi_read_tracker_reg(3),
      I4 => spi_read_tracker_reg(5),
      O => \p_0_in__0\(3)
    );
\spi_read_tracker[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => spi_read_tracker_reg(2),
      I1 => spi_read_tracker_reg(0),
      I2 => spi_read_tracker_reg(1),
      I3 => spi_read_tracker_reg(3),
      I4 => spi_read_tracker_reg(4),
      I5 => spi_read_tracker_reg(5),
      O => \p_0_in__0\(4)
    );
\spi_read_tracker[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000580000000"
    )
        port map (
      I0 => spi_read_tracker_reg(2),
      I1 => spi_read_tracker_reg(0),
      I2 => spi_read_tracker_reg(1),
      I3 => spi_read_tracker_reg(3),
      I4 => spi_read_tracker_reg(4),
      I5 => spi_read_tracker_reg(5),
      O => \p_0_in__0\(5)
    );
\spi_read_tracker_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => spi_read_tracker_reg(0)
    );
\spi_read_tracker_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => spi_read_tracker_reg(1)
    );
\spi_read_tracker_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => spi_read_tracker_reg(2)
    );
\spi_read_tracker_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => spi_read_tracker_reg(3)
    );
\spi_read_tracker_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(4),
      Q => spi_read_tracker_reg(4)
    );
\spi_read_tracker_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_read_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => spi_read_tracker_reg(5)
    );
spi_write_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => spi_write_flag,
      I1 => spi_write_tracker,
      I2 => spi_read_tracker,
      I3 => spi_write_flag_reg_n_0,
      O => spi_write_flag_i_1_n_0
    );
spi_write_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFAEAE"
    )
        port map (
      I0 => \FSM_onehot_spi_state_reg_n_0_[0]\,
      I1 => spi_write_tracker,
      I2 => spi_write_tracker_reg(4),
      I3 => spi_read_tracker_reg(4),
      I4 => spi_read_tracker,
      I5 => spi_read_tracker_reg(5),
      O => spi_write_flag
    );
spi_write_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => '1',
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => spi_write_flag_i_1_n_0,
      Q => spi_write_flag_reg_n_0
    );
\spi_write_tracker[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_write_tracker_reg_n_0_[0]\,
      I1 => spi_write_tracker_reg(4),
      O => \spi_write_tracker[0]_i_1_n_0\
    );
\spi_write_tracker[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \spi_write_tracker_reg_n_0_[0]\,
      I1 => \spi_write_tracker_reg_n_0_[1]\,
      I2 => spi_write_tracker_reg(4),
      O => p_0_in(1)
    );
\spi_write_tracker[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \spi_write_tracker_reg_n_0_[0]\,
      I1 => \spi_write_tracker_reg_n_0_[1]\,
      I2 => \spi_write_tracker_reg_n_0_[2]\,
      I3 => spi_write_tracker_reg(4),
      O => p_0_in(2)
    );
\spi_write_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \spi_write_tracker_reg_n_0_[1]\,
      I1 => \spi_write_tracker_reg_n_0_[0]\,
      I2 => \spi_write_tracker_reg_n_0_[2]\,
      I3 => \spi_write_tracker_reg_n_0_[3]\,
      I4 => spi_write_tracker_reg(4),
      O => p_0_in(3)
    );
\spi_write_tracker[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => spi_write_tracker_reg(4),
      I1 => \spi_write_tracker_reg_n_0_[3]\,
      I2 => \spi_write_tracker_reg_n_0_[2]\,
      I3 => \spi_write_tracker_reg_n_0_[0]\,
      I4 => \spi_write_tracker_reg_n_0_[1]\,
      O => p_0_in(4)
    );
\spi_write_tracker_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_write_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => \spi_write_tracker[0]_i_1_n_0\,
      Q => \spi_write_tracker_reg_n_0_[0]\
    );
\spi_write_tracker_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_write_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => p_0_in(1),
      Q => \spi_write_tracker_reg_n_0_[1]\
    );
\spi_write_tracker_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_write_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => p_0_in(2),
      Q => \spi_write_tracker_reg_n_0_[2]\
    );
\spi_write_tracker_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_write_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => p_0_in(3),
      Q => \spi_write_tracker_reg_n_0_[3]\
    );
\spi_write_tracker_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => spi_clock,
      CE => spi_write_tracker,
      CLR => \axi_gpio_out[15]_i_2_n_0\,
      D => p_0_in(4),
      Q => spi_write_tracker_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_0_0 is
  port (
    clk_in : in STD_LOGIC;
    rstn : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sclk : out STD_LOGIC;
    csn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_spi_0_0 : entity is "system_spi_0_0,spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_spi_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_spi_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_spi_0_0 : entity is "spi,Vivado 2020.2";
end system_spi_0_0;

architecture STRUCTURE of system_spi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^axi_gpio_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  axi_gpio_out(31) <= \<const0>\;
  axi_gpio_out(30) <= \<const0>\;
  axi_gpio_out(29) <= \<const0>\;
  axi_gpio_out(28) <= \<const0>\;
  axi_gpio_out(27) <= \<const0>\;
  axi_gpio_out(26) <= \<const0>\;
  axi_gpio_out(25) <= \<const0>\;
  axi_gpio_out(24) <= \<const0>\;
  axi_gpio_out(23) <= \<const0>\;
  axi_gpio_out(22) <= \<const0>\;
  axi_gpio_out(21) <= \<const0>\;
  axi_gpio_out(20) <= \<const0>\;
  axi_gpio_out(19) <= \<const0>\;
  axi_gpio_out(18) <= \<const0>\;
  axi_gpio_out(17) <= \<const0>\;
  axi_gpio_out(16) <= \<const0>\;
  axi_gpio_out(15 downto 0) <= \^axi_gpio_out\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_spi_0_0_spi
     port map (
      axi_gpio_in(15 downto 0) => axi_gpio_in(15 downto 0),
      axi_gpio_out(15 downto 0) => \^axi_gpio_out\(15 downto 0),
      clk_in => clk_in,
      csn(3 downto 0) => csn(3 downto 0),
      miso => miso,
      mosi => mosi,
      rstn => rstn,
      sclk => sclk
    );
end STRUCTURE;
