// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Nov  4 10:08:24 2022
// Host        : DESKTOP-47517NI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/fpga
//               project/hdmi_final/hdmi_final.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33232)
`pragma protect data_block
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
YQ==
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
