-- Created by IP Generator (Version 2021.1-SP7.3 build 94852)
-- Instantiation Template
--
-- Insert the following codes into your VHDL file.
--   * Change the_instance_name to your own instance name.
--   * Change the net names in the port map.


COMPONENT G_re
  PORT (
    wr_data : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    wr_addr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    rd_addr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    wr_en : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    rd_data : OUT STD_LOGIC_VECTOR(59 DOWNTO 0)
  );
END COMPONENT;


the_instance_name : G_re
  PORT MAP (
    wr_data => wr_data,
    wr_addr => wr_addr,
    rd_addr => rd_addr,
    wr_clk => wr_clk,
    rd_clk => rd_clk,
    wr_en => wr_en,
    rst => rst,
    rd_data => rd_data
  );
