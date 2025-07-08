// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec 18 16:40:29 2023
// Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/adria/OneDrive/Documents/Adriaan/Werk
//               Goedjies/BTT/fw/btt_sccv2_fw/fw/1_led_blink.gen/sources_1/bd/system/ip/system_c_counter_binary_0_0/system_c_counter_binary_0_0_sim_netlist.v}
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2448)
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
go1k1kGWnT+ehnbIf4fNkUL0XmAazSjAkwA+eOJvTuwsN8CODG38VNKwdrPGFLKmGT38/1dbskXv
nYVFeMDXLdClRUmgDR/vjy4tRoLc8atCHUmlsa0jEN53KTbE4DKDPto7v+NtTz0fFw8CI0UwzOw6
HWEizLVBCagR2A2S5Iia8/BG5c5IwEu+xU1yadzC9RGSD6e/bl6NzqGOS3XoI74mYNhtmthvkB8u
ol/4/Cb0EvK68I5kz6y4O1pZAtQFm8r6bDcl7SQkszMbRJRUXpjgNrjYjqvpaiXEUiR2XBBMCjGn
+ZdI+UeheyVV9TofOnwx2jG/Z+ri7oocWeKVqw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4GaCe/xPYXJ1MimomuMTDhVZ94r3lAWOJitEEhoQYCAAVBi/CuWTszjP6rwNmY6+C8AzicTR8abz
O3ci4wTGqu0TZWnBZbjQAIx4WpO2QTXbYrDFSfKUqvFyWS1dTQwHJGN4GiWkt3ltt6A7xxy+VSZ+
OeDsRfRCbAlGH1t/p7mVSRDazEux1g149dE5lA1ABa/xkNRzoPxpb4SSeC8G/GS0iG8zjcdK6R4P
gA0arGttnZ+F42Mk+kMzMs0Fau1R1nEVcJkz0DaBNp+XFT10jaVyPJrKKVp0JcGYDeXy3329ZfQ0
5HoF/MS6bKvaAaYGYRwBvNVQl3xu2Dow2j/9Mw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15408)
`pragma protect data_block
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
ZabLLmUEqi3AXHoGVM6VopuX
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
