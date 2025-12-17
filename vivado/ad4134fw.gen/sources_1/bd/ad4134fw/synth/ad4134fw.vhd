--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Dec  2 20:25:05 2025
--Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
--Command     : generate_target ad4134fw.bd
--Design      : ad4134fw
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_BRAM_imp_3GMY3Y is
  port (
    ADC_BRAM_Reader_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    ADC_BRAM_Reader_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_BRAM_Reader_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADC_BRAM_Reader_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADC_BRAM_Reader_arlock : in STD_LOGIC;
    ADC_BRAM_Reader_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_BRAM_Reader_arready : out STD_LOGIC;
    ADC_BRAM_Reader_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_BRAM_Reader_arvalid : in STD_LOGIC;
    ADC_BRAM_Reader_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    ADC_BRAM_Reader_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_BRAM_Reader_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADC_BRAM_Reader_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADC_BRAM_Reader_awlock : in STD_LOGIC;
    ADC_BRAM_Reader_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_BRAM_Reader_awready : out STD_LOGIC;
    ADC_BRAM_Reader_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_BRAM_Reader_awvalid : in STD_LOGIC;
    ADC_BRAM_Reader_bready : in STD_LOGIC;
    ADC_BRAM_Reader_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_BRAM_Reader_bvalid : out STD_LOGIC;
    ADC_BRAM_Reader_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_BRAM_Reader_rlast : out STD_LOGIC;
    ADC_BRAM_Reader_rready : in STD_LOGIC;
    ADC_BRAM_Reader_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_BRAM_Reader_rvalid : out STD_LOGIC;
    ADC_BRAM_Reader_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_BRAM_Reader_wlast : in STD_LOGIC;
    ADC_BRAM_Reader_wready : out STD_LOGIC;
    ADC_BRAM_Reader_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADC_BRAM_Reader_wvalid : in STD_LOGIC;
    adc_bram_enable_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    adc_bram_enable_arready : out STD_LOGIC;
    adc_bram_enable_arvalid : in STD_LOGIC;
    adc_bram_enable_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    adc_bram_enable_awready : out STD_LOGIC;
    adc_bram_enable_awvalid : in STD_LOGIC;
    adc_bram_enable_bready : in STD_LOGIC;
    adc_bram_enable_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_bram_enable_bvalid : out STD_LOGIC;
    adc_bram_enable_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_bram_enable_rready : in STD_LOGIC;
    adc_bram_enable_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_bram_enable_rvalid : out STD_LOGIC;
    adc_bram_enable_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adc_bram_enable_wready : out STD_LOGIC;
    adc_bram_enable_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    adc_bram_enable_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in0_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in1_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in2_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_in3_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy_0 : in STD_LOGIC;
    debug_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    done_0 : out STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end ADC_BRAM_imp_3GMY3Y;

architecture STRUCTURE of ADC_BRAM_imp_3GMY3Y is
  component ad4134fw_blk_mem_gen_0_2 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_blk_mem_gen_0_2;
  component ad4134fw_axi_bram_ctrl_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_axi_bram_ctrl_0_2;
  component ad4134fw_ad4134_to_bram_0_0 is
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
    done : out STD_LOGIC;
    bram_enable : in STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ad4134fw_ad4134_to_bram_0_0;
  component ad4134fw_axi_gpio_0_2 is
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
  end component ad4134fw_axi_gpio_0_2;
  component ad4134fw_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ad4134fw_xlslice_0_2;
  signal ad4134_to_bram_0_addra : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal ad4134_to_bram_0_dia : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ad4134_to_bram_0_wea : STD_LOGIC;
  signal adc_bram_enable_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ADC_BRAM_READ_bram_en_a_UNCONNECTED : STD_LOGIC;
  signal NLW_ADC_BRAM_READ_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_ADC_BRAM_READ_bram_we_a_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ADC_BRAM_READ_bram_wrdata_a_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of ADC_BRAM_READ : label is "byte  0x42000000 32 > ad4134fw ADC_BRAM/blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of ADC_BRAM_READ : label is "yes";
begin
ADC_BRAM_READ: component ad4134fw_axi_bram_ctrl_0_2
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => NLW_ADC_BRAM_READ_bram_en_a_UNCONNECTED,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => NLW_ADC_BRAM_READ_bram_rst_a_UNCONNECTED,
      bram_we_a(3 downto 0) => NLW_ADC_BRAM_READ_bram_we_a_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => NLW_ADC_BRAM_READ_bram_wrdata_a_UNCONNECTED(31 downto 0),
      s_axi_aclk => clk,
      s_axi_araddr(12 downto 0) => ADC_BRAM_Reader_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => ADC_BRAM_Reader_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => ADC_BRAM_Reader_arcache(3 downto 0),
      s_axi_aresetn => rst_n,
      s_axi_arlen(7 downto 0) => ADC_BRAM_Reader_arlen(7 downto 0),
      s_axi_arlock => ADC_BRAM_Reader_arlock,
      s_axi_arprot(2 downto 0) => ADC_BRAM_Reader_arprot(2 downto 0),
      s_axi_arready => ADC_BRAM_Reader_arready,
      s_axi_arsize(2 downto 0) => ADC_BRAM_Reader_arsize(2 downto 0),
      s_axi_arvalid => ADC_BRAM_Reader_arvalid,
      s_axi_awaddr(12 downto 0) => ADC_BRAM_Reader_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => ADC_BRAM_Reader_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => ADC_BRAM_Reader_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => ADC_BRAM_Reader_awlen(7 downto 0),
      s_axi_awlock => ADC_BRAM_Reader_awlock,
      s_axi_awprot(2 downto 0) => ADC_BRAM_Reader_awprot(2 downto 0),
      s_axi_awready => ADC_BRAM_Reader_awready,
      s_axi_awsize(2 downto 0) => ADC_BRAM_Reader_awsize(2 downto 0),
      s_axi_awvalid => ADC_BRAM_Reader_awvalid,
      s_axi_bready => ADC_BRAM_Reader_bready,
      s_axi_bresp(1 downto 0) => ADC_BRAM_Reader_bresp(1 downto 0),
      s_axi_bvalid => ADC_BRAM_Reader_bvalid,
      s_axi_rdata(31 downto 0) => ADC_BRAM_Reader_rdata(31 downto 0),
      s_axi_rlast => ADC_BRAM_Reader_rlast,
      s_axi_rready => ADC_BRAM_Reader_rready,
      s_axi_rresp(1 downto 0) => ADC_BRAM_Reader_rresp(1 downto 0),
      s_axi_rvalid => ADC_BRAM_Reader_rvalid,
      s_axi_wdata(31 downto 0) => ADC_BRAM_Reader_wdata(31 downto 0),
      s_axi_wlast => ADC_BRAM_Reader_wlast,
      s_axi_wready => ADC_BRAM_Reader_wready,
      s_axi_wstrb(3 downto 0) => ADC_BRAM_Reader_wstrb(3 downto 0),
      s_axi_wvalid => ADC_BRAM_Reader_wvalid
    );
ad4134_to_bram_0: component ad4134fw_ad4134_to_bram_0_0
     port map (
      addra(14 downto 0) => ad4134_to_bram_0_addra(14 downto 0),
      bram_enable => xlslice_0_Dout(0),
      clk => clk,
      data_in0(23 downto 0) => data_in0_0(23 downto 0),
      data_in1(23 downto 0) => data_in1_0(23 downto 0),
      data_in2(23 downto 0) => data_in2_0(23 downto 0),
      data_in3(23 downto 0) => data_in3_0(23 downto 0),
      data_rdy => data_rdy_0,
      debug(3 downto 0) => debug_0(3 downto 0),
      dia(31 downto 0) => ad4134_to_bram_0_dia(31 downto 0),
      done => done_0,
      rst_n => rst_n,
      wea => ad4134_to_bram_0_wea
    );
