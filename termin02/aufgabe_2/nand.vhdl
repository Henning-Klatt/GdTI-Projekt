library ieee;
use ieee.std_logic_1164.all;

entity nand2 is
  port (
    a, b: in std_logic;
    y : out std_logic
  );
end nand2;

architecture behav of nand2 is
begin
  y <= a nand b;
end architecture;
