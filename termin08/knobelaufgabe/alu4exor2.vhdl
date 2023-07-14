library ieee;
use ieee.std_logic_1164.all;

entity alu4exor2 is
  port (
    a, b: in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0)
  );
end alu4exor2;

architecture behav of alu4exor2 is
begin
  process (a,b)
  
  variable result : std_logic_vector(3 DOWNTO 0);
  
  BEGIN
  
    FOR i in 0 to 3 loop
      result(i) := a(i) xor b(i);
    END loop;

  y <= result;
  END process;
end architecture;
