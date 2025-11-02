-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Oct 30 23:04:23 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_bram_writer_0_0/ad4134fw_bram_writer_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_bram_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_bram_writer_0_0_bram_writer is
  port (
    addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    wea : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_bram_writer_0_0_bram_writer : entity is "bram_writer";
end ad4134fw_bram_writer_0_0_bram_writer;

architecture STRUCTURE of ad4134fw_bram_writer_0_0_bram_writer is
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \^addra\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \^dia\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^done\ : STD_LOGIC;
  signal in2 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal in4 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal start_r1 : STD_LOGIC;
  signal start_r1_i_1_n_0 : STD_LOGIC;
  signal start_r2 : STD_LOGIC;
  signal start_r2_i_1_n_0 : STD_LOGIC;
  signal \^wea\ : STD_LOGIC;
  signal wea_i_1_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,write:010,finished:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,write:010,finished:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,write:010,finished:100,";
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_cnt[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_cnt[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_cnt[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_cnt[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_cnt[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_cnt[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_cnt[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_cnt[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_cnt[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_cnt[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_cnt[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_cnt[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_cnt[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_cnt[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_cnt[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_cnt[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_cnt[25]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_cnt[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_cnt[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_cnt[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_cnt[29]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_cnt[30]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_cnt[31]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_cnt[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_cnt[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_cnt[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_cnt[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_cnt[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_cnt[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_cnt[9]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of start_r1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of start_r2_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of wea_i_1 : label is "soft_lutpair1";
begin
  addra(10 downto 0) <= \^addra\(10 downto 0);
  dia(31 downto 0) <= \^dia\(31 downto 0);
  done <= \^done\;
  wea <= \^wea\;
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \^addra\(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state[2]_i_3_n_0\,
      I4 => \FSM_onehot_state[2]_i_4_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addra\(3),
      I1 => \^addra\(4),
      I2 => \^addra\(1),
      I3 => \^addra\(2),
      I4 => \^addra\(6),
      I5 => \^addra\(5),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^addra\(9),
      I1 => \^addra\(10),
      I2 => \^addra\(7),
      I3 => \^addra\(8),
      I4 => \addr_cnt_reg_n_0_[12]\,
      I5 => \addr_cnt_reg_n_0_[11]\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_r1,
      I2 => start_r2,
      I3 => \^done\,
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      D => \^done\,
      PRE => \addr_cnt[10]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \^done\
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^addra\(0),
      O => \addr_cnt[0]_i_1_n_0\
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => \^done\,
      I1 => start_r2,
      I2 => start_r1,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(10),
      O => \addr_cnt[10]_i_2_n_0\
    );
\addr_cnt[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \addr_cnt[10]_i_3_n_0\
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(11),
      O => \addr_cnt[11]_i_1_n_0\
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(12),
      O => \addr_cnt[12]_i_1_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \^done\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => in2(1),
      O => \addr_cnt[1]_i_1_n_0\
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(2),
      O => \addr_cnt[2]_i_1_n_0\
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(3),
      O => \addr_cnt[3]_i_1_n_0\
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(4),
      O => \addr_cnt[4]_i_1_n_0\
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(5),
      O => \addr_cnt[5]_i_1_n_0\
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(6),
      O => \addr_cnt[6]_i_1_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(7),
      O => \addr_cnt[7]_i_1_n_0\
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(8),
      O => \addr_cnt[8]_i_1_n_0\
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in2(9),
      O => \addr_cnt[9]_i_1_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[0]_i_1_n_0\,
      Q => \^addra\(0)
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[10]_i_2_n_0\,
      Q => \^addra\(10)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[11]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[11]\
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[12]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[12]\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      D => \addr_cnt[1]_i_1_n_0\,
      PRE => \addr_cnt[10]_i_3_n_0\,
      Q => \^addra\(1)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[2]_i_1_n_0\,
      Q => \^addra\(2)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[3]_i_1_n_0\,
      Q => \^addra\(3)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[4]_i_1_n_0\,
      Q => \^addra\(4)
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[5]_i_1_n_0\,
      Q => \^addra\(5)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[6]_i_1_n_0\,
      Q => \^addra\(6)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[7]_i_1_n_0\,
      Q => \^addra\(7)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[8]_i_1_n_0\,
      Q => \^addra\(8)
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[9]_i_1_n_0\,
      Q => \^addra\(9)
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^dia\(0),
      O => \data_cnt[0]_i_1_n_0\
    );
\data_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(10),
      O => \data_cnt[10]_i_1_n_0\
    );
\data_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(11),
      O => \data_cnt[11]_i_1_n_0\
    );
\data_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(12),
      O => \data_cnt[12]_i_1_n_0\
    );
\data_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(13),
      O => \data_cnt[13]_i_1_n_0\
    );
\data_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(14),
      O => \data_cnt[14]_i_1_n_0\
    );
\data_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(15),
      O => \data_cnt[15]_i_1_n_0\
    );
\data_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(16),
      O => \data_cnt[16]_i_1_n_0\
    );
\data_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(17),
      O => \data_cnt[17]_i_1_n_0\
    );
\data_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(18),
      O => \data_cnt[18]_i_1_n_0\
    );
\data_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(19),
      O => \data_cnt[19]_i_1_n_0\
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(1),
      O => \data_cnt[1]_i_1_n_0\
    );
\data_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(20),
      O => \data_cnt[20]_i_1_n_0\
    );
\data_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(21),
      O => \data_cnt[21]_i_1_n_0\
    );
\data_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(22),
      O => \data_cnt[22]_i_1_n_0\
    );
\data_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(23),
      O => \data_cnt[23]_i_1_n_0\
    );
\data_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(24),
      O => \data_cnt[24]_i_1_n_0\
    );
\data_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(25),
      O => \data_cnt[25]_i_1_n_0\
    );
\data_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(26),
      O => \data_cnt[26]_i_1_n_0\
    );
\data_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(27),
      O => \data_cnt[27]_i_1_n_0\
    );
\data_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(28),
      O => \data_cnt[28]_i_1_n_0\
    );
\data_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(29),
      O => \data_cnt[29]_i_1_n_0\
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(2),
      O => \data_cnt[2]_i_1_n_0\
    );
\data_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(30),
      O => \data_cnt[30]_i_1_n_0\
    );
\data_cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(31),
      O => \data_cnt[31]_i_1_n_0\
    );
\data_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(3),
      O => \data_cnt[3]_i_1_n_0\
    );
\data_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(4),
      O => \data_cnt[4]_i_1_n_0\
    );
\data_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(5),
      O => \data_cnt[5]_i_1_n_0\
    );
\data_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(6),
      O => \data_cnt[6]_i_1_n_0\
    );
