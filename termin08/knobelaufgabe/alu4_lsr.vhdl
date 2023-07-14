library ieee;
use ieee.std_logic_1164.all;

entity alu4_lsr is
  port (
    a, b : in std_logic_vector(3 downto 0);
    sel : in std_logic_vector(1 downto 0);
    result : out std_logic_vector(3 downto 0)
  );
end alu4_lsr;

architecture behav of alu4_lsr is
  component lsr is
    port ( a, b: in std_logic_vector(3 downto 0); y : out std_logic_vector(3 downto 0));
  end component;
  component alu4and2 is
    port ( a, b: in std_logic_vector(3 downto 0); y : out std_logic_vector(3 downto 0));
  end component;
  component alu4exor2 is
    port ( a, b: in std_logic_vector(3 downto 0); y : out std_logic_vector(3 downto 0));
  end component;
  component add4 is
    port ( a, b : in std_logic_vector(3 downto 0); sum : out std_logic_vector(3 downto 0); carry:out std_logic);
  end component;
  component mpx16zu4 is port (
    a, b, c, d: in std_logic_vector(3 downto 0);
    sel : in std_logic_vector(1 downto 0);
    y : out std_logic_vector(3 downto 0)
  ); end component;

  signal result_add4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  signal result_lsr : STD_LOGIC_VECTOR(3 DOWNTO 0);
  signal result_alu4and2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  signal result_alu4exor2 : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
  with sel select
    result <= result_add4 when "00", -- addieren
	      result_lsr when "01", -- ODER
	      result_alu4and2 when "10", -- UND
	      result_alu4exor2 when others; -- EXOR

  U1:lsr port map(a, b, result_lsr);
  U2:alu4and2 port map(a, b, result_alu4and2);
  U3:alu4exor2 port map(a, b, result_alu4exor2);
  U4:add4 port map(a, b, result_add4);

end architecture;
