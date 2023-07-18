library ieee;
use ieee.std_logic_1164.all;

entity key is
  port (
    clk : in std_logic;
    echte_taste : in std_logic;
    taste_wurde_gedrueckt : out std_logic
  );
end key;

architecture behav of key is
  SIGNAL old_state, result : STD_LOGIC := '0';

  ATTRIBUTE KEEP : BOOLEAN;
  ATTRIBUTE KEEP OF old_state : SIGNAL IS true;

begin
  process (clk) begin
    if rising_edge(clk) then

      -- vorher 0, jetzt 1
      if old_state = '0' and echte_taste = '1' then
        result <= '1';
      -- im nächsten clk wieder 0
      elsif old_state = '1' then
        result <= '0';
      end if;

      old_state <= echte_taste;
      
    end if;
  end process;
  
  taste_wurde_gedrueckt <= result;

end architecture;
