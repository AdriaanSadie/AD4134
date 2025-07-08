// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:scc_config:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_scc_config_0_0 (
  cfg_in,
  gain_ctrl_1_1,
  gain_ctrl_1_0,
  gain_ctrl_2_1,
  gain_ctrl_2_0,
  switch_1,
  switch_2,
  n_enable_switch,
  led_2,
  led_1
);

input wire [31 : 0] cfg_in;
output wire gain_ctrl_1_1;
output wire gain_ctrl_1_0;
output wire gain_ctrl_2_1;
output wire gain_ctrl_2_0;
output wire switch_1;
output wire switch_2;
output wire n_enable_switch;
output wire led_2;
output wire led_1;

  scc_config inst (
    .cfg_in(cfg_in),
    .gain_ctrl_1_1(gain_ctrl_1_1),
    .gain_ctrl_1_0(gain_ctrl_1_0),
    .gain_ctrl_2_1(gain_ctrl_2_1),
    .gain_ctrl_2_0(gain_ctrl_2_0),
    .switch_1(switch_1),
    .switch_2(switch_2),
    .n_enable_switch(n_enable_switch),
    .led_2(led_2),
    .led_1(led_1)
  );
endmodule
