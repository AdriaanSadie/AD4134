-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:util_ds_buf:2.1
-- IP Revision: 23

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_util_ds_buf_2_0 IS
  PORT (
    OBUF_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    OBUF_DS_P : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    OBUF_DS_N : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END system_util_ds_buf_2_0;

ARCHITECTURE system_util_ds_buf_2_0_arch OF system_util_ds_buf_2_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_util_ds_buf_2_0_arch: ARCHITECTURE IS "yes";
  COMPONENT util_ds_buf IS
    GENERIC (
      C_BUF_TYPE : STRING;
      C_SIZE : INTEGER;
      C_BUFGCE_DIV : INTEGER;
      C_BUFG_GT_SYNC : INTEGER;
      C_SIM_DEVICE : STRING;
      C_OBUFDS_GTE5_ADV : STD_LOGIC_VECTOR;
      C_REFCLK_ICNTL_TX : STD_LOGIC_VECTOR
    );
    PORT (
      IBUF_DS_P : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUF_DS_N : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUF_DS_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUF_OUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUF_DS_ODIV2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUF_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUF_DS_P : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUF_DS_N : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_DS_P : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_DS_N : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_IO_T : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_IO_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_IO_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IOBUF_IO_IO : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFGCE_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFGCE_CE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFGCE_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFH_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFGCE_CLR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFH_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFHCE_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFHCE_CE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFHCE_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_FABRIC_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_PS_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_ADV_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RXRECCLK_SEL_GTE3_ADV : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      OBUFDS_GTE3_ADV_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_ADV_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RXRECCLK_SEL_GTE4_ADV : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      OBUFDS_GTE4_ADV_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_ADV_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_ADV_RXRECCLKSEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      OBUFDS_GTE5_ADV_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      IBUFDS_GTME5_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTME5_IB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTME5_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_CE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_CEMASK : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_CLR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_CLRMASK : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_GT_DIV : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      IBUFDS_GTM_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTM_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTM_IB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_ADV_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_ADV_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      OBUFDS_GTME5_ADV_CEB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_ADV_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      OBUFDS_GTME5_ADV_RXRECCLKSEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BUFG_GT_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_FABRIC_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      BUFG_PS_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_ADV_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_ADV_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_ADV_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE4_ADV_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE3_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_ADV_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTE5_ADV_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTME5_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTME5_ODIV2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTM_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      IBUFDS_GTM_ODIV2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_ADV_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTM_ADV_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_ADV_O : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      OBUFDS_GTME5_ADV_OB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT util_ds_buf;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_util_ds_buf_2_0_arch: ARCHITECTURE IS "util_ds_buf,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_util_ds_buf_2_0_arch : ARCHITECTURE IS "system_util_ds_buf_2_0,util_ds_buf,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_util_ds_buf_2_0_arch: ARCHITECTURE IS "system_util_ds_buf_2_0,util_ds_buf,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ds_buf,x_ipVersion=2.1,x_ipCoreRevision=23,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BUF_TYPE=OBUFDS,C_SIZE=2,C_BUFGCE_DIV=1,C_BUFG_GT_SYNC=0,C_SIM_DEVICE=VERSAL_AI_CORE_ES1,C_OBUFDS_GTE5_ADV=00,C_REFCLK_ICNTL_TX=00000}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF OBUF_DS_N: SIGNAL IS "XIL_INTERFACENAME OBUF_DS_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_1_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF OBUF_DS_N: SIGNAL IS "xilinx.com:signal:clock:1.0 OBUF_DS_N CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF OBUF_DS_P: SIGNAL IS "XIL_INTERFACENAME OBUF_DS_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_1_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF OBUF_DS_P: SIGNAL IS "xilinx.com:signal:clock:1.0 OBUF_DS_P CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF OBUF_IN: SIGNAL IS "XIL_INTERFACENAME OBUF_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_1_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF OBUF_IN: SIGNAL IS "xilinx.com:signal:clock:1.0 OBUF_IN CLK";
BEGIN
  U0 : util_ds_buf
    GENERIC MAP (
      C_BUF_TYPE => "OBUFDS",
      C_SIZE => 2,
      C_BUFGCE_DIV => 1,
      C_BUFG_GT_SYNC => 0,
      C_SIM_DEVICE => "VERSAL_AI_CORE_ES1",
      C_OBUFDS_GTE5_ADV => B"00",
      C_REFCLK_ICNTL_TX => B"00000"
    )
    PORT MAP (
      IBUF_DS_P => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUF_DS_N => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUF_DS_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUF_IN => OBUF_IN,
      OBUF_DS_P => OBUF_DS_P,
      OBUF_DS_N => OBUF_DS_N,
      IOBUF_IO_T => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IOBUF_IO_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFGCE_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFGCE_CE => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFH_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFGCE_CLR => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFHCE_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFHCE_CE => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_FABRIC_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_PS_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE5_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE5_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE4_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE4_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE3_ADV_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      RXRECCLK_SEL_GTE3_ADV => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      OBUFDS_GTE3_ADV_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE4_ADV_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      RXRECCLK_SEL_GTE4_ADV => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      OBUFDS_GTE4_ADV_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE3_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE3_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE5_ADV_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTE5_ADV_RXRECCLKSEL => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      OBUFDS_GTE5_ADV_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      IBUFDS_GTME5_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUFDS_GTME5_IB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUFDS_GTME5_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_CE => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_CEMASK => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_CLR => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_CLRMASK => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      BUFG_GT_DIV => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      IBUFDS_GTM_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUFDS_GTM_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      IBUFDS_GTM_IB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTME5_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTME5_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTM_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTM_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTM_ADV_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTM_ADV_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      OBUFDS_GTME5_ADV_CEB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      OBUFDS_GTME5_ADV_I => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      OBUFDS_GTME5_ADV_RXRECCLKSEL => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4))
    );
END system_util_ds_buf_2_0_arch;
