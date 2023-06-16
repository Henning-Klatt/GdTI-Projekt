library ieee;
use ieee.std_logic_1164.all;

entity full_add is
  PORT (
    a, b, c_in : in std_logic;
    sum, c_out : out std_logic
  );
end full_add;

architecture behav of full_add is

SIGNAL sum1, c_out1, c_out2 : STD_LOGIC;

COMPONENT half_add
  PORT (
    a, b : in STD_LOGIC;
    Sum, Cout : out STD_LOGIC
  );
END COMPONENT;

begin

  H1:half_add port map(a, c_in, sum1, c_out1);
  H2:half_add port map(sum1, b, sum, c_out2);

  c_out <= c_out1 OR c_out2;

end architecture;