\data_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(7),
      O => \data_cnt[7]_i_1_n_0\
    );
\data_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(8),
      O => \data_cnt[8]_i_1_n_0\
    );
\data_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in4(9),
      O => \data_cnt[9]_i_1_n_0\
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[0]_i_1_n_0\,
      Q => \^dia\(0)
    );
\data_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[10]_i_1_n_0\,
      Q => \^dia\(10)
    );
\data_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[11]_i_1_n_0\,
      Q => \^dia\(11)
    );
\data_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[12]_i_1_n_0\,
      Q => \^dia\(12)
    );
\data_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[13]_i_1_n_0\,
      Q => \^dia\(13)
    );
\data_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[14]_i_1_n_0\,
      Q => \^dia\(14)
    );
\data_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[15]_i_1_n_0\,
      Q => \^dia\(15)
    );
\data_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[16]_i_1_n_0\,
      Q => \^dia\(16)
    );
\data_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[17]_i_1_n_0\,
      Q => \^dia\(17)
    );
\data_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[18]_i_1_n_0\,
      Q => \^dia\(18)
    );
\data_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[19]_i_1_n_0\,
      Q => \^dia\(19)
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[1]_i_1_n_0\,
      Q => \^dia\(1)
    );
\data_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[20]_i_1_n_0\,
      Q => \^dia\(20)
    );
\data_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[21]_i_1_n_0\,
      Q => \^dia\(21)
    );
\data_cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[22]_i_1_n_0\,
      Q => \^dia\(22)
    );
