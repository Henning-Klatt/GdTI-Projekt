library ieee;
use ieee.std_logic_1164.all;

entity not2 is
  port (
    a : in std_logic;
    y : out std_logic
  );
end not2;

architecture behav of not2 is
begin
  y <= not a;
end architecture;
