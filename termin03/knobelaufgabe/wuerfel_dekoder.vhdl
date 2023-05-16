library ieee;
use ieee.std_logic_1164.all;

entity wuerfel_dekoder is
  port (
    inputs : in std_logic_vector (2 downto 0);
    outputs : out std_logic_vector (6 downto 0)
  );
end wuerfel_dekoder;

architecture behav of wuerfel_dekoder is
begin

    with inputs select
	    outputs <=  "0000001" when "001",
			"0000110" when "010",
			"0000111" when "011",
			"0011110" when "100",
			"0011111" when "101",
			"1111110" when "110",
			"0000000" when others;

end architecture;