\data_cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[23]_i_1_n_0\,
      Q => \^dia\(23)
    );
\data_cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[24]_i_1_n_0\,
      Q => \^dia\(24)
    );
\data_cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[25]_i_1_n_0\,
      Q => \^dia\(25)
    );
\data_cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[26]_i_1_n_0\,
      Q => \^dia\(26)
    );
\data_cnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[27]_i_1_n_0\,
      Q => \^dia\(27)
    );
\data_cnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[28]_i_1_n_0\,
      Q => \^dia\(28)
    );
\data_cnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[29]_i_1_n_0\,
      Q => \^dia\(29)
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[2]_i_1_n_0\,
      Q => \^dia\(2)
    );
\data_cnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[30]_i_1_n_0\,
      Q => \^dia\(30)
    );
\data_cnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[31]_i_1_n_0\,
      Q => \^dia\(31)
    );
\data_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[3]_i_1_n_0\,
      Q => \^dia\(3)
    );
\data_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[4]_i_1_n_0\,
      Q => \^dia\(4)
    );
\data_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[5]_i_1_n_0\,
      Q => \^dia\(5)
    );
\data_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[6]_i_1_n_0\,
      Q => \^dia\(6)
    );
\data_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[7]_i_1_n_0\,
      Q => \^dia\(7)
    );
\data_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[8]_i_1_n_0\,
      Q => \^dia\(8)
    );
\data_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[10]_i_1_n_0\,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \data_cnt[9]_i_1_n_0\,
      Q => \^dia\(9)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \^addra\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in2(4 downto 1),
      S(3 downto 0) => \^addra\(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in2(8 downto 5),
      S(3 downto 0) => \^addra\(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in2(12 downto 9),
      S(3) => \addr_cnt_reg_n_0_[12]\,
      S(2) => \addr_cnt_reg_n_0_[11]\,
      S(1 downto 0) => \^addra\(10 downto 9)
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \^dia\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(4 downto 1),
      S(3 downto 0) => \^dia\(4 downto 1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(8 downto 5),
      S(3 downto 0) => \^dia\(8 downto 5)
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(12 downto 9),
      S(3 downto 0) => \^dia\(12 downto 9)
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(16 downto 13),
      S(3 downto 0) => \^dia\(16 downto 13)
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(20 downto 17),
      S(3 downto 0) => \^dia\(20 downto 17)
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(24 downto 21),
      S(3 downto 0) => \^dia\(24 downto 21)
    );
\plusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(28 downto 25),
      S(3 downto 0) => \^dia\(28 downto 25)
    );
\plusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in4(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^dia\(31 downto 29)
    );
start_r1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => start,
      I1 => reset_n,
      I2 => start_r1,
      O => start_r1_i_1_n_0
    );
start_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_r1_i_1_n_0,
      Q => start_r1,
      R => '0'
    );
start_r2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => start_r1,
      I1 => reset_n,
      I2 => start_r2,
      O => start_r2_i_1_n_0
    );
start_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_r2_i_1_n_0,
      Q => start_r2,
      R => '0'
    );
wea_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => reset_n,
      I2 => \^wea\,
      O => wea_i_1_n_0
    );
wea_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wea_i_1_n_0,
      Q => \^wea\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_bram_writer_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    start : in STD_LOGIC;
    addra : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : out STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_bram_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_bram_writer_0_0 : entity is "ad4134fw_bram_writer_0_0,bram_writer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_bram_writer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_bram_writer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_bram_writer_0_0 : entity is "bram_writer,Vivado 2024.2";
end ad4134fw_bram_writer_0_0;

architecture STRUCTURE of ad4134fw_bram_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addra\ : STD_LOGIC_VECTOR ( 12 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addra(12 downto 2) <= \^addra\(12 downto 2);
  addra(1) <= \<const0>\;
  addra(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ad4134fw_bram_writer_0_0_bram_writer
     port map (
      addra(10 downto 0) => \^addra\(12 downto 2),
      clk => clk,
      dia(31 downto 0) => dia(31 downto 0),
      done => done,
      reset_n => reset_n,
      start => start,
      wea => wea
    );
end STRUCTURE;