adc_bram_enable: component ad4134fw_axi_gpio_0_2
     port map (
      gpio_io_o(31 downto 0) => adc_bram_enable_gpio_io_o(31 downto 0),
      s_axi_aclk => clk,
      s_axi_araddr(8 downto 0) => adc_bram_enable_araddr(8 downto 0),
      s_axi_aresetn => rst_n,
      s_axi_arready => adc_bram_enable_arready,
      s_axi_arvalid => adc_bram_enable_arvalid,
      s_axi_awaddr(8 downto 0) => adc_bram_enable_awaddr(8 downto 0),
      s_axi_awready => adc_bram_enable_awready,
      s_axi_awvalid => adc_bram_enable_awvalid,
      s_axi_bready => adc_bram_enable_bready,
      s_axi_bresp(1 downto 0) => adc_bram_enable_bresp(1 downto 0),
      s_axi_bvalid => adc_bram_enable_bvalid,
      s_axi_rdata(31 downto 0) => adc_bram_enable_rdata(31 downto 0),
      s_axi_rready => adc_bram_enable_rready,
      s_axi_rresp(1 downto 0) => adc_bram_enable_rresp(1 downto 0),
      s_axi_rvalid => adc_bram_enable_rvalid,
      s_axi_wdata(31 downto 0) => adc_bram_enable_wdata(31 downto 0),
      s_axi_wready => adc_bram_enable_wready,
      s_axi_wstrb(3 downto 0) => adc_bram_enable_wstrb(3 downto 0),
      s_axi_wvalid => adc_bram_enable_wvalid
    );
