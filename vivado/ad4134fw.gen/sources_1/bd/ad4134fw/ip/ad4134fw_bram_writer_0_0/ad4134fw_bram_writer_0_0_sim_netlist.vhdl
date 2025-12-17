-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 16 21:39:04 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_bram_writer_0_0/ad4134fw_bram_writer_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_bram_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_bram_writer_0_0_bram_writer is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
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
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal addr_cnt : STD_LOGIC;
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal start_r1 : STD_LOGIC;
  signal start_r2 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,write:010,finished:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,write:010,finished:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,write:010,finished:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_1\ : label is "soft_lutpair1";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  done <= \^done\;
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => \addr_cnt[10]_i_4_n_0\,
      I1 => \addr_cnt_reg_n_0_[11]\,
      I2 => \^q\(10),
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_r1,
      I2 => start_r2,
      I3 => \^done\,
      O => \FSM_onehot_state[2]_i_2_n_0\
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
      I1 => \^q\(0),
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
      O => addr_cnt
    );
\addr_cnt[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(10),
      I1 => \addr_cnt[10]_i_4_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
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
\addr_cnt[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \addr_cnt[9]_i_2_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(9),
      O => \addr_cnt[10]_i_4_n_0\
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[11]\,
      I1 => \addr_cnt[10]_i_4_n_0\,
      I2 => \^q\(10),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[11]_i_1_n_0\
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[11]\,
      I2 => \^q\(10),
      I3 => \addr_cnt[10]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[12]_i_1_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^done\,
      O => \addr_cnt[1]_i_1_n_0\
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[2]_i_1_n_0\
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[3]_i_1_n_0\
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[4]_i_1_n_0\
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(5),
      I1 => \addr_cnt[5]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[5]_i_1_n_0\
    );
\addr_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \addr_cnt[5]_i_2_n_0\
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(6),
      I1 => \addr_cnt[9]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[6]_i_1_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \addr_cnt[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[7]_i_1_n_0\
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \addr_cnt[9]_i_2_n_0\,
      I3 => \^q\(7),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[8]_i_1_n_0\
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \addr_cnt[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_cnt[9]_i_1_n_0\
    );
\addr_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \addr_cnt[9]_i_2_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[10]_i_2_n_0\,
      Q => \^q\(10)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
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
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[12]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[12]\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[7]_i_1_n_0\,
      Q => \^q\(7)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[8]_i_1_n_0\,
      Q => \^q\(8)
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      CLR => \addr_cnt[10]_i_3_n_0\,
      D => \addr_cnt[9]_i_1_n_0\,
      Q => \^q\(9)
    );
start_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => start,
      Q => start_r1,
      R => '0'
    );
start_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => start_r1,
      Q => start_r2,
      R => '0'
    );
wea_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset_n,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => wea,
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
  signal \<const1>\ : STD_LOGIC;
  signal \^addra\ : STD_LOGIC_VECTOR ( 12 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addra(12 downto 2) <= \^addra\(12 downto 2);
  addra(1) <= \<const0>\;
  addra(0) <= \<const0>\;
  dia(31) <= \<const1>\;
  dia(30) <= \<const1>\;
  dia(29) <= \<const0>\;
  dia(28) <= \<const1>\;
  dia(27) <= \<const1>\;
  dia(26) <= \<const1>\;
  dia(25) <= \<const1>\;
  dia(24) <= \<const0>\;
  dia(23) <= \<const1>\;
  dia(22) <= \<const0>\;
  dia(21) <= \<const1>\;
  dia(20) <= \<const0>\;
  dia(19) <= \<const1>\;
  dia(18) <= \<const1>\;
  dia(17) <= \<const0>\;
  dia(16) <= \<const1>\;
  dia(15) <= \<const1>\;
  dia(14) <= \<const0>\;
  dia(13) <= \<const1>\;
  dia(12) <= \<const1>\;
  dia(11) <= \<const1>\;
  dia(10) <= \<const1>\;
  dia(9) <= \<const1>\;
  dia(8) <= \<const0>\;
  dia(7) <= \<const1>\;
  dia(6) <= \<const1>\;
  dia(5) <= \<const1>\;
  dia(4) <= \<const0>\;
  dia(3) <= \<const1>\;
  dia(2) <= \<const1>\;
  dia(1) <= \<const1>\;
  dia(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ad4134fw_bram_writer_0_0_bram_writer
     port map (
      Q(10 downto 0) => \^addra\(12 downto 2),
      clk => clk,
      done => done,
      reset_n => reset_n,
      start => start,
      wea => wea
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
