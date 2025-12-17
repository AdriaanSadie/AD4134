// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module ad4134fw (
  spi_clk,
  miso,
  mosi,
  spi_cs_n,
  debug,
  LEDS,
  hb_led,
  dclk_out,
  odr_out,
  data_in0,
  data_in1,
  data_in2,
  data_in3,
  clk
);

  (* X_INTERFACE_IGNORE = "true" *)
  output spi_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input miso;
  (* X_INTERFACE_IGNORE = "true" *)
  output mosi;
  (* X_INTERFACE_IGNORE = "true" *)
  output spi_cs_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]debug;
  (* X_INTERFACE_IGNORE = "true" *)
  output [6:0]LEDS;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]hb_led;
  (* X_INTERFACE_IGNORE = "true" *)
  output dclk_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output odr_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input data_in0;
  (* X_INTERFACE_IGNORE = "true" *)
  input data_in1;
  (* X_INTERFACE_IGNORE = "true" *)
  input data_in2;
  (* X_INTERFACE_IGNORE = "true" *)
  input data_in3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ad4134fw_clk, INSERT_VIP 0" *)
  input clk;

  // stub module has no contents

endmodule
