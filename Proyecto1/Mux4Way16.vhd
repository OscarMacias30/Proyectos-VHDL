library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4Way16 is 
      Port(
		     A : in std_logic;
			  B : in std_logic;
			  C : in std_logic;
			  D : in std_logic;
			  s1 : in std_logic;
			  s2 : in std_logic;
			  X : out std_logic
		
		);
end entity;

architecture archo of Mux4Way16 is

      signal x1, x2, x3, x4 : std_logic;
		
		begin 
		
		     x1 <= (not s1) and (not s2) and A;
			  x2 <= s1 and (not s2) and B;
			  x3 <= (not s1) and s2 and C;
			  x4 <= s1 and s2 and D;
			  X <= x1 or x2 or x3 or x4;
			  
end architecture;