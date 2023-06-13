library ieee;
use ieee.std_logic_1164.all;

entity alu4or2 is
  port (
    a, b: in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0)
  );
end alu4or2;

architecture behav of alu4or2 is
  component oder is port (a, b: in std_logic; y : out std_logic); end component;
begin
  OR0 : oder PORT MAP (a(0), b(0), y(0));
  OR1 : oder PORT MAP (a(1), b(1), y(1));
  OR2 : oder PORT MAP (a(2), b(2), y(2));
  OR3 : oder PORT MAP (a(3), b(3), y(3));
end architecture;
