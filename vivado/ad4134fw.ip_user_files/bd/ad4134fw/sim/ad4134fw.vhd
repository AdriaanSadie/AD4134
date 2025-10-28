--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Oct 28 21:57:12 2025
--Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
--Command     : generate_target ad4134fw.bd
--Design      : ad4134fw
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LEDS_imp_1273PJO is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    hb_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end LEDS_imp_1273PJO;

architecture STRUCTURE of LEDS_imp_1273PJO is
  component ad4134fw_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ad4134fw_xlslice_0_0;
  component ad4134fw_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ad4134fw_xlslice_1_0;
  component ad4134fw_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_c_counter_binary_0_0;
  component ad4134fw_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_axi_gpio_0_0;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
axi_gpio_0: component ad4134fw_axi_gpio_0_0
     port map (
      gpio_io_o(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => S_AXI_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(8 downto 0) => S_AXI_awaddr(8 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
c_counter_binary_0: component ad4134fw_c_counter_binary_0_0
     port map (
      CLK => s_axi_aclk,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
xlslice_0: component ad4134fw_xlslice_0_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(6 downto 0) => LEDS(6 downto 0)
    );
xlslice_1: component ad4134fw_xlslice_1_0
     port map (
      Din(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      Dout(0) => hb_led(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Processing_Subsystem_imp_12DOFPS is
  port (
    AXI_GPIO_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_GPIO_arready : in STD_LOGIC;
    AXI_GPIO_arvalid : out STD_LOGIC;
    AXI_GPIO_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_GPIO_awready : in STD_LOGIC;
    AXI_GPIO_awvalid : out STD_LOGIC;
    AXI_GPIO_bready : out STD_LOGIC;
    AXI_GPIO_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_GPIO_bvalid : in STD_LOGIC;
    AXI_GPIO_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_GPIO_rready : out STD_LOGIC;
    AXI_GPIO_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_GPIO_rvalid : in STD_LOGIC;
    AXI_GPIO_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_GPIO_wready : in STD_LOGIC;
    AXI_GPIO_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_GPIO_wvalid : out STD_LOGIC;
    global_clk : out STD_LOGIC;
    global_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Processing_Subsystem_imp_12DOFPS;

architecture STRUCTURE of Processing_Subsystem_imp_12DOFPS is
  component ad4134fw_processing_system7_0_0 is
  port (
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component ad4134fw_processing_system7_0_0;
  component ad4134fw_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ad4134fw_proc_sys_reset_0_0;
  component ad4134fw_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component ad4134fw_clk_wiz_0_0;
  component ad4134fw_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component ad4134fw_smartconnect_0_0;
  signal \^global_clk\ : STD_LOGIC;
  signal \^global_rst_n\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_DDR_CAS_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_CKE_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_CS_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_Clk_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_Clk_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_DRSTB_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_ODT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_RAS_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_VRN_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_VRP_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_WEB_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_PS_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_PS_PORB_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_PS_SRSTB_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DDR_Addr_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_processing_system7_0_DDR_BankAddr_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_DDR_DM_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_DDR_DQ_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_DDR_DQS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_DDR_DQS_n_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_MIO_UNCONNECTED : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  global_clk <= \^global_clk\;
  global_rst_n(0) <= \^global_rst_n\(0);
clk_wiz_0: component ad4134fw_clk_wiz_0_0
     port map (
      clk_in1 => processing_system7_0_FCLK_CLK0,
      clk_out1 => \^global_clk\
    );
proc_sys_reset_0: component ad4134fw_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => \^global_rst_n\(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component ad4134fw_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => NLW_processing_system7_0_DDR_Addr_UNCONNECTED(14 downto 0),
      DDR_BankAddr(2 downto 0) => NLW_processing_system7_0_DDR_BankAddr_UNCONNECTED(2 downto 0),
      DDR_CAS_n => NLW_processing_system7_0_DDR_CAS_n_UNCONNECTED,
      DDR_CKE => NLW_processing_system7_0_DDR_CKE_UNCONNECTED,
      DDR_CS_n => NLW_processing_system7_0_DDR_CS_n_UNCONNECTED,
      DDR_Clk => NLW_processing_system7_0_DDR_Clk_UNCONNECTED,
      DDR_Clk_n => NLW_processing_system7_0_DDR_Clk_n_UNCONNECTED,
      DDR_DM(3 downto 0) => NLW_processing_system7_0_DDR_DM_UNCONNECTED(3 downto 0),
      DDR_DQ(31 downto 0) => NLW_processing_system7_0_DDR_DQ_UNCONNECTED(31 downto 0),
      DDR_DQS(3 downto 0) => NLW_processing_system7_0_DDR_DQS_UNCONNECTED(3 downto 0),
      DDR_DQS_n(3 downto 0) => NLW_processing_system7_0_DDR_DQS_n_UNCONNECTED(3 downto 0),
      DDR_DRSTB => NLW_processing_system7_0_DDR_DRSTB_UNCONNECTED,
      DDR_ODT => NLW_processing_system7_0_DDR_ODT_UNCONNECTED,
      DDR_RAS_n => NLW_processing_system7_0_DDR_RAS_n_UNCONNECTED,
      DDR_VRN => NLW_processing_system7_0_DDR_VRN_UNCONNECTED,
      DDR_VRP => NLW_processing_system7_0_DDR_VRP_UNCONNECTED,
      DDR_WEB => NLW_processing_system7_0_DDR_WEB_UNCONNECTED,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => NLW_processing_system7_0_MIO_UNCONNECTED(53 downto 0),
      M_AXI_GP0_ACLK => \^global_clk\,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => NLW_processing_system7_0_PS_CLK_UNCONNECTED,
      PS_PORB => NLW_processing_system7_0_PS_PORB_UNCONNECTED,
      PS_SRSTB => NLW_processing_system7_0_PS_SRSTB_UNCONNECTED
    );
smartconnect_0: component ad4134fw_smartconnect_0_0
     port map (
      M00_AXI_araddr(8 downto 0) => AXI_GPIO_araddr(8 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => AXI_GPIO_arready,
      M00_AXI_arvalid => AXI_GPIO_arvalid,
      M00_AXI_awaddr(8 downto 0) => AXI_GPIO_awaddr(8 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => AXI_GPIO_awready,
      M00_AXI_awvalid => AXI_GPIO_awvalid,
      M00_AXI_bready => AXI_GPIO_bready,
      M00_AXI_bresp(1 downto 0) => AXI_GPIO_bresp(1 downto 0),
      M00_AXI_bvalid => AXI_GPIO_bvalid,
      M00_AXI_rdata(31 downto 0) => AXI_GPIO_rdata(31 downto 0),
      M00_AXI_rready => AXI_GPIO_rready,
      M00_AXI_rresp(1 downto 0) => AXI_GPIO_rresp(1 downto 0),
      M00_AXI_rvalid => AXI_GPIO_rvalid,
      M00_AXI_wdata(31 downto 0) => AXI_GPIO_wdata(31 downto 0),
      M00_AXI_wready => AXI_GPIO_wready,
      M00_AXI_wstrb(3 downto 0) => AXI_GPIO_wstrb(3 downto 0),
      M00_AXI_wvalid => AXI_GPIO_wvalid,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      aclk => \^global_clk\,
      aresetn => \^global_rst_n\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_Control_imp_1JN7NK1 is
  port (
    clk : in STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    rstn : in STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_cs_n : out STD_LOGIC
  );
end SPI_Control_imp_1JN7NK1;

architecture STRUCTURE of SPI_Control_imp_1JN7NK1 is
  component ad4134fw_ad4134_clock_generat_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_clk_en : in STD_LOGIC
  );
  end component ad4134fw_ad4134_clock_generat_0_0;
  component ad4134fw_ad4134_control_0_0 is
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
  end component ad4134fw_ad4134_control_0_0;
  component ad4134fw_spi_controller_0_0 is
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
  end component ad4134fw_spi_controller_0_0;
  signal ad4134_control_0_datain : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ad4134_control_0_read : STD_LOGIC;
  signal ad4134_control_0_spi_clk_en : STD_LOGIC;
  signal ad4134_control_0_spiaddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ad4134_control_0_write : STD_LOGIC;
  signal spi_controller_0_dataout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_controller_0_spidone : STD_LOGIC;
begin
ad4134_clock_generator: component ad4134fw_ad4134_clock_generat_0_0
     port map (
      clk => clk,
      rstn => rstn,
      spi_clk => spi_clk,
      spi_clk_en => ad4134_control_0_spi_clk_en
    );
ad4134_control_0: component ad4134fw_ad4134_control_0_0
     port map (
      ch_en(3 downto 0) => B"0000",
      clk => clk,
      datain(7 downto 0) => ad4134_control_0_datain(7 downto 0),
      dataout(7 downto 0) => spi_controller_0_dataout(7 downto 0),
      debug(3 downto 0) => debug(3 downto 0),
      read => ad4134_control_0_read,
      rstn => rstn,
      spi_clk_en => ad4134_control_0_spi_clk_en,
      spiaddr(7 downto 0) => ad4134_control_0_spiaddr(7 downto 0),
      spidone => spi_controller_0_spidone,
      write => ad4134_control_0_write
    );
spi_controller_0: component ad4134fw_spi_controller_0_0
     port map (
      clk => clk,
      cs_n => spi_cs_n,
      datain(7 downto 0) => ad4134_control_0_datain(7 downto 0),
      dataout(7 downto 0) => spi_controller_0_dataout(7 downto 0),
      miso => miso,
      mosi => mosi,
      read => ad4134_control_0_read,
      rstn => rstn,
      spiaddr(7 downto 0) => ad4134_control_0_spiaddr(7 downto 0),
      spidone => spi_controller_0_spidone,
      write => ad4134_control_0_write
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_out : out STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hb_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    odr_out : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_cs_n : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ad4134fw : entity is "ad4134fw,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ad4134fw,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ad4134fw : entity is "ad4134fw.hwdef";
end ad4134fw;

architecture STRUCTURE of ad4134fw is
  component ad4134fw_ad4134_data_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in0 : in STD_LOGIC;
    data_in1 : in STD_LOGIC;
    data_in2 : in STD_LOGIC;
    data_in3 : in STD_LOGIC;
    dclk_out : out STD_LOGIC;
    odr_out : out STD_LOGIC;
    data_out0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy : out STD_LOGIC
  );
  end component ad4134fw_ad4134_data_0_0;
  signal Processing_Subsystem_AXI_GPIO_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_ARREADY : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_ARVALID : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_AWREADY : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_AWVALID : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_BREADY : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_BVALID : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_RREADY : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_RVALID : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_WREADY : STD_LOGIC;
  signal Processing_Subsystem_AXI_GPIO_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_AXI_GPIO_WVALID : STD_LOGIC;
  signal Processing_Subsystem_global_clk : STD_LOGIC;
  signal Processing_Subsystem_global_rst_n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ad4134_data_0_data_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_ad4134_data_0_data_out0_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_ad4134_data_0_data_out1_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_ad4134_data_0_data_out2_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_ad4134_data_0_data_out3_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
leds_RnM: entity work.LEDS_imp_1273PJO
     port map (
      LEDS(6 downto 0) => LEDS(6 downto 0),
      S_AXI_araddr(8 downto 0) => Processing_Subsystem_AXI_GPIO_ARADDR(8 downto 0),
      S_AXI_arready => Processing_Subsystem_AXI_GPIO_ARREADY,
      S_AXI_arvalid => Processing_Subsystem_AXI_GPIO_ARVALID,
      S_AXI_awaddr(8 downto 0) => Processing_Subsystem_AXI_GPIO_AWADDR(8 downto 0),
      S_AXI_awready => Processing_Subsystem_AXI_GPIO_AWREADY,
      S_AXI_awvalid => Processing_Subsystem_AXI_GPIO_AWVALID,
      S_AXI_bready => Processing_Subsystem_AXI_GPIO_BREADY,
      S_AXI_bresp(1 downto 0) => Processing_Subsystem_AXI_GPIO_BRESP(1 downto 0),
      S_AXI_bvalid => Processing_Subsystem_AXI_GPIO_BVALID,
      S_AXI_rdata(31 downto 0) => Processing_Subsystem_AXI_GPIO_RDATA(31 downto 0),
      S_AXI_rready => Processing_Subsystem_AXI_GPIO_RREADY,
      S_AXI_rresp(1 downto 0) => Processing_Subsystem_AXI_GPIO_RRESP(1 downto 0),
      S_AXI_rvalid => Processing_Subsystem_AXI_GPIO_RVALID,
      S_AXI_wdata(31 downto 0) => Processing_Subsystem_AXI_GPIO_WDATA(31 downto 0),
      S_AXI_wready => Processing_Subsystem_AXI_GPIO_WREADY,
      S_AXI_wstrb(3 downto 0) => Processing_Subsystem_AXI_GPIO_WSTRB(3 downto 0),
      S_AXI_wvalid => Processing_Subsystem_AXI_GPIO_WVALID,
      hb_led(0) => hb_led(0),
      s_axi_aclk => Processing_Subsystem_global_clk,
      s_axi_aresetn => Processing_Subsystem_global_rst_n(0)
    );
Processing_Subsystem: entity work.Processing_Subsystem_imp_12DOFPS
     port map (
      AXI_GPIO_araddr(8 downto 0) => Processing_Subsystem_AXI_GPIO_ARADDR(8 downto 0),
      AXI_GPIO_arready => Processing_Subsystem_AXI_GPIO_ARREADY,
      AXI_GPIO_arvalid => Processing_Subsystem_AXI_GPIO_ARVALID,
      AXI_GPIO_awaddr(8 downto 0) => Processing_Subsystem_AXI_GPIO_AWADDR(8 downto 0),
      AXI_GPIO_awready => Processing_Subsystem_AXI_GPIO_AWREADY,
      AXI_GPIO_awvalid => Processing_Subsystem_AXI_GPIO_AWVALID,
      AXI_GPIO_bready => Processing_Subsystem_AXI_GPIO_BREADY,
      AXI_GPIO_bresp(1 downto 0) => Processing_Subsystem_AXI_GPIO_BRESP(1 downto 0),
      AXI_GPIO_bvalid => Processing_Subsystem_AXI_GPIO_BVALID,
      AXI_GPIO_rdata(31 downto 0) => Processing_Subsystem_AXI_GPIO_RDATA(31 downto 0),
      AXI_GPIO_rready => Processing_Subsystem_AXI_GPIO_RREADY,
      AXI_GPIO_rresp(1 downto 0) => Processing_Subsystem_AXI_GPIO_RRESP(1 downto 0),
      AXI_GPIO_rvalid => Processing_Subsystem_AXI_GPIO_RVALID,
      AXI_GPIO_wdata(31 downto 0) => Processing_Subsystem_AXI_GPIO_WDATA(31 downto 0),
      AXI_GPIO_wready => Processing_Subsystem_AXI_GPIO_WREADY,
      AXI_GPIO_wstrb(3 downto 0) => Processing_Subsystem_AXI_GPIO_WSTRB(3 downto 0),
      AXI_GPIO_wvalid => Processing_Subsystem_AXI_GPIO_WVALID,
      global_clk => Processing_Subsystem_global_clk,
      global_rst_n(0) => Processing_Subsystem_global_rst_n(0)
    );
SPI_Control: entity work.SPI_Control_imp_1JN7NK1
     port map (
      clk => Processing_Subsystem_global_clk,
      debug(3 downto 0) => debug(3 downto 0),
      miso => miso,
      mosi => mosi,
      rstn => Processing_Subsystem_global_rst_n(0),
      spi_clk => spi_clk,
      spi_cs_n => spi_cs_n
    );
ad4134_data_0: component ad4134fw_ad4134_data_0_0
     port map (
      clk => Processing_Subsystem_global_clk,
      data_in0 => '0',
      data_in1 => '0',
      data_in2 => '0',
      data_in3 => '0',
      data_out0(23 downto 0) => NLW_ad4134_data_0_data_out0_UNCONNECTED(23 downto 0),
      data_out1(23 downto 0) => NLW_ad4134_data_0_data_out1_UNCONNECTED(23 downto 0),
      data_out2(23 downto 0) => NLW_ad4134_data_0_data_out2_UNCONNECTED(23 downto 0),
      data_out3(23 downto 0) => NLW_ad4134_data_0_data_out3_UNCONNECTED(23 downto 0),
      data_rdy => NLW_ad4134_data_0_data_rdy_UNCONNECTED,
      dclk_out => dclk_out,
      odr_out => odr_out,
      rst_n => Processing_Subsystem_global_rst_n(0)
    );
end STRUCTURE;