blk_mem_gen_0: component ad4134fw_blk_mem_gen_0_2
     port map (
      addra(14 downto 0) => ad4134_to_bram_0_addra(14 downto 0),
      addrb(14 downto 13) => B"00",
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      clka => clk,
      clkb => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => ad4134_to_bram_0_dia(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      wea(0) => ad4134_to_bram_0_wea
    );
xlslice_0: component ad4134fw_xlslice_0_2
     port map (
      Din(31 downto 0) => adc_bram_enable_gpio_io_o(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
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
    M01_AXI_0_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_0_arready : in STD_LOGIC;
    M01_AXI_0_arvalid : out STD_LOGIC;
    M01_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_0_awready : in STD_LOGIC;
    M01_AXI_0_awvalid : out STD_LOGIC;
    M01_AXI_0_bready : out STD_LOGIC;
    M01_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_0_bvalid : in STD_LOGIC;
    M01_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_0_rready : out STD_LOGIC;
    M01_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_0_rvalid : in STD_LOGIC;
    M01_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_0_wready : in STD_LOGIC;
    M01_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_0_wvalid : out STD_LOGIC;
    M02_AXI_0_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M02_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_0_arlock : out STD_LOGIC;
    M02_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_0_arready : in STD_LOGIC;
    M02_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_0_arvalid : out STD_LOGIC;
    M02_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M02_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_0_awlock : out STD_LOGIC;
    M02_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_0_awready : in STD_LOGIC;
    M02_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_0_awvalid : out STD_LOGIC;
    M02_AXI_0_bready : out STD_LOGIC;
    M02_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_0_bvalid : in STD_LOGIC;
    M02_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_0_rlast : in STD_LOGIC;
    M02_AXI_0_rready : out STD_LOGIC;
    M02_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_0_rvalid : in STD_LOGIC;
    M02_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_0_wlast : out STD_LOGIC;
    M02_AXI_0_wready : in STD_LOGIC;
    M02_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_0_wvalid : out STD_LOGIC;
    M03_AXI_0_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M03_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_0_arlock : out STD_LOGIC;
    M03_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_0_arready : in STD_LOGIC;
    M03_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_0_arvalid : out STD_LOGIC;
    M03_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M03_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_0_awlock : out STD_LOGIC;
    M03_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_0_awready : in STD_LOGIC;
    M03_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_0_awvalid : out STD_LOGIC;
    M03_AXI_0_bready : out STD_LOGIC;
    M03_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_0_bvalid : in STD_LOGIC;
    M03_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_0_rlast : in STD_LOGIC;
    M03_AXI_0_rready : out STD_LOGIC;
    M03_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_0_rvalid : in STD_LOGIC;
    M03_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_0_wlast : out STD_LOGIC;
    M03_AXI_0_wready : in STD_LOGIC;
    M03_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_0_wvalid : out STD_LOGIC;
    M04_AXI_0_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_0_arready : in STD_LOGIC;
    M04_AXI_0_arvalid : out STD_LOGIC;
    M04_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_0_awready : in STD_LOGIC;
    M04_AXI_0_awvalid : out STD_LOGIC;
    M04_AXI_0_bready : out STD_LOGIC;
    M04_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_0_bvalid : in STD_LOGIC;
    M04_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_0_rready : out STD_LOGIC;
    M04_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_0_rvalid : in STD_LOGIC;
    M04_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_0_wready : in STD_LOGIC;
    M04_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_0_wvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    global_clk : out STD_LOGIC;
    global_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Processing_Subsystem_imp_12DOFPS;

architecture STRUCTURE of Processing_Subsystem_imp_12DOFPS is
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
  component ad4134fw_zynq_ultra_ps_e_0_0 is
  port (
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );
  end component ad4134fw_zynq_ultra_ps_e_0_0;
  component ad4134fw_smartconnect_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
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
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M03_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M03_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC
  );
  end component ad4134fw_smartconnect_0_1;
  component ad4134fw_jtag_axi_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ad4134fw_jtag_axi_0_0;
  signal \^m02_axi_0_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m02_axi_0_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m03_axi_0_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m03_axi_0_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^global_clk\ : STD_LOGIC;
  signal \^global_rst_n\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_ARLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_AWLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_BREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_BVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_RLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_RVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_WLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_pl_clk0_UNCONNECTED : STD_LOGIC;
begin
  M02_AXI_0_arlock <= \^m02_axi_0_arlock\(0);
  M02_AXI_0_awlock <= \^m02_axi_0_awlock\(0);
  M03_AXI_0_arlock <= \^m03_axi_0_arlock\(0);
  M03_AXI_0_awlock <= \^m03_axi_0_awlock\(0);
  global_clk <= \^global_clk\;
  global_rst_n(0) <= \^global_rst_n\(0);
clk_wiz_0: component ad4134fw_clk_wiz_0_0
     port map (
      clk_in1 => clk,
      clk_out1 => \^global_clk\
    );
jtag_axi_0: component ad4134fw_jtag_axi_0_0
     port map (
      aclk => \^global_clk\,
      aresetn => \^global_rst_n\(0),
      m_axi_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      m_axi_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock => jtag_axi_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => jtag_axi_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => jtag_axi_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock => jtag_axi_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => jtag_axi_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => jtag_axi_0_M_AXI_AWVALID,
      m_axi_bid(0) => jtag_axi_0_M_AXI_BID(0),
      m_axi_bready => jtag_axi_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => jtag_axi_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => jtag_axi_0_M_AXI_RID(0),
      m_axi_rlast => jtag_axi_0_M_AXI_RLAST,
      m_axi_rready => jtag_axi_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => jtag_axi_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => jtag_axi_0_M_AXI_WLAST,
      m_axi_wready => jtag_axi_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => jtag_axi_0_M_AXI_WVALID
    );
proc_sys_reset_0: component ad4134fw_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => \^global_rst_n\(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => \^global_clk\
    );
smartconnect_0: component ad4134fw_smartconnect_0_1
     port map (
      M00_AXI_araddr(8 downto 0) => M01_AXI_0_araddr(8 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => M01_AXI_0_arready,
      M00_AXI_arvalid => M01_AXI_0_arvalid,
      M00_AXI_awaddr(8 downto 0) => M01_AXI_0_awaddr(8 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => M01_AXI_0_awready,
      M00_AXI_awvalid => M01_AXI_0_awvalid,
      M00_AXI_bready => M01_AXI_0_bready,
      M00_AXI_bresp(1 downto 0) => M01_AXI_0_bresp(1 downto 0),
      M00_AXI_bvalid => M01_AXI_0_bvalid,
      M00_AXI_rdata(31 downto 0) => M01_AXI_0_rdata(31 downto 0),
      M00_AXI_rready => M01_AXI_0_rready,
      M00_AXI_rresp(1 downto 0) => M01_AXI_0_rresp(1 downto 0),
      M00_AXI_rvalid => M01_AXI_0_rvalid,
      M00_AXI_wdata(31 downto 0) => M01_AXI_0_wdata(31 downto 0),
      M00_AXI_wready => M01_AXI_0_wready,
      M00_AXI_wstrb(3 downto 0) => M01_AXI_0_wstrb(3 downto 0),
      M00_AXI_wvalid => M01_AXI_0_wvalid,
      M01_AXI_araddr(8 downto 0) => AXI_GPIO_araddr(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => AXI_GPIO_arready,
      M01_AXI_arvalid => AXI_GPIO_arvalid,
      M01_AXI_awaddr(8 downto 0) => AXI_GPIO_awaddr(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => AXI_GPIO_awready,
      M01_AXI_awvalid => AXI_GPIO_awvalid,
      M01_AXI_bready => AXI_GPIO_bready,
      M01_AXI_bresp(1 downto 0) => AXI_GPIO_bresp(1 downto 0),
      M01_AXI_bvalid => AXI_GPIO_bvalid,
      M01_AXI_rdata(31 downto 0) => AXI_GPIO_rdata(31 downto 0),
      M01_AXI_rready => AXI_GPIO_rready,
      M01_AXI_rresp(1 downto 0) => AXI_GPIO_rresp(1 downto 0),
      M01_AXI_rvalid => AXI_GPIO_rvalid,
      M01_AXI_wdata(31 downto 0) => AXI_GPIO_wdata(31 downto 0),
      M01_AXI_wready => AXI_GPIO_wready,
      M01_AXI_wstrb(3 downto 0) => AXI_GPIO_wstrb(3 downto 0),
      M01_AXI_wvalid => AXI_GPIO_wvalid,
      M02_AXI_araddr(12 downto 0) => M02_AXI_0_araddr(12 downto 0),
      M02_AXI_arburst(1 downto 0) => M02_AXI_0_arburst(1 downto 0),
      M02_AXI_arcache(3 downto 0) => M02_AXI_0_arcache(3 downto 0),
      M02_AXI_arlen(7 downto 0) => M02_AXI_0_arlen(7 downto 0),
      M02_AXI_arlock(0) => \^m02_axi_0_arlock\(0),
      M02_AXI_arprot(2 downto 0) => M02_AXI_0_arprot(2 downto 0),
      M02_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M02_AXI_arqos_UNCONNECTED(3 downto 0),
      M02_AXI_arready => M02_AXI_0_arready,
      M02_AXI_arsize(2 downto 0) => M02_AXI_0_arsize(2 downto 0),
      M02_AXI_aruser(15 downto 0) => NLW_smartconnect_0_M02_AXI_aruser_UNCONNECTED(15 downto 0),
      M02_AXI_arvalid => M02_AXI_0_arvalid,
      M02_AXI_awaddr(12 downto 0) => M02_AXI_0_awaddr(12 downto 0),
      M02_AXI_awburst(1 downto 0) => M02_AXI_0_awburst(1 downto 0),
      M02_AXI_awcache(3 downto 0) => M02_AXI_0_awcache(3 downto 0),
      M02_AXI_awlen(7 downto 0) => M02_AXI_0_awlen(7 downto 0),
      M02_AXI_awlock(0) => \^m02_axi_0_awlock\(0),
      M02_AXI_awprot(2 downto 0) => M02_AXI_0_awprot(2 downto 0),
      M02_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M02_AXI_awqos_UNCONNECTED(3 downto 0),
      M02_AXI_awready => M02_AXI_0_awready,
      M02_AXI_awsize(2 downto 0) => M02_AXI_0_awsize(2 downto 0),
      M02_AXI_awuser(15 downto 0) => NLW_smartconnect_0_M02_AXI_awuser_UNCONNECTED(15 downto 0),
      M02_AXI_awvalid => M02_AXI_0_awvalid,
      M02_AXI_bready => M02_AXI_0_bready,
      M02_AXI_bresp(1 downto 0) => M02_AXI_0_bresp(1 downto 0),
      M02_AXI_bvalid => M02_AXI_0_bvalid,
      M02_AXI_rdata(31 downto 0) => M02_AXI_0_rdata(31 downto 0),
      M02_AXI_rlast => M02_AXI_0_rlast,
      M02_AXI_rready => M02_AXI_0_rready,
      M02_AXI_rresp(1 downto 0) => M02_AXI_0_rresp(1 downto 0),
      M02_AXI_rvalid => M02_AXI_0_rvalid,
      M02_AXI_wdata(31 downto 0) => M02_AXI_0_wdata(31 downto 0),
      M02_AXI_wlast => M02_AXI_0_wlast,
      M02_AXI_wready => M02_AXI_0_wready,
      M02_AXI_wstrb(3 downto 0) => M02_AXI_0_wstrb(3 downto 0),
      M02_AXI_wvalid => M02_AXI_0_wvalid,
      M03_AXI_araddr(12 downto 0) => M03_AXI_0_araddr(12 downto 0),
      M03_AXI_arburst(1 downto 0) => M03_AXI_0_arburst(1 downto 0),
      M03_AXI_arcache(3 downto 0) => M03_AXI_0_arcache(3 downto 0),
      M03_AXI_arlen(7 downto 0) => M03_AXI_0_arlen(7 downto 0),
      M03_AXI_arlock(0) => \^m03_axi_0_arlock\(0),
      M03_AXI_arprot(2 downto 0) => M03_AXI_0_arprot(2 downto 0),
      M03_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M03_AXI_arqos_UNCONNECTED(3 downto 0),
      M03_AXI_arready => M03_AXI_0_arready,
      M03_AXI_arsize(2 downto 0) => M03_AXI_0_arsize(2 downto 0),
      M03_AXI_aruser(15 downto 0) => NLW_smartconnect_0_M03_AXI_aruser_UNCONNECTED(15 downto 0),
      M03_AXI_arvalid => M03_AXI_0_arvalid,
      M03_AXI_awaddr(12 downto 0) => M03_AXI_0_awaddr(12 downto 0),
      M03_AXI_awburst(1 downto 0) => M03_AXI_0_awburst(1 downto 0),
      M03_AXI_awcache(3 downto 0) => M03_AXI_0_awcache(3 downto 0),
      M03_AXI_awlen(7 downto 0) => M03_AXI_0_awlen(7 downto 0),
      M03_AXI_awlock(0) => \^m03_axi_0_awlock\(0),
      M03_AXI_awprot(2 downto 0) => M03_AXI_0_awprot(2 downto 0),
      M03_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M03_AXI_awqos_UNCONNECTED(3 downto 0),
      M03_AXI_awready => M03_AXI_0_awready,
      M03_AXI_awsize(2 downto 0) => M03_AXI_0_awsize(2 downto 0),
      M03_AXI_awuser(15 downto 0) => NLW_smartconnect_0_M03_AXI_awuser_UNCONNECTED(15 downto 0),
      M03_AXI_awvalid => M03_AXI_0_awvalid,
      M03_AXI_bready => M03_AXI_0_bready,
      M03_AXI_bresp(1 downto 0) => M03_AXI_0_bresp(1 downto 0),
      M03_AXI_bvalid => M03_AXI_0_bvalid,
      M03_AXI_rdata(31 downto 0) => M03_AXI_0_rdata(31 downto 0),
      M03_AXI_rlast => M03_AXI_0_rlast,
      M03_AXI_rready => M03_AXI_0_rready,
      M03_AXI_rresp(1 downto 0) => M03_AXI_0_rresp(1 downto 0),
      M03_AXI_rvalid => M03_AXI_0_rvalid,
      M03_AXI_wdata(31 downto 0) => M03_AXI_0_wdata(31 downto 0),
      M03_AXI_wlast => M03_AXI_0_wlast,
      M03_AXI_wready => M03_AXI_0_wready,
      M03_AXI_wstrb(3 downto 0) => M03_AXI_0_wstrb(3 downto 0),
      M03_AXI_wvalid => M03_AXI_0_wvalid,
      M04_AXI_araddr(8 downto 0) => M04_AXI_0_araddr(8 downto 0),
      M04_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arready => M04_AXI_0_arready,
      M04_AXI_arvalid => M04_AXI_0_arvalid,
      M04_AXI_awaddr(8 downto 0) => M04_AXI_0_awaddr(8 downto 0),
      M04_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awready => M04_AXI_0_awready,
      M04_AXI_awvalid => M04_AXI_0_awvalid,
      M04_AXI_bready => M04_AXI_0_bready,
      M04_AXI_bresp(1 downto 0) => M04_AXI_0_bresp(1 downto 0),
      M04_AXI_bvalid => M04_AXI_0_bvalid,
      M04_AXI_rdata(31 downto 0) => M04_AXI_0_rdata(31 downto 0),
      M04_AXI_rready => M04_AXI_0_rready,
      M04_AXI_rresp(1 downto 0) => M04_AXI_0_rresp(1 downto 0),
      M04_AXI_rvalid => M04_AXI_0_rvalid,
      M04_AXI_wdata(31 downto 0) => M04_AXI_0_wdata(31 downto 0),
      M04_AXI_wready => M04_AXI_0_wready,
      M04_AXI_wstrb(3 downto 0) => M04_AXI_0_wstrb(3 downto 0),
      M04_AXI_wvalid => M04_AXI_0_wvalid,
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      S00_AXI_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      S00_AXI_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      S00_AXI_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID,
      S01_AXI_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      S01_AXI_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => jtag_axi_0_M_AXI_ARLOCK,
      S01_AXI_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      S01_AXI_arready => jtag_axi_0_M_AXI_ARREADY,
      S01_AXI_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      S01_AXI_arvalid => jtag_axi_0_M_AXI_ARVALID,
      S01_AXI_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      S01_AXI_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => jtag_axi_0_M_AXI_AWLOCK,
      S01_AXI_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      S01_AXI_awready => jtag_axi_0_M_AXI_AWREADY,
      S01_AXI_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      S01_AXI_awvalid => jtag_axi_0_M_AXI_AWVALID,
      S01_AXI_bid(0) => jtag_axi_0_M_AXI_BID(0),
      S01_AXI_bready => jtag_axi_0_M_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => jtag_axi_0_M_AXI_BVALID,
      S01_AXI_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      S01_AXI_rid(0) => jtag_axi_0_M_AXI_RID(0),
      S01_AXI_rlast => jtag_axi_0_M_AXI_RLAST,
      S01_AXI_rready => jtag_axi_0_M_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => jtag_axi_0_M_AXI_RVALID,
      S01_AXI_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      S01_AXI_wlast => jtag_axi_0_M_AXI_WLAST,
      S01_AXI_wready => jtag_axi_0_M_AXI_WREADY,
      S01_AXI_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      S01_AXI_wvalid => jtag_axi_0_M_AXI_WVALID,
      aclk => \^global_clk\,
      aresetn => \^global_rst_n\(0)
    );
zynq_ultra_ps_e_0: component ad4134fw_zynq_ultra_ps_e_0_0
     port map (
      maxigp0_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      maxigp0_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      maxigp0_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      maxigp0_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      maxigp0_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      maxigp0_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      maxigp0_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      maxigp0_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      maxigp0_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      maxigp0_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      maxigp0_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER(15 downto 0),
      maxigp0_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      maxigp0_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      maxigp0_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      maxigp0_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      maxigp0_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      maxigp0_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      maxigp0_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      maxigp0_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      maxigp0_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      maxigp0_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      maxigp0_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      maxigp0_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER(15 downto 0),
      maxigp0_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      maxigp0_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      maxigp0_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      maxigp0_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      maxigp0_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      maxigp0_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      maxigp0_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      maxigp0_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      maxigp0_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      maxigp0_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      maxigp0_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      maxigp0_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      maxigp0_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      maxigp0_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      maxigp0_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      maxigp0_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID,
      maxihpm0_fpd_aclk => \^global_clk\,
      pl_clk0 => NLW_zynq_ultra_ps_e_0_pl_clk0_UNCONNECTED,
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0
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
entity bram_tester_imp_1TQERNJ is
  port (
    BRAM_INIT_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    BRAM_INIT_arready : out STD_LOGIC;
    BRAM_INIT_arvalid : in STD_LOGIC;
    BRAM_INIT_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    BRAM_INIT_awready : out STD_LOGIC;
    BRAM_INIT_awvalid : in STD_LOGIC;
    BRAM_INIT_bready : in STD_LOGIC;
    BRAM_INIT_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_INIT_bvalid : out STD_LOGIC;
    BRAM_INIT_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_INIT_rready : in STD_LOGIC;
    BRAM_INIT_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_INIT_rvalid : out STD_LOGIC;
    BRAM_INIT_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_INIT_wready : out STD_LOGIC;
    BRAM_INIT_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_INIT_wvalid : in STD_LOGIC;
    BRAM_READ_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_READ_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_READ_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_READ_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_READ_arlock : in STD_LOGIC;
    BRAM_READ_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BRAM_READ_arready : out STD_LOGIC;
    BRAM_READ_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BRAM_READ_arvalid : in STD_LOGIC;
    BRAM_READ_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_READ_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_READ_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_READ_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_READ_awlock : in STD_LOGIC;
    BRAM_READ_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BRAM_READ_awready : out STD_LOGIC;
    BRAM_READ_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BRAM_READ_awvalid : in STD_LOGIC;
    BRAM_READ_bready : in STD_LOGIC;
    BRAM_READ_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_READ_bvalid : out STD_LOGIC;
    BRAM_READ_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_READ_rlast : out STD_LOGIC;
    BRAM_READ_rready : in STD_LOGIC;
    BRAM_READ_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_READ_rvalid : out STD_LOGIC;
    BRAM_READ_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_READ_wlast : in STD_LOGIC;
    BRAM_READ_wready : out STD_LOGIC;
    BRAM_READ_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_READ_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end bram_tester_imp_1TQERNJ;

architecture STRUCTURE of bram_tester_imp_1TQERNJ is
  component ad4134fw_bram_writer_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    start : in STD_LOGIC;
    addra : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dia : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : out STD_LOGIC;
    done : out STD_LOGIC
  );
  end component ad4134fw_bram_writer_0_0;
  component ad4134fw_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_blk_mem_gen_0_0;
  component ad4134fw_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ad4134fw_axi_bram_ctrl_0_0;
  component ad4134fw_axi_gpio_0_1 is
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
  end component ad4134fw_axi_gpio_0_1;
  component ad4134fw_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ad4134fw_xlslice_0_1;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_test_control_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_writer_0_addra : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal bram_writer_0_dia : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_writer_0_wea : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_bram_read_bram_en_a_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_read_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_read_bram_we_a_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_read_bram_wrdata_a_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_bram_writer_0_done_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of bram_read : label is "byte  0x40000000 32 > ad4134fw bram_tester/blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of bram_read : label is "yes";
begin
blk_mem_gen_0: component ad4134fw_blk_mem_gen_0_0
     port map (
      addra(12 downto 0) => bram_writer_0_addra(12 downto 0),
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      clka => clk,
      clkb => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => bram_writer_0_dia(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      wea(0) => bram_writer_0_wea
    );
bram_read: component ad4134fw_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => NLW_bram_read_bram_en_a_UNCONNECTED,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => NLW_bram_read_bram_rst_a_UNCONNECTED,
      bram_we_a(3 downto 0) => NLW_bram_read_bram_we_a_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => NLW_bram_read_bram_wrdata_a_UNCONNECTED(31 downto 0),
      s_axi_aclk => clk,
      s_axi_araddr(12 downto 0) => BRAM_READ_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => BRAM_READ_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => BRAM_READ_arcache(3 downto 0),
      s_axi_aresetn => rst_n,
      s_axi_arlen(7 downto 0) => BRAM_READ_arlen(7 downto 0),
      s_axi_arlock => BRAM_READ_arlock,
      s_axi_arprot(2 downto 0) => BRAM_READ_arprot(2 downto 0),
      s_axi_arready => BRAM_READ_arready,
      s_axi_arsize(2 downto 0) => BRAM_READ_arsize(2 downto 0),
      s_axi_arvalid => BRAM_READ_arvalid,
      s_axi_awaddr(12 downto 0) => BRAM_READ_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => BRAM_READ_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => BRAM_READ_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => BRAM_READ_awlen(7 downto 0),
      s_axi_awlock => BRAM_READ_awlock,
      s_axi_awprot(2 downto 0) => BRAM_READ_awprot(2 downto 0),
      s_axi_awready => BRAM_READ_awready,
      s_axi_awsize(2 downto 0) => BRAM_READ_awsize(2 downto 0),
      s_axi_awvalid => BRAM_READ_awvalid,
      s_axi_bready => BRAM_READ_bready,
      s_axi_bresp(1 downto 0) => BRAM_READ_bresp(1 downto 0),
      s_axi_bvalid => BRAM_READ_bvalid,
      s_axi_rdata(31 downto 0) => BRAM_READ_rdata(31 downto 0),
      s_axi_rlast => BRAM_READ_rlast,
      s_axi_rready => BRAM_READ_rready,
      s_axi_rresp(1 downto 0) => BRAM_READ_rresp(1 downto 0),
      s_axi_rvalid => BRAM_READ_rvalid,
      s_axi_wdata(31 downto 0) => BRAM_READ_wdata(31 downto 0),
      s_axi_wlast => BRAM_READ_wlast,
      s_axi_wready => BRAM_READ_wready,
      s_axi_wstrb(3 downto 0) => BRAM_READ_wstrb(3 downto 0),
      s_axi_wvalid => BRAM_READ_wvalid
    );
bram_test_control: component ad4134fw_axi_gpio_0_1
     port map (
      gpio_io_o(31 downto 0) => bram_test_control_gpio_io_o(31 downto 0),
      s_axi_aclk => clk,
      s_axi_araddr(8 downto 0) => BRAM_INIT_araddr(8 downto 0),
      s_axi_aresetn => rst_n,
      s_axi_arready => BRAM_INIT_arready,
      s_axi_arvalid => BRAM_INIT_arvalid,
      s_axi_awaddr(8 downto 0) => BRAM_INIT_awaddr(8 downto 0),
      s_axi_awready => BRAM_INIT_awready,
      s_axi_awvalid => BRAM_INIT_awvalid,
      s_axi_bready => BRAM_INIT_bready,
      s_axi_bresp(1 downto 0) => BRAM_INIT_bresp(1 downto 0),
      s_axi_bvalid => BRAM_INIT_bvalid,
      s_axi_rdata(31 downto 0) => BRAM_INIT_rdata(31 downto 0),
      s_axi_rready => BRAM_INIT_rready,
      s_axi_rresp(1 downto 0) => BRAM_INIT_rresp(1 downto 0),
      s_axi_rvalid => BRAM_INIT_rvalid,
      s_axi_wdata(31 downto 0) => BRAM_INIT_wdata(31 downto 0),
      s_axi_wready => BRAM_INIT_wready,
      s_axi_wstrb(3 downto 0) => BRAM_INIT_wstrb(3 downto 0),
      s_axi_wvalid => BRAM_INIT_wvalid
    );
bram_writer_0: component ad4134fw_bram_writer_0_0
     port map (
      addra(12 downto 0) => bram_writer_0_addra(12 downto 0),
      clk => clk,
      dia(31 downto 0) => bram_writer_0_dia(31 downto 0),
      done => NLW_bram_writer_0_done_UNCONNECTED,
      reset_n => rst_n,
      start => xlslice_0_Dout(0),
      wea => bram_writer_0_wea
    );
xlslice_0: component ad4134fw_xlslice_0_1
     port map (
      Din(31 downto 0) => bram_test_control_gpio_io_o(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    data_in0 : in STD_LOGIC;
    data_in1 : in STD_LOGIC;
    data_in2 : in STD_LOGIC;
    data_in3 : in STD_LOGIC;
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
  attribute CORE_GENERATION_INFO of ad4134fw : entity is "ad4134fw,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ad4134fw,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=29,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
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
  component ad4134fw_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ad4134fw_ila_0_0;
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
  signal Processing_Subsystem_M01_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_ARREADY : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_ARVALID : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_AWREADY : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_AWVALID : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_BREADY : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_BVALID : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_RREADY : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_RVALID : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_WREADY : STD_LOGIC;
  signal Processing_Subsystem_M01_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M01_AXI_0_WVALID : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARLOCK : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARREADY : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_ARVALID : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWLOCK : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWREADY : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_AWVALID : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_BREADY : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_BVALID : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_RLAST : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_RREADY : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_RVALID : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_WLAST : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_WREADY : STD_LOGIC;
  signal Processing_Subsystem_M02_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M02_AXI_0_WVALID : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARLOCK : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARREADY : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_ARVALID : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWLOCK : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWREADY : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_AWVALID : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_BREADY : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_BVALID : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_RLAST : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_RREADY : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_RVALID : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_WLAST : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_WREADY : STD_LOGIC;
  signal Processing_Subsystem_M03_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M03_AXI_0_WVALID : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_ARREADY : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_ARVALID : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_AWREADY : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_AWVALID : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_BREADY : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_BVALID : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_RREADY : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_RVALID : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_WREADY : STD_LOGIC;
  signal Processing_Subsystem_M04_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Processing_Subsystem_M04_AXI_0_WVALID : STD_LOGIC;
  signal Processing_Subsystem_global_clk : STD_LOGIC;
  signal Processing_Subsystem_global_rst_n : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ad4134_data_0_data_out0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ad4134_data_0_data_out1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ad4134_data_0_data_out2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ad4134_data_0_data_out3 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ad4134_data_0_data_rdy : STD_LOGIC;
  signal \^dclk_out\ : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal \^odr_out\ : STD_LOGIC;
  signal \^spi_clk\ : STD_LOGIC;
  signal \^spi_cs_n\ : STD_LOGIC;
  signal NLW_ADC_BRAM_done_0_UNCONNECTED : STD_LOGIC;
  signal NLW_SPI_Control_debug_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN ad4134fw_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  dclk_out <= \^dclk_out\;
  mosi <= \^mosi\;
  odr_out <= \^odr_out\;
  spi_clk <= \^spi_clk\;
  spi_cs_n <= \^spi_cs_n\;
ADC_BRAM: entity work.ADC_BRAM_imp_3GMY3Y
     port map (
      ADC_BRAM_Reader_araddr(12 downto 0) => Processing_Subsystem_M03_AXI_0_ARADDR(12 downto 0),
      ADC_BRAM_Reader_arburst(1 downto 0) => Processing_Subsystem_M03_AXI_0_ARBURST(1 downto 0),
      ADC_BRAM_Reader_arcache(3 downto 0) => Processing_Subsystem_M03_AXI_0_ARCACHE(3 downto 0),
      ADC_BRAM_Reader_arlen(7 downto 0) => Processing_Subsystem_M03_AXI_0_ARLEN(7 downto 0),
      ADC_BRAM_Reader_arlock => Processing_Subsystem_M03_AXI_0_ARLOCK,
      ADC_BRAM_Reader_arprot(2 downto 0) => Processing_Subsystem_M03_AXI_0_ARPROT(2 downto 0),
      ADC_BRAM_Reader_arready => Processing_Subsystem_M03_AXI_0_ARREADY,
      ADC_BRAM_Reader_arsize(2 downto 0) => Processing_Subsystem_M03_AXI_0_ARSIZE(2 downto 0),
      ADC_BRAM_Reader_arvalid => Processing_Subsystem_M03_AXI_0_ARVALID,
      ADC_BRAM_Reader_awaddr(12 downto 0) => Processing_Subsystem_M03_AXI_0_AWADDR(12 downto 0),
      ADC_BRAM_Reader_awburst(1 downto 0) => Processing_Subsystem_M03_AXI_0_AWBURST(1 downto 0),
      ADC_BRAM_Reader_awcache(3 downto 0) => Processing_Subsystem_M03_AXI_0_AWCACHE(3 downto 0),
      ADC_BRAM_Reader_awlen(7 downto 0) => Processing_Subsystem_M03_AXI_0_AWLEN(7 downto 0),
      ADC_BRAM_Reader_awlock => Processing_Subsystem_M03_AXI_0_AWLOCK,
      ADC_BRAM_Reader_awprot(2 downto 0) => Processing_Subsystem_M03_AXI_0_AWPROT(2 downto 0),
      ADC_BRAM_Reader_awready => Processing_Subsystem_M03_AXI_0_AWREADY,
      ADC_BRAM_Reader_awsize(2 downto 0) => Processing_Subsystem_M03_AXI_0_AWSIZE(2 downto 0),
      ADC_BRAM_Reader_awvalid => Processing_Subsystem_M03_AXI_0_AWVALID,
      ADC_BRAM_Reader_bready => Processing_Subsystem_M03_AXI_0_BREADY,
      ADC_BRAM_Reader_bresp(1 downto 0) => Processing_Subsystem_M03_AXI_0_BRESP(1 downto 0),
      ADC_BRAM_Reader_bvalid => Processing_Subsystem_M03_AXI_0_BVALID,
      ADC_BRAM_Reader_rdata(31 downto 0) => Processing_Subsystem_M03_AXI_0_RDATA(31 downto 0),
      ADC_BRAM_Reader_rlast => Processing_Subsystem_M03_AXI_0_RLAST,
      ADC_BRAM_Reader_rready => Processing_Subsystem_M03_AXI_0_RREADY,
      ADC_BRAM_Reader_rresp(1 downto 0) => Processing_Subsystem_M03_AXI_0_RRESP(1 downto 0),
      ADC_BRAM_Reader_rvalid => Processing_Subsystem_M03_AXI_0_RVALID,
      ADC_BRAM_Reader_wdata(31 downto 0) => Processing_Subsystem_M03_AXI_0_WDATA(31 downto 0),
      ADC_BRAM_Reader_wlast => Processing_Subsystem_M03_AXI_0_WLAST,
      ADC_BRAM_Reader_wready => Processing_Subsystem_M03_AXI_0_WREADY,
      ADC_BRAM_Reader_wstrb(3 downto 0) => Processing_Subsystem_M03_AXI_0_WSTRB(3 downto 0),
      ADC_BRAM_Reader_wvalid => Processing_Subsystem_M03_AXI_0_WVALID,
      adc_bram_enable_araddr(8 downto 0) => Processing_Subsystem_M04_AXI_0_ARADDR(8 downto 0),
      adc_bram_enable_arready => Processing_Subsystem_M04_AXI_0_ARREADY,
      adc_bram_enable_arvalid => Processing_Subsystem_M04_AXI_0_ARVALID,
      adc_bram_enable_awaddr(8 downto 0) => Processing_Subsystem_M04_AXI_0_AWADDR(8 downto 0),
      adc_bram_enable_awready => Processing_Subsystem_M04_AXI_0_AWREADY,
      adc_bram_enable_awvalid => Processing_Subsystem_M04_AXI_0_AWVALID,
      adc_bram_enable_bready => Processing_Subsystem_M04_AXI_0_BREADY,
      adc_bram_enable_bresp(1 downto 0) => Processing_Subsystem_M04_AXI_0_BRESP(1 downto 0),
      adc_bram_enable_bvalid => Processing_Subsystem_M04_AXI_0_BVALID,
      adc_bram_enable_rdata(31 downto 0) => Processing_Subsystem_M04_AXI_0_RDATA(31 downto 0),
      adc_bram_enable_rready => Processing_Subsystem_M04_AXI_0_RREADY,
      adc_bram_enable_rresp(1 downto 0) => Processing_Subsystem_M04_AXI_0_RRESP(1 downto 0),
      adc_bram_enable_rvalid => Processing_Subsystem_M04_AXI_0_RVALID,
      adc_bram_enable_wdata(31 downto 0) => Processing_Subsystem_M04_AXI_0_WDATA(31 downto 0),
      adc_bram_enable_wready => Processing_Subsystem_M04_AXI_0_WREADY,
      adc_bram_enable_wstrb(3 downto 0) => Processing_Subsystem_M04_AXI_0_WSTRB(3 downto 0),
      adc_bram_enable_wvalid => Processing_Subsystem_M04_AXI_0_WVALID,
      clk => Processing_Subsystem_global_clk,
      data_in0_0(23 downto 0) => ad4134_data_0_data_out0(23 downto 0),
      data_in1_0(23 downto 0) => ad4134_data_0_data_out1(23 downto 0),
      data_in2_0(23 downto 0) => ad4134_data_0_data_out2(23 downto 0),
      data_in3_0(23 downto 0) => ad4134_data_0_data_out3(23 downto 0),
      data_rdy_0 => ad4134_data_0_data_rdy,
      debug_0(3 downto 0) => debug(3 downto 0),
      done_0 => NLW_ADC_BRAM_done_0_UNCONNECTED,
      rst_n => Processing_Subsystem_global_rst_n(0)
    );
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
      M01_AXI_0_araddr(8 downto 0) => Processing_Subsystem_M01_AXI_0_ARADDR(8 downto 0),
      M01_AXI_0_arready => Processing_Subsystem_M01_AXI_0_ARREADY,
      M01_AXI_0_arvalid => Processing_Subsystem_M01_AXI_0_ARVALID,
      M01_AXI_0_awaddr(8 downto 0) => Processing_Subsystem_M01_AXI_0_AWADDR(8 downto 0),
      M01_AXI_0_awready => Processing_Subsystem_M01_AXI_0_AWREADY,
      M01_AXI_0_awvalid => Processing_Subsystem_M01_AXI_0_AWVALID,
      M01_AXI_0_bready => Processing_Subsystem_M01_AXI_0_BREADY,
      M01_AXI_0_bresp(1 downto 0) => Processing_Subsystem_M01_AXI_0_BRESP(1 downto 0),
      M01_AXI_0_bvalid => Processing_Subsystem_M01_AXI_0_BVALID,
      M01_AXI_0_rdata(31 downto 0) => Processing_Subsystem_M01_AXI_0_RDATA(31 downto 0),
      M01_AXI_0_rready => Processing_Subsystem_M01_AXI_0_RREADY,
      M01_AXI_0_rresp(1 downto 0) => Processing_Subsystem_M01_AXI_0_RRESP(1 downto 0),
      M01_AXI_0_rvalid => Processing_Subsystem_M01_AXI_0_RVALID,
      M01_AXI_0_wdata(31 downto 0) => Processing_Subsystem_M01_AXI_0_WDATA(31 downto 0),
      M01_AXI_0_wready => Processing_Subsystem_M01_AXI_0_WREADY,
      M01_AXI_0_wstrb(3 downto 0) => Processing_Subsystem_M01_AXI_0_WSTRB(3 downto 0),
      M01_AXI_0_wvalid => Processing_Subsystem_M01_AXI_0_WVALID,
      M02_AXI_0_araddr(12 downto 0) => Processing_Subsystem_M02_AXI_0_ARADDR(12 downto 0),
      M02_AXI_0_arburst(1 downto 0) => Processing_Subsystem_M02_AXI_0_ARBURST(1 downto 0),
      M02_AXI_0_arcache(3 downto 0) => Processing_Subsystem_M02_AXI_0_ARCACHE(3 downto 0),
      M02_AXI_0_arlen(7 downto 0) => Processing_Subsystem_M02_AXI_0_ARLEN(7 downto 0),
      M02_AXI_0_arlock => Processing_Subsystem_M02_AXI_0_ARLOCK,
      M02_AXI_0_arprot(2 downto 0) => Processing_Subsystem_M02_AXI_0_ARPROT(2 downto 0),
      M02_AXI_0_arready => Processing_Subsystem_M02_AXI_0_ARREADY,
      M02_AXI_0_arsize(2 downto 0) => Processing_Subsystem_M02_AXI_0_ARSIZE(2 downto 0),
      M02_AXI_0_arvalid => Processing_Subsystem_M02_AXI_0_ARVALID,
      M02_AXI_0_awaddr(12 downto 0) => Processing_Subsystem_M02_AXI_0_AWADDR(12 downto 0),
      M02_AXI_0_awburst(1 downto 0) => Processing_Subsystem_M02_AXI_0_AWBURST(1 downto 0),
      M02_AXI_0_awcache(3 downto 0) => Processing_Subsystem_M02_AXI_0_AWCACHE(3 downto 0),
      M02_AXI_0_awlen(7 downto 0) => Processing_Subsystem_M02_AXI_0_AWLEN(7 downto 0),
      M02_AXI_0_awlock => Processing_Subsystem_M02_AXI_0_AWLOCK,
      M02_AXI_0_awprot(2 downto 0) => Processing_Subsystem_M02_AXI_0_AWPROT(2 downto 0),
      M02_AXI_0_awready => Processing_Subsystem_M02_AXI_0_AWREADY,
      M02_AXI_0_awsize(2 downto 0) => Processing_Subsystem_M02_AXI_0_AWSIZE(2 downto 0),
      M02_AXI_0_awvalid => Processing_Subsystem_M02_AXI_0_AWVALID,
      M02_AXI_0_bready => Processing_Subsystem_M02_AXI_0_BREADY,
      M02_AXI_0_bresp(1 downto 0) => Processing_Subsystem_M02_AXI_0_BRESP(1 downto 0),
      M02_AXI_0_bvalid => Processing_Subsystem_M02_AXI_0_BVALID,
      M02_AXI_0_rdata(31 downto 0) => Processing_Subsystem_M02_AXI_0_RDATA(31 downto 0),
      M02_AXI_0_rlast => Processing_Subsystem_M02_AXI_0_RLAST,
      M02_AXI_0_rready => Processing_Subsystem_M02_AXI_0_RREADY,
      M02_AXI_0_rresp(1 downto 0) => Processing_Subsystem_M02_AXI_0_RRESP(1 downto 0),
      M02_AXI_0_rvalid => Processing_Subsystem_M02_AXI_0_RVALID,
      M02_AXI_0_wdata(31 downto 0) => Processing_Subsystem_M02_AXI_0_WDATA(31 downto 0),
      M02_AXI_0_wlast => Processing_Subsystem_M02_AXI_0_WLAST,
      M02_AXI_0_wready => Processing_Subsystem_M02_AXI_0_WREADY,
      M02_AXI_0_wstrb(3 downto 0) => Processing_Subsystem_M02_AXI_0_WSTRB(3 downto 0),
      M02_AXI_0_wvalid => Processing_Subsystem_M02_AXI_0_WVALID,
      M03_AXI_0_araddr(12 downto 0) => Processing_Subsystem_M03_AXI_0_ARADDR(12 downto 0),
      M03_AXI_0_arburst(1 downto 0) => Processing_Subsystem_M03_AXI_0_ARBURST(1 downto 0),
      M03_AXI_0_arcache(3 downto 0) => Processing_Subsystem_M03_AXI_0_ARCACHE(3 downto 0),
      M03_AXI_0_arlen(7 downto 0) => Processing_Subsystem_M03_AXI_0_ARLEN(7 downto 0),
      M03_AXI_0_arlock => Processing_Subsystem_M03_AXI_0_ARLOCK,
      M03_AXI_0_arprot(2 downto 0) => Processing_Subsystem_M03_AXI_0_ARPROT(2 downto 0),
      M03_AXI_0_arready => Processing_Subsystem_M03_AXI_0_ARREADY,
      M03_AXI_0_arsize(2 downto 0) => Processing_Subsystem_M03_AXI_0_ARSIZE(2 downto 0),
      M03_AXI_0_arvalid => Processing_Subsystem_M03_AXI_0_ARVALID,
      M03_AXI_0_awaddr(12 downto 0) => Processing_Subsystem_M03_AXI_0_AWADDR(12 downto 0),
      M03_AXI_0_awburst(1 downto 0) => Processing_Subsystem_M03_AXI_0_AWBURST(1 downto 0),
      M03_AXI_0_awcache(3 downto 0) => Processing_Subsystem_M03_AXI_0_AWCACHE(3 downto 0),
      M03_AXI_0_awlen(7 downto 0) => Processing_Subsystem_M03_AXI_0_AWLEN(7 downto 0),
      M03_AXI_0_awlock => Processing_Subsystem_M03_AXI_0_AWLOCK,
      M03_AXI_0_awprot(2 downto 0) => Processing_Subsystem_M03_AXI_0_AWPROT(2 downto 0),
      M03_AXI_0_awready => Processing_Subsystem_M03_AXI_0_AWREADY,
      M03_AXI_0_awsize(2 downto 0) => Processing_Subsystem_M03_AXI_0_AWSIZE(2 downto 0),
      M03_AXI_0_awvalid => Processing_Subsystem_M03_AXI_0_AWVALID,
      M03_AXI_0_bready => Processing_Subsystem_M03_AXI_0_BREADY,
      M03_AXI_0_bresp(1 downto 0) => Processing_Subsystem_M03_AXI_0_BRESP(1 downto 0),
      M03_AXI_0_bvalid => Processing_Subsystem_M03_AXI_0_BVALID,
      M03_AXI_0_rdata(31 downto 0) => Processing_Subsystem_M03_AXI_0_RDATA(31 downto 0),
      M03_AXI_0_rlast => Processing_Subsystem_M03_AXI_0_RLAST,
      M03_AXI_0_rready => Processing_Subsystem_M03_AXI_0_RREADY,
      M03_AXI_0_rresp(1 downto 0) => Processing_Subsystem_M03_AXI_0_RRESP(1 downto 0),
      M03_AXI_0_rvalid => Processing_Subsystem_M03_AXI_0_RVALID,
      M03_AXI_0_wdata(31 downto 0) => Processing_Subsystem_M03_AXI_0_WDATA(31 downto 0),
      M03_AXI_0_wlast => Processing_Subsystem_M03_AXI_0_WLAST,
      M03_AXI_0_wready => Processing_Subsystem_M03_AXI_0_WREADY,
      M03_AXI_0_wstrb(3 downto 0) => Processing_Subsystem_M03_AXI_0_WSTRB(3 downto 0),
      M03_AXI_0_wvalid => Processing_Subsystem_M03_AXI_0_WVALID,
      M04_AXI_0_araddr(8 downto 0) => Processing_Subsystem_M04_AXI_0_ARADDR(8 downto 0),
      M04_AXI_0_arready => Processing_Subsystem_M04_AXI_0_ARREADY,
      M04_AXI_0_arvalid => Processing_Subsystem_M04_AXI_0_ARVALID,
      M04_AXI_0_awaddr(8 downto 0) => Processing_Subsystem_M04_AXI_0_AWADDR(8 downto 0),
      M04_AXI_0_awready => Processing_Subsystem_M04_AXI_0_AWREADY,
      M04_AXI_0_awvalid => Processing_Subsystem_M04_AXI_0_AWVALID,
      M04_AXI_0_bready => Processing_Subsystem_M04_AXI_0_BREADY,
      M04_AXI_0_bresp(1 downto 0) => Processing_Subsystem_M04_AXI_0_BRESP(1 downto 0),
      M04_AXI_0_bvalid => Processing_Subsystem_M04_AXI_0_BVALID,
      M04_AXI_0_rdata(31 downto 0) => Processing_Subsystem_M04_AXI_0_RDATA(31 downto 0),
      M04_AXI_0_rready => Processing_Subsystem_M04_AXI_0_RREADY,
      M04_AXI_0_rresp(1 downto 0) => Processing_Subsystem_M04_AXI_0_RRESP(1 downto 0),
      M04_AXI_0_rvalid => Processing_Subsystem_M04_AXI_0_RVALID,
      M04_AXI_0_wdata(31 downto 0) => Processing_Subsystem_M04_AXI_0_WDATA(31 downto 0),
      M04_AXI_0_wready => Processing_Subsystem_M04_AXI_0_WREADY,
      M04_AXI_0_wstrb(3 downto 0) => Processing_Subsystem_M04_AXI_0_WSTRB(3 downto 0),
      M04_AXI_0_wvalid => Processing_Subsystem_M04_AXI_0_WVALID,
      clk => clk,
      global_clk => Processing_Subsystem_global_clk,
      global_rst_n(0) => Processing_Subsystem_global_rst_n(0)
    );
SPI_Control: entity work.SPI_Control_imp_1JN7NK1
     port map (
      clk => Processing_Subsystem_global_clk,
      debug(3 downto 0) => NLW_SPI_Control_debug_UNCONNECTED(3 downto 0),
      miso => miso,
      mosi => \^mosi\,
      rstn => Processing_Subsystem_global_rst_n(0),
      spi_clk => \^spi_clk\,
      spi_cs_n => \^spi_cs_n\
    );
ad4134_data_0: component ad4134fw_ad4134_data_0_0
     port map (
      clk => Processing_Subsystem_global_clk,
      data_in0 => data_in0,
      data_in1 => data_in1,
      data_in2 => data_in2,
      data_in3 => data_in3,
      data_out0(23 downto 0) => ad4134_data_0_data_out0(23 downto 0),
      data_out1(23 downto 0) => ad4134_data_0_data_out1(23 downto 0),
      data_out2(23 downto 0) => ad4134_data_0_data_out2(23 downto 0),
      data_out3(23 downto 0) => ad4134_data_0_data_out3(23 downto 0),
      data_rdy => ad4134_data_0_data_rdy,
      dclk_out => \^dclk_out\,
      odr_out => \^odr_out\,
      rst_n => Processing_Subsystem_global_rst_n(0)
    );
bram_tester: entity work.bram_tester_imp_1TQERNJ
     port map (
      BRAM_INIT_araddr(8 downto 0) => Processing_Subsystem_M01_AXI_0_ARADDR(8 downto 0),
      BRAM_INIT_arready => Processing_Subsystem_M01_AXI_0_ARREADY,
      BRAM_INIT_arvalid => Processing_Subsystem_M01_AXI_0_ARVALID,
      BRAM_INIT_awaddr(8 downto 0) => Processing_Subsystem_M01_AXI_0_AWADDR(8 downto 0),
      BRAM_INIT_awready => Processing_Subsystem_M01_AXI_0_AWREADY,
      BRAM_INIT_awvalid => Processing_Subsystem_M01_AXI_0_AWVALID,
      BRAM_INIT_bready => Processing_Subsystem_M01_AXI_0_BREADY,
      BRAM_INIT_bresp(1 downto 0) => Processing_Subsystem_M01_AXI_0_BRESP(1 downto 0),
      BRAM_INIT_bvalid => Processing_Subsystem_M01_AXI_0_BVALID,
      BRAM_INIT_rdata(31 downto 0) => Processing_Subsystem_M01_AXI_0_RDATA(31 downto 0),
      BRAM_INIT_rready => Processing_Subsystem_M01_AXI_0_RREADY,
      BRAM_INIT_rresp(1 downto 0) => Processing_Subsystem_M01_AXI_0_RRESP(1 downto 0),
      BRAM_INIT_rvalid => Processing_Subsystem_M01_AXI_0_RVALID,
      BRAM_INIT_wdata(31 downto 0) => Processing_Subsystem_M01_AXI_0_WDATA(31 downto 0),
      BRAM_INIT_wready => Processing_Subsystem_M01_AXI_0_WREADY,
      BRAM_INIT_wstrb(3 downto 0) => Processing_Subsystem_M01_AXI_0_WSTRB(3 downto 0),
      BRAM_INIT_wvalid => Processing_Subsystem_M01_AXI_0_WVALID,
      BRAM_READ_araddr(12 downto 0) => Processing_Subsystem_M02_AXI_0_ARADDR(12 downto 0),
      BRAM_READ_arburst(1 downto 0) => Processing_Subsystem_M02_AXI_0_ARBURST(1 downto 0),
      BRAM_READ_arcache(3 downto 0) => Processing_Subsystem_M02_AXI_0_ARCACHE(3 downto 0),
      BRAM_READ_arlen(7 downto 0) => Processing_Subsystem_M02_AXI_0_ARLEN(7 downto 0),
      BRAM_READ_arlock => Processing_Subsystem_M02_AXI_0_ARLOCK,
      BRAM_READ_arprot(2 downto 0) => Processing_Subsystem_M02_AXI_0_ARPROT(2 downto 0),
      BRAM_READ_arready => Processing_Subsystem_M02_AXI_0_ARREADY,
      BRAM_READ_arsize(2 downto 0) => Processing_Subsystem_M02_AXI_0_ARSIZE(2 downto 0),
      BRAM_READ_arvalid => Processing_Subsystem_M02_AXI_0_ARVALID,
      BRAM_READ_awaddr(12 downto 0) => Processing_Subsystem_M02_AXI_0_AWADDR(12 downto 0),
      BRAM_READ_awburst(1 downto 0) => Processing_Subsystem_M02_AXI_0_AWBURST(1 downto 0),
      BRAM_READ_awcache(3 downto 0) => Processing_Subsystem_M02_AXI_0_AWCACHE(3 downto 0),
      BRAM_READ_awlen(7 downto 0) => Processing_Subsystem_M02_AXI_0_AWLEN(7 downto 0),
      BRAM_READ_awlock => Processing_Subsystem_M02_AXI_0_AWLOCK,
      BRAM_READ_awprot(2 downto 0) => Processing_Subsystem_M02_AXI_0_AWPROT(2 downto 0),
      BRAM_READ_awready => Processing_Subsystem_M02_AXI_0_AWREADY,
      BRAM_READ_awsize(2 downto 0) => Processing_Subsystem_M02_AXI_0_AWSIZE(2 downto 0),
      BRAM_READ_awvalid => Processing_Subsystem_M02_AXI_0_AWVALID,
      BRAM_READ_bready => Processing_Subsystem_M02_AXI_0_BREADY,
      BRAM_READ_bresp(1 downto 0) => Processing_Subsystem_M02_AXI_0_BRESP(1 downto 0),
      BRAM_READ_bvalid => Processing_Subsystem_M02_AXI_0_BVALID,
      BRAM_READ_rdata(31 downto 0) => Processing_Subsystem_M02_AXI_0_RDATA(31 downto 0),
      BRAM_READ_rlast => Processing_Subsystem_M02_AXI_0_RLAST,
      BRAM_READ_rready => Processing_Subsystem_M02_AXI_0_RREADY,
      BRAM_READ_rresp(1 downto 0) => Processing_Subsystem_M02_AXI_0_RRESP(1 downto 0),
      BRAM_READ_rvalid => Processing_Subsystem_M02_AXI_0_RVALID,
      BRAM_READ_wdata(31 downto 0) => Processing_Subsystem_M02_AXI_0_WDATA(31 downto 0),
      BRAM_READ_wlast => Processing_Subsystem_M02_AXI_0_WLAST,
      BRAM_READ_wready => Processing_Subsystem_M02_AXI_0_WREADY,
      BRAM_READ_wstrb(3 downto 0) => Processing_Subsystem_M02_AXI_0_WSTRB(3 downto 0),
      BRAM_READ_wvalid => Processing_Subsystem_M02_AXI_0_WVALID,
      clk => Processing_Subsystem_global_clk,
      rst_n => Processing_Subsystem_global_rst_n(0)
    );
ila_0: component ad4134fw_ila_0_0
     port map (
      clk => Processing_Subsystem_global_clk,
      probe0(0) => \^odr_out\,
      probe1(0) => \^dclk_out\,
      probe2(0) => data_in0,
      probe3(0) => \^spi_clk\,
      probe4(0) => \^spi_cs_n\,
      probe5(0) => \^mosi\
    );
end STRUCTURE;
