library ieee;
use ieee.std_logic_1164.all;

entity d_ms_ff is 
  port (
    d, clk : in STD_LOGIC;
    y, not_y : out STD_LOGIC
  );  
	
end d_ms_ff;

architecture behav of d_ms_ff is

--SIGNAL r_g, s_g, y_a, y_b : STD_LOGIC;
SIGNAL Qm : STD_LOGIC;
SIGNAL not_Qm : STD_LOGIC;

component d_latch
  port (
    d, clk : in STD_LOGIC;
    y, not_y : out STD_LOGIC
  );
end component;


--ATTRIBUTE KEEP : BOOLEAN;
--ATTRIBUTE KEEP OF r_g, s_g, y_a, y_b : SIGNAL IS true;

begin
  
  -- master: D, clk, y, not_y
  D1:d_latch port map(d, clk, Qm, not_Qm);
  
  -- slave: D, clk, y, not_y
  D2:d_latch port map(Qm, "NOT"(clk), y, not_y);


end behav;
