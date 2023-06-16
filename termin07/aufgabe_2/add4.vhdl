library ieee;
use ieee.std_logic_1164.all;

entity add4 is
  port (
    a, b : in std_logic_vector(3 downto 0);
    sum : out std_logic_vector(3 downto 0);
    carry : out std_logic
  );
end add4;

architecture behav of add4 is
  component full_add
    port (
      a, b, c_in: in std_logic;
      sum, c_out : out std_logic
    );
  end component;

SIGNAL c_out0, c_out1, c_out2, c_out3 : STD_LOGIC;

begin

  H1:full_add port map(a(0), b(0), '0', sum(0), c_out0);
  H2:full_add port map(a(1), b(1), c_out0, sum(1), c_out1);
  H3:full_add port map(a(2), b(2), c_out1, sum(2), c_out2);
  H4:full_add port map(a(3), b(3), c_out2, sum(3), c_out3);

  carry <= c_out3;

end architecture;
