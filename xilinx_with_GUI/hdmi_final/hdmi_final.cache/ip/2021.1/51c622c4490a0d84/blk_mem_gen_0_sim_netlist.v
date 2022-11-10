// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct 21 20:23:44 2022
// Host        : DESKTOP-47517NI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [59:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [59:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [59:0]dina;
  wire [59:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [59:0]NLW_U0_douta_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [59:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.181666 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "60" *) 
  (* C_READ_WIDTH_B = "60" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "60" *) 
  (* C_WRITE_WIDTH_B = "60" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[59:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[59:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33120)
`pragma protect data_block
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
lzhR
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
