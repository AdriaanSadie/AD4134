// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec 18 16:40:28 2023
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_c_counter_binary_0_0 -prefix
//               system_c_counter_binary_0_0_ system_c_counter_binary_0_0_sim_netlist.v
// Design      : system_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 26} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 26}" *) output [25:0]Q;

  wire CLK;
  wire [25:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  system_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WpplON9gajPqZwUKldyuoeqmBpIPSBxYcr5JWxrDlqNhqbxliKwmPwmbmeArplvGzrWaKVJ8yMLk
xTgTAsmnRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PywlUwtIgAXcje485P53GElPqY0h5tEj5ZDYGG4C1L/pCl1vhbCpI4Lfv1uBUhTCUgt0vUUApdRs
K2IImoVdVbz1EI11gNNCxuGNEsj4QbnWfiiRUf8TsfVO4gWgHDJkD4RJc+jcEVx/ZrSadMs2mHy7
KNZCnUFKCidfdRy/hkw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
unxmOFx/kGsfl24PCNNEZkygDDk8LvPrdhRZmBKwU8hEl0IYKnNbmVzy0GX33C+cHqleOLdJYv/h
wKQu75v68Cl8qlEV1Vqfa7UnK7q4w6bLjBa9BHtnG7S/H0Ywr54xnAXnSKvxTDfYX2sDgkcwSXoh
X0q3YhQRNlz6nKs2p675XjlEojeW92VNoWv8pHj8MG/qmJ8VohHbQpf0YxozMcZpH0CF/Ozm/fua
Vyb99q8DdEkMUxP21j9+F/I46Pbkcvq9zC2FY4Mv+gYZfH461p3qA1P0UNBQRmRRkOCCOAxz3PHk
qsrTTWDzAK0GxdzwQ7cbJFKBbdBVaV6+4memyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA50PpjJaJ8uV4EV7d4QCm5ucA0irsAJKsW/2yhM7uxfdfY6+ycy5Dlu6AXQj787AwSOkZjihqnA
0ZuEvQsnWN+aN5ZJgO/zI+HLHFGLXVZBK4YXwqHRk9mh8mtXkERd+D/Ig8IyNAjqeNFZtCo2lzge
AowqsmCoC67eYhNG5p9fzPjDy5k+MEVGOvXR621zFn4wRLcANXbLLaqTgDI902JfKeuW3HE+NVjz
0kcqt1g2MHeO7vwLhiZFHoP5uU7phxW1PW5Y7GQhQXmnbxXYl2WKNQoAt9enH/W7IaH1Se4RY/MA
HR2SD6NxDpfgAqD/XrFGW0hzhzJlI6XWA2wiLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2C5b5Vf7eNgxsVgM+blog4oljuJGPE5amBDDw4IFWKEcJNxmK8iNsR1/nSU618rRzWshK/Fg8uY
H1Fs2nnnxOsbeSPfDz60zapynorXwzsi0dI/KtefB5PI8A9PzP9LZmPF5GoKgCyeO5RXGRNhstIX
p1ezoG0hvuiDRGjlMKc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
et3u9Nh2LCj8dZdn07LM2qUls9+keyt7JsISbFOsxR6cpH5B16zv97Rzwn74yMYiUBGAvUZ1T1v0
O4vr5rGCW0AQjy4M5nemZ9M6vuyPMPAob/tFs+R7Jb9fpt8qHPEH64ni3rOSEVPe07L1FARbFVCK
LUHHDuIaqTmTbQ20cYPgWi7rOJGYZaRI6TwujcBF5oJDmg+gry6t509xfzd/HPgX+tLX6NJuYBCP
ePAG3UjlqodSXw8U64081MNLzzmsSrNe2EnZfEXP2ODfphEFJ/9pYKdR8lyWMJQ6+Pu3vdvO+IIy
c0Cghu/ZzVtvJ7/zrgoR8hCFeuBzbeRvdhR5Fg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m2Nc/hOcqeBJFQqyL9SEkYAeLvPo2q4UIb79AxfyebsFVgipkPXe9Fr2Ly0oEBcpASNJVxE/qNX1
ncav7fcSQJ3AUai6lNvLIkrtdkVBATFfCbWr3T9gTPaXD1ZY1pnli57FrU8DixIaFRoeIg2lfWgX
Ejddks6fcCByoDETUKwOz1fhlUulegwij55Z9od8zC/RPnW2JzX7L7mQWAla4j7M4VzHtS/8AzAP
IcrhT+J0DDWfBDrYcYDo/5IL9X+cSnPrj3CzqrbyEBZ9J0tyVT8g9z9bEph9htiA9EuYQVcpbIB1
qmVC7LtsXr7t9qeijbb4dFcovnX3H5CRc3Xybg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UPKDuDrUpCqZq5As9ryjcITL7qO0/Aj65ai6MGkRJ5fsdrAIoRtKd/gZdMexAxpHxy5h8KvNWciR
45oibPZHqHo46BRzAtonK7cDtSPx2RaIzOvjoexdDjwbvwPqiCJhCul2J8EsDU1WPbSUWx7vpKn+
MYAq9BJrKBfkewHr8CqWmQugmrAbTxft49DV5mIiIEOhVCOTMV21e+pl1SODhXcx/d88X1XTvMY+
OkEL+ZPfyhoGAg9Tj5WjHVoAT0XcCjHObI3kOJqt3hPr2RYm1+yghuhT5ntdvMHa6iEBG/En+ah4
sN9yhdXkV5VsiSpxp/EsAX5tQkOiDZCtXXHNeQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBmtHpx5e1XZPx6PBIEZ/58/PYTolg3kUSJ5yidwAgHM+vcWKSyMd/LXtLj20j7EpJVceIapdGYF
4nkL9OaJnw2p3gO+zvHk44FY2WlPcGjJ9qy4Z8049p1vFldJbTCwn8j2kMzXfA1XD0ll2p+WVUVI
EDJhvfyMnZOPwoecUCmOKjFhw7Oe93CtOZTTQI+gL+gADbsYMQ4cpMYr3spVh2jDfyhZRzb4Bm5h
ZlvJFfItmnW4/YJNUbQXoE22pLPLOaoAtOONuU5fFYk7jrQlcGNSRbnIf7aS7oW0kJmbes5lzfoD
QmLyp2jy+Pig+uTYrKUU4x0GRLNhdkoO25o5ew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2400)
`pragma protect data_block
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
i7GlQ1V5
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R+TTV2BAhe9Ek8IveLCAIK+vyB2qa4TorazWyGCbrxCKkVhTBvAD6RqPeP/JqtRuh2zDPzraR9rT
gUyNSWD83A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XM2mYTm+gCT0AhW4S5p7IlzH34WHm/fa2tLSENK5xQp44huwLBqk+dBcYbe4GM+6wqA3pzoUNE9T
SluI3P6DpsOt14ispiaJSciB+VdlU+Q0e63sKyfq++TGO3CTW5OhLIxojUbYrTbdY4WbGkk4yG0Y
qGwauBBx1uBueCA2GC4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M9U+BjMD5E96pT2zTDB1OSiHn8IS+G+aDNa3MIF/jeClLSPAOJwufjuzRcyAtwx0354Pb7AaFOwR
6CcoWPQM1dcUC6avyG/0PRrtZP/KpXS3/9PiWsaFHPYVLfqBMCUDoraXwfpfMxmOy8hD0iI6TtWc
j1xJUXVsbv+kqOeTUloYmwdRx/8cs46FvZfnFpiZXMFMsTsT9zvmCyNxiZefgFKT064BWsCkg2fa
W2IXperFJQzpE9mXVwGSjl6xDUp55esPyEPcDI4xy0T+q2KtBQj2Qn2DJRZ8DKAvjXNQmo/tbweh
l+RGgbFge035kxDZ/t5pFweR/SYowAMdG2yOwA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
absLoVdCG0/WeiZ9M4NtAUjz+XnLze4vahkoVw40DL65GHoB/ikdBh+LyLQ7V3LckxaJp7Ihe1ow
2yXZZfuygvynBc+n/CI1EDwjo64cUTgVLg6gqySahs3D5Xkp8kFBBxARQmdoErJqqhefej6SXrxx
13OxNfq4vRGx7YG4l2M61gUhVtUX9poQdq5dxitmrLXD1kpdnUsj/YIpVBaLv/TBn9G44WiyRNIK
ojx9q2JyYKiWBfcBh+fpJV9PudrBUPMu8kvWsRizFr+r8Ya09D3o9iJUZ6FWOBiFsidvZNgmp1u/
nv56cp+qpaTesLtwmKiZbrhQtq6YXQvzPpDQXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t2oJ825g01R4DfbjT3g+VDPmL9PAyVC2t8Ozl94Xb2xucD77bNiPcvutyZFkA0lqWfRMp8Z3kkTE
OOo/FpGS3c1SP04/jMKLZD9E7DL6iVBRfxa3itPHxsSD0RAP4yPHw3yCiIsmB0q25x8+so3h/QOv
DKZh98m5ku9UnG+pY6c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koDeaCPE+GNu9rMKu+nnX8UvNKbOa7mKCRwRUXCmZNo0yL7JuxnKQiStr89+6Ws9bOIbY8P6XKLC
WoSokcQl2MIZuh7gUJ+LQSPTB9HIkHPuGGPibAaiYY3e/6TBvv0+QG5gTvuf18Nz0UQyxRzNBFY7
2e0fNw+zoh4XJubbVaqqBBqTNyIM/naqx2G+DBhvJF/RlcpsJUe2eVt+uttis5ukRD1ndenp7rvA
+Ub6MDtoxunfFJsXEQ8QZkuZiT5XfcmJdkquGywSafJqKksYNJZpGleQnak/ePqKq8cYIbfpqOo1
MlqTFX2khe/WU/cqsW+5jXmRAgWueTOvg5hW2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wZaMVki09KtetQFaQKbOEpc8bkgxHSc8zyuzh+dwZ44uN2hbx3K7ITnC8dDkn3EMZGwk7C0u4eBt
eru14n5jQ1LfuUg4cKuwRNAgFxc7GaymqPYSRK9OQZHWZ+w6Alh4X9YWb6UVcsv4sCJA8YT9QeZ2
8PJYA3L+OY2t8Dcx3JcdLeVgMWDrP/zfpXyfMdPpwgBSSCqJHFsYdlG06onoQq2DDJ/SpC0W2oHU
JJAOTss7Cf3giWx2XTrorU5k4KbClTaEv4QAsogatkMf+oa9OfJQg5b7OUNbNqSzTV2IvRXtKIBC
N3mFkAtau93JXZzbow8bF+Y708RmUyIR5AX9og==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gidhQdKtgCKZpycO58SKONz/x64JxoYiDvm7CY7FhAgR8N3zqVR49qh/d9ImLGjAjXhz9ISSvhiE
1TpzIsqbVIoSEHhHCsw8fW3eNfjSKG9+5c0qMghoZBwnf9txWcso6wczPV8wSYfFgOnId+/H4w2u
MtSdrp2j2HeGCN7hmduXDeRIcLF+ekxNNZVk0wscD3yxYdFDWscebLgM1N+Cx8uwWvloVVe1fNSl
IBecuxue/tBnCdqw10D1fC8gGorhdNUhO2bTYqZL/+voIIAXkux7Z0BGx6B2uSJYuZ0j2LS23yyk
r0QDrL3YOpbEPBbFhTy9LQz59rkITBRhVeBqVg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lv7TtlI9EkMH+4ifu40NSGcF5VLP+fQr0uBXzvHjgpvggoEPEBlbTyXFtewlIbLNuHO4GjqSxFa3
oGjcKGgjJ4JKEHh9NZ/42sDCCnN1TS1zrfhPhpg3aJ3aGsOq5GxB6oAuNGvsTC7HgKk9lvgZfAiC
9ubfhd8fCUCrbS2jYuGLkpNxtwRxEbxLfMa6l2yusSJt8g6sfH0aGGBJWZjKnUZ1SyA1DmzZW3ox
o1AE17uwesEX5+JGPaqlsN+jLpbHhpv24GF4NS806LjJrXOO9qXbZScc78Z/R2xMBhLYAC0AHR8o
o8hlz9kYq3NSGSCdEMOcxNjVxDMYBrdZ+Lc+ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cAGzU7IyL78zZXlErjq99XGYzowp5rP6IJnJix7qhgyym3V9KKAQzVU4QTUz/nQCx/UjU4GshW75
Rciwt1cLzs0r+nsqVASFO71QUMk4g/uHmh/8+ySko5ygFCYR7AJIsw4Uus3lKid/2VVwGVF41bbT
IWspukZ34qGTyZ61qeKm5GlEO9ZhE6EgOowEWmWMGb4bIdmpNjFP5wujgSLFnUtTFkTgFrHYhDfq
In87nqTElurt6oFy7AuitOxgcf+U7z0UL27POpS4FBRSIhjHHmzomYp4LHKKsr9xT6nTRG8HiY8O
NLwtjLZbdZXs3QBq/96/uKhxeegGM0o4m3XMPQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X30uLBHmZBVfclK6fk3mE+NqSPz1zQKIMpJsAS2+/G/pRud1nH7Ted4tXscIpA70e36CEFI2p9QI
TNm0iMD9hDzHgztF9E/dwJpWzUoFNWSXJ9yHkuwe+da5v4WudPG1gWSl+dPnjUfn11y0cgRFiBk1
8eDXJUY72OuuB/ThdUxtV1nVl/l/qF9eL6/dlKQiZ0QBBzekyvB7cnY2e1dCP6UcliCoVcwJKHKA
Di1Wj++5Jho/XWJvOJ/PNE4Z2BJuHH6hmHesUH6c073TbWdGt0xmlOwvTHAyMPOMta1kc0s44B43
z7FVbC8JuOgaILYQ//cyLPLGdGYSuAFrFgrHoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15088)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
