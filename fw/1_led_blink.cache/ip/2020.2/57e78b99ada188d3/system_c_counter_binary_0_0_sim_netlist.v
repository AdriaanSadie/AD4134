// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 11 21:30:45 2022
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
g8xC4P+oD0ZGy3OtujUMOQE+rXZOAjdh7dPXlFM4LK7EO3lPigLVz4jsw4U7UZeFxthHsw4yqRyh
9ViyJS6c0FVxWc4NWf0rgOhzACZoHP6PtbS9i90PEPcqtWtNJycnUrTO65jPS9bMJ4kf3O1yPS5S
AXafli3vldw7m85Wv3+d/KMw100ABJXMxDQRKWzjb29///F9t22AV/7bwcakUAEghtyBnwo1hjHG
Vw97IAoplUX9xnEiLeTH5zffpjB+DO84R4hwKnLysz2OD75A/hyuIPtzk6JimNbrjCKoh3nG5y+q
QiqDWpQU4ukPnHSSIBtCtUImBLU07ROzytxq9w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PtutD7krcBFYLSbyLqOTNwxuChui1B0hTVWREBbca7NKbUpT+npztYGGZ2pT14T6mkFJqqkUJk/t
tw0BoeegiAWJjpJeNUkOOKiTAPxWgxR/GEgyI905Yqml6Fhy67vxR535xx1f8jTIk/ZSMQx8Bva6
l3G4nAjTvBwBPAopdOfRMOBhY/egUbzfpe1p9fmJLXUDjIcUpkKur90xxh5lQ55km04luUrBsV5b
8JoCO3Jl5/KSKr/MI4xkcFn2Xh4/phG1R3fV7ZBtkDOnytIJbdViw8VH8j1RyeXBC+EOfmENRkJX
sf/3zr4WqhxWTupc47ROOIyCR/HX9ACzbEZsjA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15248)
`pragma protect data_block
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
KZ2dwsN6Hu36Xj5bYVweXTt03kLptV/BFs7agYI=
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
