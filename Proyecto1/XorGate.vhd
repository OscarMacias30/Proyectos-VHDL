library ieee;
use ieee.std_logic_1164.all;

entity XorGate is
port(
     A : in std_logic;
	  B : in std_logic;
	  X : out std_logic


);
end entity;

architecture arch of XorGate is
   signal x1, x2, x3, x4 : std_logic;
begin 
   x1 <= not A;
	x2 <= not B;
	x3 <= x1 and B;
	x4 <= x2 and A;
	X  <= x3 or x4;
end architecture;