library ieee;
use ieee.std_logic_1164.all;

entity full_add_tb is end full_add_tb;

architecture behav of full_add_tb is
  component full_add
    port (a, b, c_in: in std_logic;  sum, c_out : out std_logic);
  end component;
  signal a,b,c_in,sum,c_out : std_logic;
begin
  full_add_0: full_add port map (a, b, c_in, sum, c_out);

  process begin
    
    a <= '0';
    b <= '0';
    c_in <= '0';
    wait for 1 fs;
    assert (sum = '0' AND c_out = '0') report "Null addieren falsch" severity error;

    a <= '1';
    b <= '0';
    c_in <= '0';
    wait for 1 fs;
    assert (sum = '1' AND c_out = '0') report "1 + 0 addieren falsch" severity error;

    a <= '0';
    b <= '1';
    c_in <= '0';
    wait for 1 fs;
    assert (sum = '1' AND c_out = '0') report "0 + 1 addieren falsch" severity error;

    a <= '1';
    b <= '1';
    c_in <= '0';
    wait for 1 fs;
    assert (sum = '0' AND c_out = '1') report "1 + 1 addieren falsch" severity error;

    a <= '1';
    b <= '1';
    c_in <= '1';
    wait for 1 fs;
    assert (sum = '1' AND c_out = '1') report "1 + 1 und c=1 addieren falsch" severity error;

    assert false report "end of test" severity note;
    wait; --  Wait forever; this will finish the simulation.
  end process;
end behav;
