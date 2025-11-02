-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov  2 21:33:54 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_to_bram_0_0/ad4134fw_ad4134_to_bram_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_ad4134_to_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram is
  port (
    addra : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 23 downto 0 );
    wea : out STD_LOGIC;
    clk : in STD_LOGIC;
    data_rdy : in STD_LOGIC;
    data_in0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram : entity is "ad4134_to_bram";
end ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram;

architecture STRUCTURE of ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram is
  signal \addr_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal addr_cnt_shifted : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \addra[14]_i_2_n_0\ : STD_LOGIC;
  signal \addra[14]_i_3_n_0\ : STD_LOGIC;
  signal \addra[14]_i_4_n_0\ : STD_LOGIC;
  signal data_rdy_r1 : STD_LOGIC;
  signal data_rdy_r2 : STD_LOGIC;
  signal dia0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 12 downto 0 );
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
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wea\ : STD_LOGIC;
  signal wea_i_1_n_0 : STD_LOGIC;
  signal wea_i_2_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "finished_s:10,idle_s:00,write_s:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "finished_s:10,idle_s:00,write_s:01";
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addra[14]_i_2\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
begin
  wea <= \^wea\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => data_rdy_r2,
      I3 => data_rdy_r1,
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => wea_i_2_n_0,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => wea_i_2_n_0,
      D => \state__0\(1),
      Q => state(1)
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(2),
      O => plusOp(0)
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FE0000"
    )
        port map (
      I0 => \addra[14]_i_2_n_0\,
      I1 => \addra[14]_i_3_n_0\,
      I2 => \addra[14]_i_4_n_0\,
      I3 => state(1),
      I4 => state(0),
      O => \addr_cnt[12]_i_1_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      D => plusOp(0),
      PRE => wea_i_2_n_0,
      Q => p_1_in(2)
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(10),
      Q => p_1_in(12)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(11),
      Q => p_1_in(13)
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(12),
      Q => p_1_in(14)
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(1),
      Q => p_1_in(3)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(2),
      Q => p_1_in(4)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(3),
      Q => p_1_in(5)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(4),
      Q => p_1_in(6)
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(5),
      Q => p_1_in(7)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(6),
      Q => p_1_in(8)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(7),
      Q => p_1_in(9)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(8),
      Q => p_1_in(10)
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => plusOp(9),
      Q => p_1_in(11)
    );
\addr_cnt_shifted_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(10),
      Q => addr_cnt_shifted(10)
    );
\addr_cnt_shifted_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(11),
      Q => addr_cnt_shifted(11)
    );
\addr_cnt_shifted_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(12),
      Q => addr_cnt_shifted(12)
    );
\addr_cnt_shifted_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(13),
      Q => addr_cnt_shifted(13)
    );
\addr_cnt_shifted_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(14),
      Q => addr_cnt_shifted(14)
    );
\addr_cnt_shifted_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(2),
      Q => addr_cnt_shifted(2)
    );
\addr_cnt_shifted_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(3),
      Q => addr_cnt_shifted(3)
    );
\addr_cnt_shifted_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(4),
      Q => addr_cnt_shifted(4)
    );
\addr_cnt_shifted_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(5),
      Q => addr_cnt_shifted(5)
    );
\addr_cnt_shifted_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(6),
      Q => addr_cnt_shifted(6)
    );
\addr_cnt_shifted_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(7),
      Q => addr_cnt_shifted(7)
    );
\addr_cnt_shifted_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(8),
      Q => addr_cnt_shifted(8)
    );
\addr_cnt_shifted_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_cnt[12]_i_1_n_0\,
      CLR => wea_i_2_n_0,
      D => p_1_in(9),
      Q => addr_cnt_shifted(9)
    );
\addra[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE000000"
    )
        port map (
      I0 => \addra[14]_i_2_n_0\,
      I1 => \addra[14]_i_3_n_0\,
      I2 => \addra[14]_i_4_n_0\,
      I3 => rst_n,
      I4 => state(0),
      I5 => state(1),
      O => dia0
    );
\addra[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(13),
      I2 => p_1_in(14),
      I3 => p_1_in(4),
      I4 => p_1_in(3),
      O => \addra[14]_i_2_n_0\
    );
\addra[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_1_in(6),
      I1 => p_1_in(5),
      I2 => p_1_in(8),
      I3 => p_1_in(7),
      O => \addra[14]_i_3_n_0\
    );
\addra[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_1_in(10),
      I1 => p_1_in(9),
      I2 => p_1_in(12),
      I3 => p_1_in(11),
      O => \addra[14]_i_4_n_0\
    );
\addra_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(10),
      Q => addra(8),
      R => '0'
    );
\addra_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(11),
      Q => addra(9),
      R => '0'
    );
\addra_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(12),
      Q => addra(10),
      R => '0'
    );
\addra_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(13),
      Q => addra(11),
      R => '0'
    );
