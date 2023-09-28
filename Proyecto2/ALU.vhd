library ieee;
use ieee.std_logic_1164.all;

entity ALU is
   port(
	     A : in std_logic;
		  B : in std_logic;
		  s1 : in std_logic;
		  s2 : in std_logic;
		  X : out std_logic
	);
end entity;

architecture arch of ALU is
    signal x1, x2, x3, x4 : std_logic := '0';
	 signal y1, y2, y3, y4 : std_logic;
	 
	 begin 
	 x1 <= (not A) nand (not B);
	 x2 <= (A and(not B)) or ((not A) and B);
	 x3 <= (not A) nor (not B);
	 x4 <= not A;
	 y1 <= (not s1) and (not s2) and x1;
	 y2 <= s1 and (not s2) and x2;
	 y3 <= (not s1) and (not s2) and x3;
	 y4 <= s1 and s2 and x4;
	 
	 X <= x1 or x2 or x3 or x4;
end architecture;