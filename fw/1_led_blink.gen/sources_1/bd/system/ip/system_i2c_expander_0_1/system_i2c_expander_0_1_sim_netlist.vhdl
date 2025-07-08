-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec 20 11:13:20 2023
-- Host        : ZA-WASADIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work_other/FW/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_i2c_expander_0_1/system_i2c_expander_0_1_sim_netlist.vhdl
-- Design      : system_i2c_expander_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_expander_0_1_i2c_expander is
  port (
    i2c_clk : out STD_LOGIC;
    rstn_0 : out STD_LOGIC;
    i2c_start_flag_reg_0 : out STD_LOGIC;
    sda : out STD_LOGIC;
    scl : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rstn : in STD_LOGIC;
    sda_INST_0_i_2 : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_expander_0_1_i2c_expander : entity is "i2c_expander";
end system_i2c_expander_0_1_i2c_expander;

architecture STRUCTURE of system_i2c_expander_0_1_i2c_expander is
  signal FSM_sequential_i2c_state_i_1_n_0 : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_gpio_in_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_gpio_in_reg2 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal i2c_ack_flag : STD_LOGIC;
  signal i2c_ack_flag_reg_n_0 : STD_LOGIC;
  signal \^i2c_clk\ : STD_LOGIC;
  signal \i2c_clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_clk_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal i2c_clk_counter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i2c_clk_i_1_n_0 : STD_LOGIC;
  signal i2c_ctrl_addr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i2c_ctrl_addr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_ctrl_addr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal i2c_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i2c_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal i2c_opcode_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i2c_opcode_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_opcode_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_opcode_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal i2c_shift_reg_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i2c_shift_reg_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2c_shift_reg_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_shift_reg_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2c_shift_reg_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal i2c_start_flag : STD_LOGIC;
  signal i2c_start_flag_reg_n_0 : STD_LOGIC;
  signal i2c_state112_out : STD_LOGIC;
  signal i2c_write_ctrl_addr_flag : STD_LOGIC;
  signal i2c_write_ctrl_addr_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_data_flag : STD_LOGIC;
  signal i2c_write_data_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_opcode_flag : STD_LOGIC;
  signal i2c_write_opcode_flag_reg_n_0 : STD_LOGIC;
  signal i2c_write_stop_flag : STD_LOGIC;
  signal i2c_write_stop_flag_0 : STD_LOGIC;
  signal i2c_write_tracker : STD_LOGIC;
  signal \i2c_write_tracker[0]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_1_in11_in : STD_LOGIC;
  signal \^rstn_0\ : STD_LOGIC;
  signal scl_en_i_1_n_0 : STD_LOGIC;
  signal scl_en_reg_n_0 : STD_LOGIC;
  signal scl_write : STD_LOGIC;
  signal scl_write_i_1_n_0 : STD_LOGIC;
  signal scl_write_i_3_n_0 : STD_LOGIC;
  signal scl_write_reg_n_0 : STD_LOGIC;
  signal sda_out : STD_LOGIC;
  signal sda_out2 : STD_LOGIC;
  signal sda_out_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_11_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_6_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_7_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_i_9_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_reg_i_2_n_0 : STD_LOGIC;
  signal sda_out_tristate_oe_reg_n_0 : STD_LOGIC;
  signal sda_write_i_1_n_0 : STD_LOGIC;
  signal sda_write_i_2_n_0 : STD_LOGIC;
  signal sda_write_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_i2c_state_i_1 : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_i2c_state_reg : label is "i2c_s_read:01,i2c_s_idle:0,i2c_s_write:1";
  attribute SOFT_HLUTNM of \i2c_clk_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2c_clk_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of i2c_clk_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_ctrl_addr_reg[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i2c_data_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i2c_data_reg[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2c_data_reg[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2c_data_reg[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i2c_data_reg[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i2c_data_reg[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i2c_data_reg[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i2c_data_reg[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i2c_data_reg[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i2c_opcode_reg[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2c_opcode_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2c_shift_reg_counter[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2c_shift_reg_counter[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of i2c_write_ctrl_addr_flag_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i2c_write_tracker[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2c_write_tracker[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2c_write_tracker[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2c_write_tracker[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i2c_write_tracker[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of scl_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of scl_en_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of scl_write_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sda_INST_0_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sda_INST_0_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sda_INST_0_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sda_out_tristate_oe_i_8 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sda_write_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_write_i_3 : label is "soft_lutpair6";
begin
  i2c_clk <= \^i2c_clk\;
  rstn_0 <= \^rstn_0\;
FSM_sequential_i2c_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => axi_gpio_in_reg2(31),
      I1 => p_1_in11_in,
      I2 => i2c_write_tracker,
      I3 => \i2c_data_reg[7]_i_3_n_0\,
      O => FSM_sequential_i2c_state_i_1_n_0
    );
FSM_sequential_i2c_state_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => FSM_sequential_i2c_state_i_1_n_0,
      Q => i2c_write_tracker
    );
\axi_gpio_in_reg1[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \^rstn_0\
    );
\axi_gpio_in_reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(0),
      Q => \axi_gpio_in_reg1_reg_n_0_[0]\
    );
\axi_gpio_in_reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(10),
      Q => \axi_gpio_in_reg1_reg_n_0_[10]\
    );
\axi_gpio_in_reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(11),
      Q => \axi_gpio_in_reg1_reg_n_0_[11]\
    );
\axi_gpio_in_reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(12),
      Q => \axi_gpio_in_reg1_reg_n_0_[12]\
    );
\axi_gpio_in_reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(13),
      Q => \axi_gpio_in_reg1_reg_n_0_[13]\
    );
\axi_gpio_in_reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(14),
      Q => \axi_gpio_in_reg1_reg_n_0_[14]\
    );
\axi_gpio_in_reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(15),
      Q => \axi_gpio_in_reg1_reg_n_0_[15]\
    );
\axi_gpio_in_reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(1),
      Q => \axi_gpio_in_reg1_reg_n_0_[1]\
    );
\axi_gpio_in_reg1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(16),
      Q => \axi_gpio_in_reg1_reg_n_0_[29]\
    );
\axi_gpio_in_reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(2),
      Q => \axi_gpio_in_reg1_reg_n_0_[2]\
    );
\axi_gpio_in_reg1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(17),
      Q => \axi_gpio_in_reg1_reg_n_0_[30]\
    );
\axi_gpio_in_reg1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(18),
      Q => p_1_in11_in
    );
\axi_gpio_in_reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(3),
      Q => \axi_gpio_in_reg1_reg_n_0_[3]\
    );
\axi_gpio_in_reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(4),
      Q => \axi_gpio_in_reg1_reg_n_0_[4]\
    );
\axi_gpio_in_reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(5),
      Q => \axi_gpio_in_reg1_reg_n_0_[5]\
    );
\axi_gpio_in_reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(6),
      Q => \axi_gpio_in_reg1_reg_n_0_[6]\
    );
