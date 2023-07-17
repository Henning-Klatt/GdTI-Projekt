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

  process(a,b) begin

    case b is
      when "0000" =>
        y <= a;
      when "0001" =>
        y(3) <= '0';
        y(2) <= a(3);
        y(1) <= a(2);
        y(0) <= a(1);
      when "0010" =>
        y(3) <= '0';
        y(2) <= '0';
        y(1) <= a(3);
        y(0) <= a(2);
      when "0011" =>
        y(3) <= '0';
        y(2) <= '0';
        y(1) <= '0';
        y(0) <= a(3);
      when others =>
        y <= "0000";
    END case;

  END process;

END architecture;
