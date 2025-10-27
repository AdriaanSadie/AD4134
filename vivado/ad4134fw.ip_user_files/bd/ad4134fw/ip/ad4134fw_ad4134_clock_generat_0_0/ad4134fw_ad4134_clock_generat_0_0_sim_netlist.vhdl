-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Oct 25 15:09:26 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_clock_generat_0_0/ad4134fw_ad4134_clock_generat_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_ad4134_clock_generat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_clock_generat_0_0_ad4134_clock_generator is
  port (
    spi_clk : out STD_LOGIC;
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_ad4134_clock_generat_0_0_ad4134_clock_generator : entity is "ad4134_clock_generator";
end ad4134fw_ad4134_clock_generat_0_0_ad4134_clock_generator;

architecture STRUCTURE of ad4134fw_ad4134_clock_generat_0_0_ad4134_clock_generator is
  signal \^spi_clk\ : STD_LOGIC;
  signal spi_clk_i_i_1_n_0 : STD_LOGIC;
  signal spi_clk_i_i_2_n_0 : STD_LOGIC;
  signal spi_clk_i_i_3_n_0 : STD_LOGIC;
  signal spi_divide : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \spi_divide[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_divide[3]_i_2_n_0\ : STD_LOGIC;
  signal spi_divide_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of spi_clk_i_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of spi_clk_i_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_divide[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_divide[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_divide[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_divide[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_divide[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_divide[6]_i_1\ : label is "soft_lutpair2";
begin
  spi_clk <= \^spi_clk\;
spi_clk_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => spi_divide(6),
      I1 => spi_divide(5),
      I2 => spi_divide(4),
      I3 => spi_clk_i_i_3_n_0,
      I4 => \^spi_clk\,
      O => spi_clk_i_i_1_n_0
    );
spi_clk_i_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => spi_clk_i_i_2_n_0
    );
spi_clk_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => spi_divide(1),
      I1 => spi_divide(0),
      I2 => spi_divide(3),
      I3 => spi_divide(2),
      O => spi_clk_i_i_3_n_0
    );
spi_clk_i_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => spi_clk_i_i_2_n_0,
      D => spi_clk_i_i_1_n_0,
      Q => \^spi_clk\
    );
\spi_divide[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_divide(0),
      O => spi_divide_0(0)
    );
\spi_divide[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => spi_divide(0),
      I1 => spi_divide(1),
      O => \spi_divide[1]_i_1_n_0\
    );
\spi_divide[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A4F0A5F0A4F0A4"
    )
        port map (
      I0 => spi_divide(0),
      I1 => \spi_divide[3]_i_2_n_0\,
      I2 => spi_divide(2),
      I3 => spi_divide(1),
      I4 => spi_divide(4),
      I5 => spi_divide(3),
      O => spi_divide_0(2)
    );
\spi_divide[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFC0002"
    )
        port map (
      I0 => \spi_divide[3]_i_2_n_0\,
      I1 => spi_divide(1),
      I2 => spi_divide(0),
      I3 => spi_divide(2),
      I4 => spi_divide(3),
      O => spi_divide_0(3)
    );
\spi_divide[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spi_divide(6),
      I1 => spi_divide(5),
      I2 => spi_divide(4),
      O => \spi_divide[3]_i_2_n_0\
    );
\spi_divide[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6664"
    )
        port map (
      I0 => spi_clk_i_i_3_n_0,
      I1 => spi_divide(4),
      I2 => spi_divide(5),
      I3 => spi_divide(6),
      O => spi_divide_0(4)
    );
\spi_divide[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => spi_divide(5),
      I1 => spi_divide(4),
      I2 => spi_divide(1),
      I3 => spi_divide(0),
      I4 => spi_divide(3),
      I5 => spi_divide(2),
      O => spi_divide_0(5)
    );
\spi_divide[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => spi_divide(6),
      I1 => spi_divide(5),
      I2 => spi_clk_i_i_3_n_0,
      I3 => spi_divide(4),
      O => spi_divide_0(6)
    );
\spi_divide_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_divide_0(0),
      PRE => spi_clk_i_i_2_n_0,
      Q => spi_divide(0)
    );
\spi_divide_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \spi_divide[1]_i_1_n_0\,
      PRE => spi_clk_i_i_2_n_0,
      Q => spi_divide(1)
    );
\spi_divide_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => spi_clk_i_i_2_n_0,
      D => spi_divide_0(2),
      Q => spi_divide(2)
    );
\spi_divide_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => spi_clk_i_i_2_n_0,
      D => spi_divide_0(3),
      Q => spi_divide(3)
    );
\spi_divide_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => spi_clk_i_i_2_n_0,
      D => spi_divide_0(4),
      Q => spi_divide(4)
    );
\spi_divide_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_divide_0(5),
      PRE => spi_clk_i_i_2_n_0,
      Q => spi_divide(5)
    );
\spi_divide_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_divide_0(6),
      PRE => spi_clk_i_i_2_n_0,
      Q => spi_divide(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_clock_generat_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_clk_en : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_ad4134_clock_generat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_clock_generat_0_0 : entity is "ad4134fw_ad4134_clock_generat_0_0,ad4134_clock_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ad4134fw_ad4134_clock_generat_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ad4134fw_ad4134_clock_generat_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ad4134fw_ad4134_clock_generat_0_0 : entity is "ad4134_clock_generator,Vivado 2024.2";
end ad4134fw_ad4134_clock_generat_0_0;

architecture STRUCTURE of ad4134fw_ad4134_clock_generat_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_MODE of spi_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ad4134fw_ad4134_clock_generat_0_0_spi_clk, INSERT_VIP 0";
begin
inst: entity work.ad4134fw_ad4134_clock_generat_0_0_ad4134_clock_generator
     port map (
      clk => clk,
      rstn => rstn,
      spi_clk => spi_clk
    );
end STRUCTURE;
