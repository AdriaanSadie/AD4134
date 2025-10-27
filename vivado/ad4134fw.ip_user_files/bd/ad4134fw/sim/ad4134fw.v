//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sat Oct 25 15:07:33 2025
//Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
//Command     : generate_target ad4134fw.bd
//Design      : ad4134fw
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LEDS_imp_1273PJO
   (LEDS,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    hb_led,
    s_axi_aclk,
    s_axi_aresetn);
  output [6:0]LEDS;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [0:0]hb_led;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [6:0]LEDS;
  wire [8:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [8:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]c_counter_binary_0_Q;
  wire [0:0]hb_led;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  ad4134fw_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  ad4134fw_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(s_axi_aclk),
        .Q(c_counter_binary_0_Q));
  ad4134fw_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(LEDS));
  ad4134fw_xlslice_1_0 xlslice_1
       (.Din(c_counter_binary_0_Q),
        .Dout(hb_led));
endmodule

module Processing_Subsystem_imp_12DOFPS
   (AXI_GPIO_araddr,
    AXI_GPIO_arready,
    AXI_GPIO_arvalid,
    AXI_GPIO_awaddr,
    AXI_GPIO_awready,
    AXI_GPIO_awvalid,
    AXI_GPIO_bready,
    AXI_GPIO_bresp,
    AXI_GPIO_bvalid,
    AXI_GPIO_rdata,
    AXI_GPIO_rready,
    AXI_GPIO_rresp,
    AXI_GPIO_rvalid,
    AXI_GPIO_wdata,
    AXI_GPIO_wready,
    AXI_GPIO_wstrb,
    AXI_GPIO_wvalid,
    global_clk,
    global_rst_n);
  output [8:0]AXI_GPIO_araddr;
  input AXI_GPIO_arready;
  output AXI_GPIO_arvalid;
  output [8:0]AXI_GPIO_awaddr;
  input AXI_GPIO_awready;
  output AXI_GPIO_awvalid;
  output AXI_GPIO_bready;
  input [1:0]AXI_GPIO_bresp;
  input AXI_GPIO_bvalid;
  input [31:0]AXI_GPIO_rdata;
  output AXI_GPIO_rready;
  input [1:0]AXI_GPIO_rresp;
  input AXI_GPIO_rvalid;
  output [31:0]AXI_GPIO_wdata;
  input AXI_GPIO_wready;
  output [3:0]AXI_GPIO_wstrb;
  output AXI_GPIO_wvalid;
  output global_clk;
  output [0:0]global_rst_n;

  wire [8:0]AXI_GPIO_araddr;
  wire AXI_GPIO_arready;
  wire AXI_GPIO_arvalid;
  wire [8:0]AXI_GPIO_awaddr;
  wire AXI_GPIO_awready;
  wire AXI_GPIO_awvalid;
  wire AXI_GPIO_bready;
  wire [1:0]AXI_GPIO_bresp;
  wire AXI_GPIO_bvalid;
  wire [31:0]AXI_GPIO_rdata;
  wire AXI_GPIO_rready;
  wire [1:0]AXI_GPIO_rresp;
  wire AXI_GPIO_rvalid;
  wire [31:0]AXI_GPIO_wdata;
  wire AXI_GPIO_wready;
  wire [3:0]AXI_GPIO_wstrb;
  wire AXI_GPIO_wvalid;
  wire global_clk;
  wire [0:0]global_rst_n;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;

  ad4134fw_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(global_clk));
  ad4134fw_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(global_rst_n),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  ad4134fw_processing_system7_0_0 processing_system7_0
       (.FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .M_AXI_GP0_ACLK(global_clk),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID));
  ad4134fw_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(AXI_GPIO_araddr),
        .M00_AXI_arready(AXI_GPIO_arready),
        .M00_AXI_arvalid(AXI_GPIO_arvalid),
        .M00_AXI_awaddr(AXI_GPIO_awaddr),
        .M00_AXI_awready(AXI_GPIO_awready),
        .M00_AXI_awvalid(AXI_GPIO_awvalid),
        .M00_AXI_bready(AXI_GPIO_bready),
        .M00_AXI_bresp(AXI_GPIO_bresp),
        .M00_AXI_bvalid(AXI_GPIO_bvalid),
        .M00_AXI_rdata(AXI_GPIO_rdata),
        .M00_AXI_rready(AXI_GPIO_rready),
        .M00_AXI_rresp(AXI_GPIO_rresp),
        .M00_AXI_rvalid(AXI_GPIO_rvalid),
        .M00_AXI_wdata(AXI_GPIO_wdata),
        .M00_AXI_wready(AXI_GPIO_wready),
        .M00_AXI_wstrb(AXI_GPIO_wstrb),
        .M00_AXI_wvalid(AXI_GPIO_wvalid),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(global_clk),
        .aresetn(global_rst_n));