\addra_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(14),
      Q => addra(12),
      R => '0'
    );
\addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(2),
      Q => addra(0),
      R => '0'
    );
\addra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(3),
      Q => addra(1),
      R => '0'
    );
\addra_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(4),
      Q => addra(2),
      R => '0'
    );
\addra_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(5),
      Q => addra(3),
      R => '0'
    );
\addra_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(6),
      Q => addra(4),
      R => '0'
    );
\addra_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(7),
      Q => addra(5),
      R => '0'
    );
\addra_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(8),
      Q => addra(6),
      R => '0'
    );
\addra_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => addr_cnt_shifted(9),
      Q => addra(7),
      R => '0'
    );
data_rdy_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => wea_i_2_n_0,
      D => data_rdy,
      Q => data_rdy_r1
    );
data_rdy_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => wea_i_2_n_0,
      D => data_rdy_r1,
      Q => data_rdy_r2
    );
\dia_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(0),
      Q => dia(0),
      R => '0'
    );
\dia_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(10),
      Q => dia(10),
      R => '0'
    );
\dia_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(11),
      Q => dia(11),
      R => '0'
    );
\dia_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(12),
      Q => dia(12),
      R => '0'
    );
\dia_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(13),
      Q => dia(13),
      R => '0'
    );
\dia_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(14),
      Q => dia(14),
      R => '0'
    );
\dia_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(15),
      Q => dia(15),
      R => '0'
    );
\dia_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(16),
      Q => dia(16),
      R => '0'
    );
\dia_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(17),
      Q => dia(17),
      R => '0'
    );
\dia_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(18),
      Q => dia(18),
      R => '0'
    );
\dia_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(19),
      Q => dia(19),
      R => '0'
    );
\dia_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(1),
      Q => dia(1),
      R => '0'
    );
\dia_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(20),
      Q => dia(20),
      R => '0'
    );
\dia_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(21),
      Q => dia(21),
      R => '0'
    );
\dia_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(22),
      Q => dia(22),
      R => '0'
    );
\dia_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(23),
      Q => dia(23),
      R => '0'
    );
\dia_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(2),
      Q => dia(2),
      R => '0'
    );
\dia_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(3),
      Q => dia(3),
      R => '0'
    );
\dia_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(4),
      Q => dia(4),
      R => '0'
    );
\dia_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(5),
      Q => dia(5),
      R => '0'
    );
\dia_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(6),
      Q => dia(6),
      R => '0'
    );
\dia_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(7),
      Q => dia(7),
      R => '0'
    );
\dia_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(8),
      Q => dia(8),
      R => '0'
    );
\dia_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dia0,
      D => data_in0(9),
      Q => dia(9),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => p_1_in(2),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => p_1_in(6 downto 3)
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
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => p_1_in(10 downto 7)
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
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => p_1_in(14 downto 11)
    );
wea_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAA80000AAA8"
    )
        port map (
      I0 => state(1),
      I1 => \addra[14]_i_4_n_0\,
      I2 => \addra[14]_i_3_n_0\,
      I3 => \addra[14]_i_2_n_0\,
      I4 => state(0),
      I5 => \^wea\,
      O => wea_i_1_n_0
    );
wea_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => wea_i_2_n_0
    );
wea_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => wea_i_2_n_0,
      D => wea_i_1_n_0,
      Q => \^wea\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_to_bram_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy : in STD_LOGIC;
    addra : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : out STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_ad4134_to_bram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_to_bram_0_0 : entity is "ad4134fw_ad4134_to_bram_0_0,ad4134_to_bram,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_to_bram_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_to_bram_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_ad4134_to_bram_0_0 : entity is "ad4134_to_bram,Vivado 2024.2";
end ad4134fw_ad4134_to_bram_0_0;

architecture STRUCTURE of ad4134fw_ad4134_to_bram_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addra\ : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \^dia\ : STD_LOGIC_VECTOR ( 23 downto 0 );
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
  addra(14 downto 2) <= \^addra\(14 downto 2);
  addra(1) <= \<const0>\;
  addra(0) <= \<const0>\;
  dia(31) <= \<const0>\;
  dia(30) <= \<const0>\;
  dia(29) <= \<const0>\;
  dia(28) <= \<const0>\;
  dia(27) <= \<const0>\;
  dia(26) <= \<const0>\;
  dia(25) <= \<const0>\;
  dia(24) <= \<const0>\;
  dia(23 downto 0) <= \^dia\(23 downto 0);
  done <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ad4134fw_ad4134_to_bram_0_0_ad4134_to_bram
     port map (
      addra(12 downto 0) => \^addra\(14 downto 2),
      clk => clk,
      data_in0(23 downto 0) => data_in0(23 downto 0),
      data_rdy => data_rdy,
      dia(23 downto 0) => \^dia\(23 downto 0),
      rst_n => rst_n,
      wea => wea
    );
end STRUCTURE;
