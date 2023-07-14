library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lsr is
  port (
    a, b: in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0)
  );
end lsr;

architecture behav of lsr is
begin
  -- hier die knobelaufgabe ausfuellen

  y <= std_logic_vector(shift_right(unsigned(a), 1));

  process
    variable shift : STD_LOGIC_VECTOR(3 DOWNTO 0) := a;

    BEGIN


      --for i in 0 to to_integer(unsigned(b)) loop
   
        --shift := shift & '0';

      --end loop;
  
  END process;

end architecture;
