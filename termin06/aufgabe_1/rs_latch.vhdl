library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is 
  port (
    r, s : in std_logic;
    y, not_y : out std_logic
  );  
	
end rs_latch;

architecture behav of rs_latch is

SIGNAL r_g, s_g, y_a, y_b : STD_LOGIC;

ATTRIBUTE KEEP : BOOLEAN;
ATTRIBUTE KEEP OF r_g, s_g, y_a, y_b : SIGNAL IS true;

begin
  
  r_g <= r;
  s_g <= s;
  y_a <= NOT (r_g OR y_b);
  y_b <= NOT (s_g OR y_a);

  y <= y_a;
  not_y <= y_b;

end behav;
