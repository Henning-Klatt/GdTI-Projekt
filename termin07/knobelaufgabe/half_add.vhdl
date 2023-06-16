LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_add IS
PORT (
  a, b : IN STD_LOGIC;
  Sum, Cout : OUT STD_LOGIC)
;

END half_add;

ARCHITECTURE behav OF half_add IS
BEGIN

  Sum <= a xor b;
  Cout <= a and b;

END behav;