endmodule

module SPI_Control_imp_1JN7NK1
   (clk,
    debug,
    miso,
    mosi,
    rstn,
    spi_clk,
    spi_cs_n);
  input clk;
  output [3:0]debug;
  input miso;
  output mosi;
  input rstn;
  output spi_clk;
  output spi_cs_n;

  wire [7:0]ad4134_control_0_datain;
  wire ad4134_control_0_read;
  wire ad4134_control_0_spi_clk_en;
  wire [7:0]ad4134_control_0_spiaddr;
  wire ad4134_control_0_write;
  wire clk;
  wire [3:0]debug;
  wire miso;
  wire mosi;
  wire rstn;
  wire spi_clk;
  wire [7:0]spi_controller_0_dataout;
  wire spi_controller_0_spidone;
  wire spi_cs_n;

  ad4134fw_ad4134_clock_generat_0_0 ad4134_clock_generator
       (.clk(clk),
        .rstn(rstn),
        .spi_clk(spi_clk),
        .spi_clk_en(ad4134_control_0_spi_clk_en));
  ad4134fw_ad4134_control_0_0 ad4134_control_0
       (.ch_en({1'b0,1'b0,1'b0,1'b0}),
        .clk(clk),
        .datain(ad4134_control_0_datain),
        .dataout(spi_controller_0_dataout),
        .debug(debug),
        .read(ad4134_control_0_read),
        .rstn(rstn),
        .spi_clk_en(ad4134_control_0_spi_clk_en),
        .spiaddr(ad4134_control_0_spiaddr),
        .spidone(spi_controller_0_spidone),
        .write(ad4134_control_0_write));
  ad4134fw_spi_controller_0_0 spi_controller_0
       (.clk(clk),
        .cs_n(spi_cs_n),
        .datain(ad4134_control_0_datain),
        .dataout(spi_controller_0_dataout),
        .miso(miso),
        .mosi(mosi),
        .read(ad4134_control_0_read),
        .rstn(rstn),
        .spiaddr(ad4134_control_0_spiaddr),
        .spidone(spi_controller_0_spidone),
        .write(ad4134_control_0_write));
endmodule

