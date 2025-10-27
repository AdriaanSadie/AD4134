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
  hb_led
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

  // stub module has no contents

endmodule
