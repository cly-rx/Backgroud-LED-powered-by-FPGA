// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Oct 20 14:35:22 2022
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
  (* C_READ_DEPTH_A = "18" *) 
  (* C_READ_DEPTH_B = "18" *) 
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
  (* C_WRITE_DEPTH_A = "18" *) 
  (* C_WRITE_DEPTH_B = "18" *) 
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
D2bG
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
