library ieee;
use ieee.std_logic_1164.all;

entity not_tb is end not_tb;

architecture behav of not_tb is
  component not2
    port ( a : in std_logic;  y : out std_logic);
  end component;
  signal in1, result : std_logic;
begin
  not_0: not2 port map (a=>in1, y=>result);

  process begin
    in1 <= '0';
    wait for 1 fs;
    assert result = '1' report "bad result for input 0" severity error;
    wait for 1 fs;

    in1 <= '1';
    wait for 1 fs;
    assert result = '0' report "bad result for input 1" severity error;
    wait for 1 fs;

    assert false report "end of test" severity note;
    wait; --  Wait forever; this will finish the simulation.
  end process;
end behav;