\axi_gpio_in_reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(7),
      Q => \axi_gpio_in_reg1_reg_n_0_[7]\
    );
\axi_gpio_in_reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(8),
      Q => \axi_gpio_in_reg1_reg_n_0_[8]\
    );
\axi_gpio_in_reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => axi_gpio_in(9),
      Q => \axi_gpio_in_reg1_reg_n_0_[9]\
    );
\axi_gpio_in_reg2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => p_1_in11_in,
      Q => axi_gpio_in_reg2(31)
    );
i2c_ack_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000082000080"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(4),
      I5 => p_0_in(2),
      O => i2c_ack_flag
    );
i2c_ack_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_ack_flag,
      Q => i2c_ack_flag_reg_n_0
    );
\i2c_clk_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100FF00FF00FF"
    )
        port map (
      I0 => i2c_clk_counter_reg(2),
      I1 => i2c_clk_counter_reg(3),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(0),
      I4 => i2c_clk_counter_reg(4),
      I5 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[0]_i_1_n_0\
    );
\i2c_clk_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => i2c_clk_counter_reg(1),
      I1 => i2c_clk_counter_reg(0),
      I2 => i2c_clk_counter_reg(4),
      I3 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[1]_i_1_n_0\
    );
\i2c_clk_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A6A6A"
    )
        port map (
      I0 => i2c_clk_counter_reg(2),
      I1 => i2c_clk_counter_reg(1),
      I2 => i2c_clk_counter_reg(0),
      I3 => i2c_clk_counter_reg(4),
      I4 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[2]_i_1_n_0\
    );
