// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Nov  4 10:08:23 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [59:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [59:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [59:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "96" *) 
  (* C_READ_DEPTH_B = "96" *) 
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
  (* C_WRITE_DEPTH_A = "96" *) 
  (* C_WRITE_DEPTH_B = "96" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33248)
`pragma protect data_block
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
G633BDd06NyC/k/Nkq/MQcQ=
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