(* CORE_GENERATION_INFO = "ad4134fw,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ad4134fw,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ad4134fw.hwdef" *) 
module ad4134fw
   (LEDS,
    debug,
    hb_led,
    miso,
    mosi,
    spi_clk,
    spi_cs_n);
  output [6:0]LEDS;
  output [3:0]debug;
  output [0:0]hb_led;
  input miso;
  output mosi;
  output spi_clk;
  output spi_cs_n;

  wire [6:0]LEDS;
  wire [8:0]Processing_Subsystem_AXI_GPIO_ARADDR;
  wire Processing_Subsystem_AXI_GPIO_ARREADY;
  wire Processing_Subsystem_AXI_GPIO_ARVALID;
  wire [8:0]Processing_Subsystem_AXI_GPIO_AWADDR;
  wire Processing_Subsystem_AXI_GPIO_AWREADY;
  wire Processing_Subsystem_AXI_GPIO_AWVALID;
  wire Processing_Subsystem_AXI_GPIO_BREADY;
  wire [1:0]Processing_Subsystem_AXI_GPIO_BRESP;
  wire Processing_Subsystem_AXI_GPIO_BVALID;
  wire [31:0]Processing_Subsystem_AXI_GPIO_RDATA;
  wire Processing_Subsystem_AXI_GPIO_RREADY;
  wire [1:0]Processing_Subsystem_AXI_GPIO_RRESP;
  wire Processing_Subsystem_AXI_GPIO_RVALID;
  wire [31:0]Processing_Subsystem_AXI_GPIO_WDATA;
  wire Processing_Subsystem_AXI_GPIO_WREADY;
  wire [3:0]Processing_Subsystem_AXI_GPIO_WSTRB;
  wire Processing_Subsystem_AXI_GPIO_WVALID;
  wire Processing_Subsystem_global_clk;
  wire [0:0]Processing_Subsystem_global_rst_n;
  wire [3:0]debug;
  wire [0:0]hb_led;
  wire miso;
  wire mosi;
  wire spi_clk;
  wire spi_cs_n;

  LEDS_imp_1273PJO LEDS_RnM
       (.LEDS(LEDS),
        .S_AXI_araddr(Processing_Subsystem_AXI_GPIO_ARADDR),
        .S_AXI_arready(Processing_Subsystem_AXI_GPIO_ARREADY),
        .S_AXI_arvalid(Processing_Subsystem_AXI_GPIO_ARVALID),
        .S_AXI_awaddr(Processing_Subsystem_AXI_GPIO_AWADDR),
        .S_AXI_awready(Processing_Subsystem_AXI_GPIO_AWREADY),
        .S_AXI_awvalid(Processing_Subsystem_AXI_GPIO_AWVALID),
        .S_AXI_bready(Processing_Subsystem_AXI_GPIO_BREADY),
        .S_AXI_bresp(Processing_Subsystem_AXI_GPIO_BRESP),
        .S_AXI_bvalid(Processing_Subsystem_AXI_GPIO_BVALID),
        .S_AXI_rdata(Processing_Subsystem_AXI_GPIO_RDATA),
        .S_AXI_rready(Processing_Subsystem_AXI_GPIO_RREADY),
        .S_AXI_rresp(Processing_Subsystem_AXI_GPIO_RRESP),
        .S_AXI_rvalid(Processing_Subsystem_AXI_GPIO_RVALID),
        .S_AXI_wdata(Processing_Subsystem_AXI_GPIO_WDATA),
        .S_AXI_wready(Processing_Subsystem_AXI_GPIO_WREADY),
        .S_AXI_wstrb(Processing_Subsystem_AXI_GPIO_WSTRB),
        .S_AXI_wvalid(Processing_Subsystem_AXI_GPIO_WVALID),
        .hb_led(hb_led),
        .s_axi_aclk(Processing_Subsystem_global_clk),
        .s_axi_aresetn(Processing_Subsystem_global_rst_n));
  Processing_Subsystem_imp_12DOFPS Processing_Subsystem
       (.AXI_GPIO_araddr(Processing_Subsystem_AXI_GPIO_ARADDR),
        .AXI_GPIO_arready(Processing_Subsystem_AXI_GPIO_ARREADY),
        .AXI_GPIO_arvalid(Processing_Subsystem_AXI_GPIO_ARVALID),
        .AXI_GPIO_awaddr(Processing_Subsystem_AXI_GPIO_AWADDR),
        .AXI_GPIO_awready(Processing_Subsystem_AXI_GPIO_AWREADY),
        .AXI_GPIO_awvalid(Processing_Subsystem_AXI_GPIO_AWVALID),
        .AXI_GPIO_bready(Processing_Subsystem_AXI_GPIO_BREADY),
        .AXI_GPIO_bresp(Processing_Subsystem_AXI_GPIO_BRESP),
        .AXI_GPIO_bvalid(Processing_Subsystem_AXI_GPIO_BVALID),
        .AXI_GPIO_rdata(Processing_Subsystem_AXI_GPIO_RDATA),
        .AXI_GPIO_rready(Processing_Subsystem_AXI_GPIO_RREADY),
        .AXI_GPIO_rresp(Processing_Subsystem_AXI_GPIO_RRESP),
        .AXI_GPIO_rvalid(Processing_Subsystem_AXI_GPIO_RVALID),
        .AXI_GPIO_wdata(Processing_Subsystem_AXI_GPIO_WDATA),
        .AXI_GPIO_wready(Processing_Subsystem_AXI_GPIO_WREADY),
        .AXI_GPIO_wstrb(Processing_Subsystem_AXI_GPIO_WSTRB),
        .AXI_GPIO_wvalid(Processing_Subsystem_AXI_GPIO_WVALID),
        .global_clk(Processing_Subsystem_global_clk),
        .global_rst_n(Processing_Subsystem_global_rst_n));
  SPI_Control_imp_1JN7NK1 SPI_Control
       (.clk(Processing_Subsystem_global_clk),
        .debug(debug),
        .miso(miso),
        .mosi(mosi),
        .rstn(Processing_Subsystem_global_rst_n),
        .spi_clk(spi_clk),
        .spi_cs_n(spi_cs_n));
endmodule