\i2c_clk_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006CCC6CCC6CCC"
    )
        port map (
      I0 => i2c_clk_counter_reg(2),
      I1 => i2c_clk_counter_reg(3),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(0),
      I4 => i2c_clk_counter_reg(4),
      I5 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[3]_i_1_n_0\
    );
\i2c_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000180007FFF8000"
    )
        port map (
      I0 => i2c_clk_counter_reg(2),
      I1 => i2c_clk_counter_reg(3),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(0),
      I4 => i2c_clk_counter_reg(4),
      I5 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[4]_i_1_n_0\
    );
\i2c_clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF80000000"
    )
        port map (
      I0 => i2c_clk_counter_reg(2),
      I1 => i2c_clk_counter_reg(3),
      I2 => i2c_clk_counter_reg(1),
      I3 => i2c_clk_counter_reg(0),
      I4 => i2c_clk_counter_reg(4),
      I5 => i2c_clk_counter_reg(5),
      O => \i2c_clk_counter[5]_i_1_n_0\
    );
\i2c_clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[0]_i_1_n_0\,
      Q => i2c_clk_counter_reg(0)
    );
\i2c_clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[1]_i_1_n_0\,
      Q => i2c_clk_counter_reg(1)
    );
\i2c_clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[2]_i_1_n_0\,
      Q => i2c_clk_counter_reg(2)
    );
\i2c_clk_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[3]_i_1_n_0\,
      Q => i2c_clk_counter_reg(3)
    );
\i2c_clk_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[4]_i_1_n_0\,
      Q => i2c_clk_counter_reg(4)
    );
\i2c_clk_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rstn_0\,
      D => \i2c_clk_counter[5]_i_1_n_0\,
      Q => i2c_clk_counter_reg(5)
    );
i2c_clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \^i2c_clk\,
      O => i2c_clk_i_1_n_0
    );
i2c_clk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => i2c_clk_counter_reg(5),
      I1 => i2c_clk_counter_reg(4),
      I2 => i2c_clk_counter_reg(0),
      I3 => i2c_clk_counter_reg(1),
      I4 => i2c_clk_counter_reg(3),
      I5 => i2c_clk_counter_reg(2),
      O => \p_0_in__0\
    );
i2c_clk_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => i2c_clk_i_1_n_0,
      PRE => \^rstn_0\,
      Q => \^i2c_clk\
    );
\i2c_ctrl_addr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[8]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(0)
    );
\i2c_ctrl_addr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[9]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(1)
    );
\i2c_ctrl_addr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[10]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(2)
    );
\i2c_ctrl_addr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[11]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(3)
    );
\i2c_ctrl_addr_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[12]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(4)
    );
\i2c_ctrl_addr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[13]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(5)
    );
\i2c_ctrl_addr_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[14]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(6)
    );
\i2c_ctrl_addr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[15]\,
      I1 => i2c_write_tracker,
      O => i2c_ctrl_addr_reg(7)
    );
\i2c_ctrl_addr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(0),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[0]\
    );
\i2c_ctrl_addr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(1),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[1]\
    );
\i2c_ctrl_addr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(2),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[2]\
    );
\i2c_ctrl_addr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(3),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[3]\
    );
\i2c_ctrl_addr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(4),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[4]\
    );
\i2c_ctrl_addr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(5),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[5]\
    );
\i2c_ctrl_addr_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(6),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[6]\
    );
\i2c_ctrl_addr_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_ctrl_addr_reg(7),
      Q => \i2c_ctrl_addr_reg_reg_n_0_[7]\
    );
\i2c_data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[0]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(0)
    );
\i2c_data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[1]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(1)
    );
\i2c_data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[2]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(2)
    );
\i2c_data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[3]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(3)
    );
\i2c_data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[4]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(4)
    );
