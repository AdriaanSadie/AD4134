//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sat Oct 25 14:04:35 2025
//Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
//Command     : generate_target ad4134fw.bd
//Design      : ad4134fw
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Processing_Subsystem_imp_12DOFPS
   (AXI_GPIO_araddr,
    AXI_GPIO_arburst,
    AXI_GPIO_arcache,
    AXI_GPIO_arid,
    AXI_GPIO_arlen,
    AXI_GPIO_arlock,
    AXI_GPIO_arprot,
    AXI_GPIO_arqos,
    AXI_GPIO_arready,
    AXI_GPIO_arregion,
    AXI_GPIO_arsize,
    AXI_GPIO_aruser,
    AXI_GPIO_arvalid,
    AXI_GPIO_awaddr,
    AXI_GPIO_awburst,
    AXI_GPIO_awcache,
    AXI_GPIO_awid,
    AXI_GPIO_awlen,
    AXI_GPIO_awlock,
    AXI_GPIO_awprot,
    AXI_GPIO_awqos,
    AXI_GPIO_awready,
    AXI_GPIO_awregion,
    AXI_GPIO_awsize,
    AXI_GPIO_awuser,
    AXI_GPIO_awvalid,
    AXI_GPIO_bid,
    AXI_GPIO_bready,
    AXI_GPIO_bresp,
    AXI_GPIO_buser,
    AXI_GPIO_bvalid,
    AXI_GPIO_rdata,
    AXI_GPIO_rid,
    AXI_GPIO_rlast,
    AXI_GPIO_rready,
    AXI_GPIO_rresp,
    AXI_GPIO_ruser,
    AXI_GPIO_rvalid,
    AXI_GPIO_wdata,
    AXI_GPIO_wid,
    AXI_GPIO_wlast,
    AXI_GPIO_wready,
    AXI_GPIO_wstrb,
    AXI_GPIO_wuser,
    AXI_GPIO_wvalid,
    global_clk,
    global_rst_n);
  output AXI_GPIO_araddr;
  output AXI_GPIO_arburst;
  output AXI_GPIO_arcache;
  output AXI_GPIO_arid;
  output AXI_GPIO_arlen;
  output AXI_GPIO_arlock;
  output AXI_GPIO_arprot;
  output AXI_GPIO_arqos;
  input AXI_GPIO_arready;
  output AXI_GPIO_arregion;
  output AXI_GPIO_arsize;
  output AXI_GPIO_aruser;
  output AXI_GPIO_arvalid;
  output AXI_GPIO_awaddr;
  output AXI_GPIO_awburst;
  output AXI_GPIO_awcache;
  output AXI_GPIO_awid;
  output AXI_GPIO_awlen;
  output AXI_GPIO_awlock;
  output AXI_GPIO_awprot;
  output AXI_GPIO_awqos;
  input AXI_GPIO_awready;
  output AXI_GPIO_awregion;
  output AXI_GPIO_awsize;
  output AXI_GPIO_awuser;
  output AXI_GPIO_awvalid;
  input AXI_GPIO_bid;
  output AXI_GPIO_bready;
  input AXI_GPIO_bresp;
  input AXI_GPIO_buser;
  input AXI_GPIO_bvalid;
  input AXI_GPIO_rdata;
  input AXI_GPIO_rid;
  input AXI_GPIO_rlast;
  output AXI_GPIO_rready;
  input AXI_GPIO_rresp;
  input AXI_GPIO_ruser;
  input AXI_GPIO_rvalid;
  output AXI_GPIO_wdata;
  output AXI_GPIO_wid;
  output AXI_GPIO_wlast;
  input AXI_GPIO_wready;
  output AXI_GPIO_wstrb;
  output AXI_GPIO_wuser;
  output AXI_GPIO_wvalid;
  output global_clk;
  output [0:0]global_rst_n;

  wire AXI_GPIO_araddr;
  wire [1:0]\^AXI_GPIO_arburst ;
  wire [3:0]\^AXI_GPIO_arcache ;
  wire AXI_GPIO_arid;
  wire AXI_GPIO_arlen;
  wire AXI_GPIO_arlock;
  wire [2:0]\^AXI_GPIO_arprot ;
  wire [3:0]\^AXI_GPIO_arqos ;
  wire AXI_GPIO_arready;
  wire [3:0]\^AXI_GPIO_arregion ;
  wire [2:0]\^AXI_GPIO_arsize ;
  wire AXI_GPIO_aruser;
  wire [0:0]\^AXI_GPIO_arvalid ;
  wire AXI_GPIO_awaddr;
  wire [1:0]\^AXI_GPIO_awburst ;
  wire [3:0]\^AXI_GPIO_awcache ;
  wire AXI_GPIO_awid;
  wire AXI_GPIO_awlen;
  wire AXI_GPIO_awlock;
  wire [2:0]\^AXI_GPIO_awprot ;
  wire [3:0]\^AXI_GPIO_awqos ;
  wire AXI_GPIO_awready;
  wire [3:0]\^AXI_GPIO_awregion ;
  wire [2:0]\^AXI_GPIO_awsize ;
  wire AXI_GPIO_awuser;
  wire [0:0]\^AXI_GPIO_awvalid ;
  wire AXI_GPIO_bid;
  wire [0:0]\^AXI_GPIO_bready ;
  wire AXI_GPIO_bresp;
  wire AXI_GPIO_buser;
  wire AXI_GPIO_bvalid;
  wire AXI_GPIO_rdata;
  wire AXI_GPIO_rid;
  wire AXI_GPIO_rlast;
  wire [0:0]\^AXI_GPIO_rready ;
  wire AXI_GPIO_rresp;
  wire AXI_GPIO_ruser;
  wire AXI_GPIO_rvalid;
  wire AXI_GPIO_wdata;
  wire AXI_GPIO_wid;
  wire [0:0]\^AXI_GPIO_wlast ;
  wire AXI_GPIO_wready;
  wire AXI_GPIO_wstrb;
  wire AXI_GPIO_wuser;
  wire [0:0]\^AXI_GPIO_wvalid ;
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
  wire [0:0]processing_system7_0_M_AXI_GP0_ARREADY;
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
  wire [0:0]processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire [0:0]processing_system7_0_M_AXI_GP0_BVALID;
  wire processing_system7_0_M_AXI_GP0_RDATA;
  wire processing_system7_0_M_AXI_GP0_RID;
  wire [0:0]processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire [0:0]processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire [0:0]processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;

  assign AXI_GPIO_arburst = \^AXI_GPIO_arburst [0];
  assign AXI_GPIO_arcache = \^AXI_GPIO_arcache [0];
  assign AXI_GPIO_arprot = \^AXI_GPIO_arprot [0];
  assign AXI_GPIO_arqos = \^AXI_GPIO_arqos [0];
  assign AXI_GPIO_arregion = \^AXI_GPIO_arregion [0];
  assign AXI_GPIO_arsize = \^AXI_GPIO_arsize [0];
  assign AXI_GPIO_arvalid = \^AXI_GPIO_arvalid [0];
  assign AXI_GPIO_awburst = \^AXI_GPIO_awburst [0];
  assign AXI_GPIO_awcache = \^AXI_GPIO_awcache [0];
  assign AXI_GPIO_awprot = \^AXI_GPIO_awprot [0];
  assign AXI_GPIO_awqos = \^AXI_GPIO_awqos [0];
  assign AXI_GPIO_awregion = \^AXI_GPIO_awregion [0];
  assign AXI_GPIO_awsize = \^AXI_GPIO_awsize [0];
  assign AXI_GPIO_awvalid = \^AXI_GPIO_awvalid [0];
  assign AXI_GPIO_bready = \^AXI_GPIO_bready [0];
  assign AXI_GPIO_rready = \^AXI_GPIO_rready [0];
  assign AXI_GPIO_wlast = \^AXI_GPIO_wlast [0];
  assign AXI_GPIO_wvalid = \^AXI_GPIO_wvalid [0];
  ad4134fw_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(global_clk),
        .reset(1'b0));
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
        .M_AXI_GP0_BID({processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID,processing_system7_0_M_AXI_GP0_BID}),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA({processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA,processing_system7_0_M_AXI_GP0_RDATA}),
        .M_AXI_GP0_RID({processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID,processing_system7_0_M_AXI_GP0_RID}),
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
        .M00_AXI_arburst(\^AXI_GPIO_arburst ),
        .M00_AXI_arcache(\^AXI_GPIO_arcache ),
        .M00_AXI_arid(AXI_GPIO_arid),
        .M00_AXI_arlen(AXI_GPIO_arlen),
        .M00_AXI_arlock(AXI_GPIO_arlock),
        .M00_AXI_arprot(\^AXI_GPIO_arprot ),
        .M00_AXI_arqos(\^AXI_GPIO_arqos ),
        .M00_AXI_arready(AXI_GPIO_arready),
        .M00_AXI_arregion(\^AXI_GPIO_arregion ),
        .M00_AXI_arsize(\^AXI_GPIO_arsize ),
        .M00_AXI_aruser(AXI_GPIO_aruser),
        .M00_AXI_arvalid(\^AXI_GPIO_arvalid ),
        .M00_AXI_awaddr(AXI_GPIO_awaddr),
        .M00_AXI_awburst(\^AXI_GPIO_awburst ),
        .M00_AXI_awcache(\^AXI_GPIO_awcache ),
        .M00_AXI_awid(AXI_GPIO_awid),
        .M00_AXI_awlen(AXI_GPIO_awlen),
        .M00_AXI_awlock(AXI_GPIO_awlock),
        .M00_AXI_awprot(\^AXI_GPIO_awprot ),
        .M00_AXI_awqos(\^AXI_GPIO_awqos ),
        .M00_AXI_awready(AXI_GPIO_awready),
        .M00_AXI_awregion(\^AXI_GPIO_awregion ),
        .M00_AXI_awsize(\^AXI_GPIO_awsize ),
        .M00_AXI_awuser(AXI_GPIO_awuser),
        .M00_AXI_awvalid(\^AXI_GPIO_awvalid ),
        .M00_AXI_bid(AXI_GPIO_bid),
        .M00_AXI_bready(\^AXI_GPIO_bready ),
        .M00_AXI_bresp({AXI_GPIO_bresp,AXI_GPIO_bresp}),
        .M00_AXI_buser(AXI_GPIO_buser),
        .M00_AXI_bvalid(AXI_GPIO_bvalid),
        .M00_AXI_rdata(AXI_GPIO_rdata),
        .M00_AXI_rid(AXI_GPIO_rid),
        .M00_AXI_rlast(AXI_GPIO_rlast),
        .M00_AXI_rready(\^AXI_GPIO_rready ),
        .M00_AXI_rresp({AXI_GPIO_rresp,AXI_GPIO_rresp}),
        .M00_AXI_ruser(AXI_GPIO_ruser),
        .M00_AXI_rvalid(AXI_GPIO_rvalid),
        .M00_AXI_wdata(AXI_GPIO_wdata),
        .M00_AXI_wid(AXI_GPIO_wid),
        .M00_AXI_wlast(\^AXI_GPIO_wlast ),
        .M00_AXI_wready(AXI_GPIO_wready),
        .M00_AXI_wstrb(AXI_GPIO_wstrb),
        .M00_AXI_wuser(AXI_GPIO_wuser),
        .M00_AXI_wvalid(\^AXI_GPIO_wvalid ),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR[0]),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID[0]),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN[0]),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK[0]),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR[0]),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID[0]),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN[0]),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK[0]),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awuser(1'b0),
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
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA[0]),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID[0]),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB[0]),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(global_clk),
        .aresetn(global_rst_n));
