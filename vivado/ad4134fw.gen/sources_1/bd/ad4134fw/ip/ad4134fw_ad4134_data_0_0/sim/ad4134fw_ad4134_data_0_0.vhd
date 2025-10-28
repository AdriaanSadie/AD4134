-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:ad4134_data:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ad4134fw_ad4134_data_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    data_in0 : IN STD_LOGIC;
    data_in1 : IN STD_LOGIC;
    data_in2 : IN STD_LOGIC;
    data_in3 : IN STD_LOGIC;
    dclk_out : OUT STD_LOGIC;
    odr_out : OUT STD_LOGIC;
    data_out0 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    data_out1 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    data_out2 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    data_out3 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    data_rdy : OUT STD_LOGIC
  );
END ad4134fw_ad4134_data_0_0;

ARCHITECTURE ad4134fw_ad4134_data_0_0_arch OF ad4134fw_ad4134_data_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ad4134fw_ad4134_data_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ad4134_data IS
    GENERIC (
      DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst_n : IN STD_LOGIC;
      data_in0 : IN STD_LOGIC;
      data_in1 : IN STD_LOGIC;
      data_in2 : IN STD_LOGIC;
      data_in3 : IN STD_LOGIC;
      dclk_out : OUT STD_LOGIC;
      odr_out : OUT STD_LOGIC;
      data_out0 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      data_out1 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      data_out2 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      data_out3 : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      data_rdy : OUT STD_LOGIC
    );
  END COMPONENT ad4134_data;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF clk: SIGNAL IS "slave clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Processing_Subsystem/clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_n RST";
  ATTRIBUTE X_INTERFACE_MODE OF rst_n: SIGNAL IS "slave rst_n";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n: SIGNAL IS "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : ad4134_data
    GENERIC MAP (
      DATA_WIDTH => 24
    )
    PORT MAP (
      clk => clk,
      rst_n => rst_n,
      data_in0 => data_in0,
      data_in1 => data_in1,
      data_in2 => data_in2,
      data_in3 => data_in3,
      dclk_out => dclk_out,
      odr_out => odr_out,
      data_out0 => data_out0,
      data_out1 => data_out1,
      data_out2 => data_out2,
      data_out3 => data_out3,
      data_rdy => data_rdy
    );
END ad4134fw_ad4134_data_0_0_arch;