\i2c_data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[5]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(5)
    );
\i2c_data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[6]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(6)
    );
\i2c_data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => \i2c_data_reg[7]_i_3_n_0\,
      I1 => i2c_write_tracker,
      I2 => p_1_in11_in,
      I3 => axi_gpio_in_reg2(31),
      O => \i2c_data_reg[7]_i_1_n_0\
    );
\i2c_data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[7]\,
      I1 => i2c_write_tracker,
      O => i2c_data_reg(7)
    );
\i2c_data_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      O => \i2c_data_reg[7]_i_3_n_0\
    );
\i2c_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(0),
      Q => \i2c_data_reg_reg_n_0_[0]\
    );
\i2c_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(1),
      Q => \i2c_data_reg_reg_n_0_[1]\
    );
\i2c_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(2),
      Q => \i2c_data_reg_reg_n_0_[2]\
    );
\i2c_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(3),
      Q => \i2c_data_reg_reg_n_0_[3]\
    );
\i2c_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(4),
      Q => \i2c_data_reg_reg_n_0_[4]\
    );
\i2c_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(5),
      Q => \i2c_data_reg_reg_n_0_[5]\
    );
\i2c_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(6),
      Q => \i2c_data_reg_reg_n_0_[6]\
    );
\i2c_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_data_reg(7),
      Q => \i2c_data_reg_reg_n_0_[7]\
    );
\i2c_opcode_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[29]\,
      I1 => i2c_write_tracker,
      O => i2c_opcode_reg(0)
    );
\i2c_opcode_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_gpio_in_reg1_reg_n_0_[30]\,
      I1 => i2c_write_tracker,
      O => i2c_opcode_reg(2)
    );
\i2c_opcode_reg[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2c_write_tracker,
      O => i2c_opcode_reg(3)
    );
\i2c_opcode_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_opcode_reg(0),
      Q => \i2c_opcode_reg_reg_n_0_[0]\
    );
\i2c_opcode_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_opcode_reg(2),
      Q => \i2c_opcode_reg_reg_n_0_[2]\
    );
\i2c_opcode_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_opcode_reg(3),
      Q => \i2c_opcode_reg_reg_n_0_[3]\
    );
\i2c_shift_reg_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => i2c_write_ctrl_addr_flag_reg_n_0,
      I2 => i2c_write_data_flag_reg_n_0,
      I3 => i2c_write_opcode_flag_reg_n_0,
      I4 => \i2c_shift_reg_counter[0]_i_2_n_0\,
      I5 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      O => i2c_shift_reg_counter(0)
    );
\i2c_shift_reg_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      O => \i2c_shift_reg_counter[0]_i_2_n_0\
    );
\i2c_shift_reg_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444000000004440"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => \i2c_shift_reg_counter[3]_i_3_n_0\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I5 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      O => i2c_shift_reg_counter(1)
    );
\i2c_shift_reg_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440044000040"
    )
        port map (
      I0 => i2c_ack_flag_reg_n_0,
      I1 => \i2c_shift_reg_counter[3]_i_3_n_0\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I5 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      O => i2c_shift_reg_counter(2)
    );
\i2c_shift_reg_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => i2c_write_stop_flag,
      I1 => i2c_write_opcode_flag_reg_n_0,
      I2 => i2c_write_data_flag_reg_n_0,
      I3 => i2c_write_ctrl_addr_flag_reg_n_0,
      I4 => i2c_ack_flag_reg_n_0,
      I5 => i2c_start_flag_reg_n_0,
      O => \i2c_shift_reg_counter[3]_i_1_n_0\
    );
\i2c_shift_reg_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE01FFFF"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[3]\,
      I4 => \i2c_shift_reg_counter[3]_i_3_n_0\,
      I5 => i2c_ack_flag_reg_n_0,
      O => i2c_shift_reg_counter(3)
    );
\i2c_shift_reg_counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i2c_write_ctrl_addr_flag_reg_n_0,
      I1 => i2c_write_data_flag_reg_n_0,
      I2 => i2c_write_opcode_flag_reg_n_0,
      O => \i2c_shift_reg_counter[3]_i_3_n_0\
    );
