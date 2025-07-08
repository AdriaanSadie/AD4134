// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec 18 16:40:28 2023
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_c_counter_binary_0_0_sim_netlist.v
// Design      : system_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2432)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15248)
`pragma protect data_block
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
ZZZo1MJyVh4OUbI85KgfhbKN8WI+o2rv3EJrrgg=
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
