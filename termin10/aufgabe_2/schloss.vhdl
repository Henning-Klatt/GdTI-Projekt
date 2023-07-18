library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity schloss is
  port (
    clk : in std_logic;
    echte_tasten : in std_logic_vector(1 to 3);
    echte_taste_reset : in std_logic;
    offen : out std_logic := '0'
  );
end schloss;

architecture behav of schloss is
  component key is port (
    clk : in std_logic;
    echte_taste : in std_logic;
    taste_wurde_gedrueckt : out std_logic
  ); end component;

  -- echte Taste wurde gedrückt
  signal echte_taste_wg : STD_LOGIC_VECTOR(1 TO 3);
  signal echte_taste_reset_wg : STD_LOGIC;
  signal bereits_eingegeben : STD_LOGIC_VECTOR(1 TO 3) := "000";
  signal zustand_gesperrt : STD_LOGIC := '0';

  ATTRIBUTE KEEP : BOOLEAN;
  ATTRIBUTE KEEP OF bereits_eingegeben, zustand_gesperrt : SIGNAL IS true;

begin

  KEY1 : key PORT MAP (clk, echte_tasten(1), echte_taste_wg(1));
  KEY2 : key PORT MAP (clk, echte_tasten(2), echte_taste_wg(2));
  KEY3 : key PORT MAP (clk, echte_tasten(3), echte_taste_wg(3));
  KEYR : key PORT MAP (clk, echte_taste_reset, echte_taste_reset_wg);

  process (clk) begin
    if rising_edge(clk) then
    
      -- löse Zustand gesperrt auf
      if zustand_gesperrt = '1' and echte_taste_reset_wg = '1' then
        zustand_gesperrt <= '0';
	bereits_eingegeben <= "000";
      end if;

      if echte_taste_reset_wg = '1' then
        bereits_eingegeben <= "000";
      end if;

      -- erste Ziffer = 1
      if zustand_gesperrt = '0' and echte_taste_wg(1) = '1' and bereits_eingegeben = "000" then
        bereits_eingegeben <= "100";
      elsif zustand_gesperrt = '0' and echte_taste_wg(1) = '1' then
        zustand_gesperrt <= '1';
      end if;

      -- zweite Ziffer = 2
      if zustand_gesperrt = '0' and echte_taste_wg(2) = '1' and bereits_eingegeben = "100" then
        bereits_eingegeben <= "110";
      elsif zustand_gesperrt = '0' and echte_taste_wg(2) = '1' then
        zustand_gesperrt <= '1';
      end if;

      -- dritte Ziffer = 3
      if zustand_gesperrt = '0' and echte_taste_wg(3) = '1' and bereits_eingegeben = "110" then
        bereits_eingegeben <= "111";
      elsif zustand_gesperrt = '0' and echte_taste_wg(3) = '1' then
        zustand_gesperrt <= '1';
      end if;

      -- alles richtig
      if zustand_gesperrt = '0' and bereits_eingegeben = "111" then
        offen <= '1';
      else
        offen <= '0';
      end if;

    end if;
  end process;
end architecture;