\i2c_shift_reg_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_shift_reg_counter(0),
      Q => \i2c_shift_reg_counter_reg_n_0_[0]\
    );
\i2c_shift_reg_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_shift_reg_counter(1),
      Q => \i2c_shift_reg_counter_reg_n_0_[1]\
    );
\i2c_shift_reg_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => i2c_shift_reg_counter(2),
      Q => \i2c_shift_reg_counter_reg_n_0_[2]\
    );
\i2c_shift_reg_counter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => \i2c_shift_reg_counter[3]_i_1_n_0\,
      D => i2c_shift_reg_counter(3),
      PRE => \^rstn_0\,
      Q => \i2c_shift_reg_counter_reg_n_0_[3]\
    );
i2c_start_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => i2c_start_flag
    );
i2c_start_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_start_flag,
      Q => i2c_start_flag_reg_n_0
    );
i2c_write_ctrl_addr_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80200"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      O => i2c_write_ctrl_addr_flag
    );
i2c_write_ctrl_addr_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_write_ctrl_addr_flag,
      Q => i2c_write_ctrl_addr_flag_reg_n_0
    );
i2c_write_data_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888808888000"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(4),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(3),
      I5 => p_0_in(2),
      O => i2c_write_data_flag
    );
i2c_write_data_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_write_data_flag,
      Q => i2c_write_data_flag_reg_n_0
    );
i2c_write_opcode_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0A0A28"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(4),
      O => i2c_write_opcode_flag
    );
i2c_write_opcode_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_write_opcode_flag,
      Q => i2c_write_opcode_flag_reg_n_0
    );
i2c_write_stop_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => p_0_in(4),
      O => i2c_write_stop_flag_0
    );
i2c_write_stop_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => i2c_write_stop_flag_0,
      Q => i2c_write_stop_flag
    );
\i2c_write_tracker[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(3),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => \i2c_write_tracker[0]_i_1_n_0\
    );
\i2c_write_tracker[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555AAAA"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \p_0_in__1\(1)
    );
\i2c_write_tracker[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15AAFF00"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \p_0_in__1\(2)
    );
\i2c_write_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AF0F0F0"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \p_0_in__1\(3)
    );
\i2c_write_tracker[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CCCCCCC"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \p_0_in__1\(4)
    );
\i2c_write_tracker_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_write_tracker,
      CLR => \^rstn_0\,
      D => \i2c_write_tracker[0]_i_1_n_0\,
      Q => p_0_in(0)
    );
\i2c_write_tracker_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_write_tracker,
      CLR => \^rstn_0\,
      D => \p_0_in__1\(1),
      Q => p_0_in(1)
    );
\i2c_write_tracker_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_write_tracker,
      CLR => \^rstn_0\,
      D => \p_0_in__1\(2),
      Q => p_0_in(2)
    );
\i2c_write_tracker_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_write_tracker,
      CLR => \^rstn_0\,
      D => \p_0_in__1\(3),
      Q => p_0_in(3)
    );
\i2c_write_tracker_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => i2c_write_tracker,
      CLR => \^rstn_0\,
      D => \p_0_in__1\(4),
      Q => p_0_in(4)
    );
scl_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^i2c_clk\,
      I1 => scl_write_reg_n_0,
      I2 => scl_en_reg_n_0,
      O => scl
    );
scl_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_gpio_in_reg2(31),
      I1 => p_1_in11_in,
      I2 => i2c_write_tracker,
      O => scl_en_i_1_n_0
    );
scl_en_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => \i2c_data_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => scl_en_i_1_n_0,
      Q => scl_en_reg_n_0
    );
scl_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBABF80808A80"
    )
        port map (
      I0 => scl_write,
      I1 => scl_write_i_3_n_0,
      I2 => i2c_write_tracker,
      I3 => p_1_in11_in,
      I4 => axi_gpio_in_reg2(31),
      I5 => scl_write_reg_n_0,
      O => scl_write_i_1_n_0
    );
scl_write_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AAA0AA8"
    )
        port map (
      I0 => i2c_write_tracker,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => scl_write
    );
