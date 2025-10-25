//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sat Oct 25 15:07:33 2025
//Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
//Command     : generate_target ad4134fw_wrapper.bd
//Design      : ad4134fw_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ad4134fw_wrapper
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
  wire [3:0]debug;
  wire [0:0]hb_led;
  wire miso;
  wire mosi;
  wire spi_clk;
  wire spi_cs_n;

  ad4134fw ad4134fw_i
       (.LEDS(LEDS),
        .debug(debug),
        .hb_led(hb_led),
        .miso(miso),
        .mosi(mosi),
        .spi_clk(spi_clk),
        .spi_cs_n(spi_cs_n));
endmodule
