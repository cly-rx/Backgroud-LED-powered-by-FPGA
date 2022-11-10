// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Oct 22 20:34:20 2022
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
h3Wg
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