scl_write_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A80001FF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      O => scl_write_i_3_n_0
    );
scl_write_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => scl_write_i_1_n_0,
      Q => scl_write_reg_n_0
    );
sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => sda_write_reg_n_0,
      I1 => sda_out,
      O => sda
    );
sda_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_tristate_oe_reg_n_0,
      I1 => sda_INST_0_i_2,
      O => sda_out
    );
sda_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => i2c_start_flag_reg_n_0,
      I1 => sda_out2,
      I2 => i2c_ack_flag_reg_n_0,
      I3 => sda_INST_0_i_2,
      O => i2c_start_flag_reg_0
    );
sda_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F1"
    )
        port map (
      I0 => i2c_write_opcode_flag_reg_n_0,
      I1 => i2c_write_ctrl_addr_flag_reg_n_0,
      I2 => \i2c_shift_reg_counter[0]_i_2_n_0\,
      I3 => i2c_write_data_flag_reg_n_0,
      O => sda_out2
    );
sda_out_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => sda_out_tristate_oe_reg_i_2_n_0,
      I1 => i2c_write_opcode_flag_reg_n_0,
      I2 => sda_out_tristate_oe_i_3_n_0,
      I3 => i2c_start_flag_reg_n_0,
      I4 => sda_out_tristate_oe_i_4_n_0,
      I5 => sda_out_tristate_oe_reg_n_0,
      O => sda_out_tristate_oe_i_1_n_0
    );
sda_out_tristate_oe_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_ctrl_addr_reg_reg_n_0_[0]\,
      I1 => \i2c_ctrl_addr_reg_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \i2c_ctrl_addr_reg_reg_n_0_[2]\,
      I5 => \i2c_ctrl_addr_reg_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_10_n_0
    );
sda_out_tristate_oe_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_ctrl_addr_reg_reg_n_0_[4]\,
      I1 => \i2c_ctrl_addr_reg_reg_n_0_[5]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \i2c_ctrl_addr_reg_reg_n_0_[6]\,
      I5 => \i2c_ctrl_addr_reg_reg_n_0_[7]\,
      O => sda_out_tristate_oe_i_11_n_0
    );
sda_out_tristate_oe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FCA000000CA00"
    )
        port map (
      I0 => \i2c_opcode_reg_reg_n_0_[0]\,
      I1 => \i2c_opcode_reg_reg_n_0_[2]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I4 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I5 => \i2c_opcode_reg_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_3_n_0
    );
sda_out_tristate_oe_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAFFAB"
    )
        port map (
      I0 => i2c_start_flag_reg_n_0,
      I1 => i2c_write_opcode_flag_reg_n_0,
      I2 => i2c_write_ctrl_addr_flag_reg_n_0,
      I3 => \i2c_shift_reg_counter[0]_i_2_n_0\,
      I4 => i2c_write_data_flag_reg_n_0,
      I5 => i2c_ack_flag_reg_n_0,
      O => sda_out_tristate_oe_i_4_n_0
    );
sda_out_tristate_oe_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => sda_out_tristate_oe_i_7_n_0,
      I1 => sda_out_tristate_oe_i_8_n_0,
      I2 => sda_out_tristate_oe_i_9_n_0,
      I3 => i2c_write_data_flag_reg_n_0,
      I4 => i2c_write_stop_flag,
      O => sda_out_tristate_oe_i_5_n_0
    );
sda_out_tristate_oe_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAB02A8"
    )
        port map (
      I0 => sda_out_tristate_oe_i_10_n_0,
      I1 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      I4 => sda_out_tristate_oe_i_11_n_0,
      O => sda_out_tristate_oe_i_6_n_0
    );
sda_out_tristate_oe_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_data_reg_reg_n_0_[0]\,
      I1 => \i2c_data_reg_reg_n_0_[1]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \i2c_data_reg_reg_n_0_[2]\,
      I5 => \i2c_data_reg_reg_n_0_[3]\,
      O => sda_out_tristate_oe_i_7_n_0
    );
sda_out_tristate_oe_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I1 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[2]\,
      O => sda_out_tristate_oe_i_8_n_0
    );