endmodule

(* CORE_GENERATION_INFO = "ad4134fw,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ad4134fw,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ad4134fw.hwdef" *) 
module ad4134fw
   (spi_clk);
  output spi_clk;

  wire Processing_Subsystem_global_clk;
  wire [0:0]Processing_Subsystem_global_rst_n;
  wire spi_clk;

  Processing_Subsystem_imp_12DOFPS Processing_Subsystem
       (.AXI_GPIO_arready(1'b0),
        .AXI_GPIO_awready(1'b0),
        .AXI_GPIO_bid(1'b0),
        .AXI_GPIO_bresp(1'b0),
        .AXI_GPIO_buser(1'b0),
        .AXI_GPIO_bvalid(1'b0),
        .AXI_GPIO_rdata(1'b0),
        .AXI_GPIO_rid(1'b0),
        .AXI_GPIO_rlast(1'b0),
        .AXI_GPIO_rresp(1'b0),
        .AXI_GPIO_ruser(1'b0),
        .AXI_GPIO_rvalid(1'b0),
        .AXI_GPIO_wready(1'b0),
        .global_clk(Processing_Subsystem_global_clk),
        .global_rst_n(Processing_Subsystem_global_rst_n));
  ad4134fw_ad4134_clock_generat_0_0 ad4134_clock_generator
       (.clk(Processing_Subsystem_global_clk),
        .rstn(Processing_Subsystem_global_rst_n),
        .spi_clk(spi_clk),
        .spi_clk_en(1'b0));
endmodule
