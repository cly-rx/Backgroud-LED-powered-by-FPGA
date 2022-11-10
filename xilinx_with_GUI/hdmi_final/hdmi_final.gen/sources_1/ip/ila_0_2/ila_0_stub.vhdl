-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Nov  4 20:57:40 2022
-- Host        : DESKTOP-47517NI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/fpga
--               project/hdmi_final/hdmi_final.gen/sources_1/ip/ila_0_2/ila_0_stub.vhdl}
-- Design      : ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 59 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end ila_0;

architecture stub of ila_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[59:0],probe1[0:0],probe2[0:0],probe3[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2021.1";
begin
end;
