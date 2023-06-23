library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--USE ieee.std_logic_unsigned.all;
--USE ieee.std_logic_arith.all;

entity addsub4 is
  port (
    a, b : in std_logic_vector(3 downto 0);
    do_add : in std_logic;
    sum : out std_logic_vector(3 downto 0);
    carry : out std_logic
  );
end addsub4;

architecture behav of addsub4 is
  component full_add
    port (a, b, c_in: in std_logic;  sum, c_out : out std_logic);
  end component;

SIGNAL c_out0, c_out1, c_out2, c_out3, carry_in, overflow : STD_LOGIC;
SIGNAL b_in, sum_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL add_signal : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

  add_signal <= (others => NOT(do_add));
  
  b_in <= b xor add_signal;

  carry_in <= NOT(do_add);

  H1:full_add port map(a(0), b_in(0), carry_in, sum_out(0), c_out0);
  H2:full_add port map(a(1), b_in(1), c_out0, sum_out(1), c_out1);
  H3:full_add port map(a(2), b_in(2), c_out1, sum_out(2), c_out2);
  H4:full_add port map(a(3), b_in(3), c_out2, sum_out(3), c_out3);

  sum <= sum_out;
  carry <= c_out3;

end architecture;
