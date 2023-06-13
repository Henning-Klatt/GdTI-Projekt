library ieee;
use ieee.std_logic_1164.all;

entity alu_n_and2 is
  generic (width : integer := 7);
  port (
    a, b: in std_logic_vector(width-1 downto 0);
    y : out std_logic_vector(width-1 downto 0)
  );
end alu_n_and2;

architecture behav of alu_n_and2 is
begin
  process (a,b)
  
    variable result : std_logic_vector(width-1 downto 0);
  
  BEGIN
  
    FOR i in 0 to width-1 loop
      result(i) := a(i) and b(i);
    END loop;

  y <= result;
  END process;
end architecture;
