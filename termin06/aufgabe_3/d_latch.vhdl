library ieee;
use ieee.std_logic_1164.all;

entity d_latch is 
  port (
    d, clk : in std_logic;
    y, not_y : out std_logic
  );  
	
end d_latch;

architecture behav of d_latch is

SIGNAL r_g, s_g, y_a, y_b : STD_LOGIC;

ATTRIBUTE KEEP : BOOLEAN;
ATTRIBUTE KEEP OF r_g, s_g, y_a, y_b : SIGNAL IS true;

begin
  
  r_g <= clk NAND (NOT d);
  s_g <= d NAND clk;
  y_a <= s_g NAND y_b;
  y_b <= r_g NAND y_a;

  y <= y_a;
  not_y <= y_b;

end behav;
