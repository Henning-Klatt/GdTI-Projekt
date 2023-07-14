library ieee;
use ieee.std_logic_1164.all;

entity alu4and2 is
  port (
    a, b: in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0)
  );
end alu4and2;

architecture behav of alu4and2 is
begin
  y(0) <= a(0) AND b(0);
  y(1) <= a(1) AND b(1);
  y(2) <= a(2) AND b(2);
  y(3) <= a(3) AND b(3);
end architecture;
