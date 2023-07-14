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
  y(0) <= a(0) OR b(0);
  y(1) <= a(1) OR b(1);
  y(2) <= a(2) OR b(2);
  y(3) <= a(3) OR b(3);
end architecture;
