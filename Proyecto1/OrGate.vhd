library IEEE;
use IEEE.std_logic_1164.all;

entity OrGate is
       port(
		      A : in std_logic;
				B : in std_logic;
				X : out std_logic
		 );
end entity;

architecture arch of OrGate is
signal x1, x2 : std_logic;
begin 
     x1 <= not A;
	  x2 <= not B;
	  X <= x1 nand x2;
	  
	  
end architecture;