sda_out_tristate_oe_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \i2c_data_reg_reg_n_0_[4]\,
      I1 => \i2c_data_reg_reg_n_0_[5]\,
      I2 => \i2c_shift_reg_counter_reg_n_0_[0]\,
      I3 => \i2c_shift_reg_counter_reg_n_0_[1]\,
      I4 => \i2c_data_reg_reg_n_0_[6]\,
      I5 => \i2c_data_reg_reg_n_0_[7]\,
      O => sda_out_tristate_oe_i_9_n_0
    );
sda_out_tristate_oe_reg: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^i2c_clk\,
      CE => '1',
      D => sda_out_tristate_oe_i_1_n_0,
      PRE => \^rstn_0\,
      Q => sda_out_tristate_oe_reg_n_0
    );
sda_out_tristate_oe_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_out_tristate_oe_i_5_n_0,
      I1 => sda_out_tristate_oe_i_6_n_0,
      O => sda_out_tristate_oe_reg_i_2_n_0,
      S => i2c_write_ctrl_addr_flag_reg_n_0
    );
sda_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F004FFF40004000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \i2c_data_reg[7]_i_3_n_0\,
      I2 => sda_write_i_2_n_0,
      I3 => i2c_write_tracker,
      I4 => i2c_state112_out,
      I5 => sda_write_reg_n_0,
      O => sda_write_i_1_n_0
    );
sda_write_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000001"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(4),
      O => sda_write_i_2_n_0
    );
sda_write_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => axi_gpio_in_reg2(31),
      O => i2c_state112_out
    );
sda_write_reg: unisim.vcomponents.FDCE
     port map (
      C => \^i2c_clk\,
      CE => '1',
      CLR => \^rstn_0\,
      D => sda_write_i_1_n_0,
      Q => sda_write_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_expander_0_1 is
  port (
    clk_in : in STD_LOGIC;
    rstn : in STD_LOGIC;
    axi_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_i2c_expander_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_i2c_expander_0_1 : entity is "system_i2c_expander_0_1,i2c_expander,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_i2c_expander_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_i2c_expander_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_i2c_expander_0_1 : entity is "i2c_expander,Vivado 2020.2";
end system_i2c_expander_0_1;

architecture STRUCTURE of system_i2c_expander_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal U0_n_1 : STD_LOGIC;
  signal U0_n_2 : STD_LOGIC;
  signal i2c_clk : STD_LOGIC;
  signal sda_INST_0_i_2_n_0 : STD_LOGIC;
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
  axi_gpio_out(15) <= \<const0>\;
  axi_gpio_out(14) <= \<const0>\;
  axi_gpio_out(13) <= \<const0>\;
  axi_gpio_out(12) <= \<const0>\;
  axi_gpio_out(11) <= \<const0>\;
  axi_gpio_out(10) <= \<const0>\;
  axi_gpio_out(9) <= \<const0>\;
  axi_gpio_out(8) <= \<const0>\;
  axi_gpio_out(7) <= \<const0>\;
  axi_gpio_out(6) <= \<const0>\;
  axi_gpio_out(5) <= \<const0>\;
  axi_gpio_out(4) <= \<const0>\;
  axi_gpio_out(3) <= \<const0>\;
  axi_gpio_out(2) <= \<const0>\;
  axi_gpio_out(1) <= \<const0>\;
  axi_gpio_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_i2c_expander_0_1_i2c_expander
     port map (
      axi_gpio_in(18 downto 16) => axi_gpio_in(31 downto 29),
      axi_gpio_in(15 downto 0) => axi_gpio_in(15 downto 0),
      clk_in => clk_in,
      i2c_clk => i2c_clk,
      i2c_start_flag_reg_0 => U0_n_2,
      rstn => rstn,
      rstn_0 => U0_n_1,
      scl => scl,
      sda => sda,
      sda_INST_0_i_2 => sda_INST_0_i_2_n_0
    );
sda_INST_0_i_2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i2c_clk,
      CE => '1',
      D => U0_n_2,
      PRE => U0_n_1,
      Q => sda_INST_0_i_2_n_0
    );
end STRUCTURE;
