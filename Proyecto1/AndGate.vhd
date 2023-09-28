library IEEE;
use IEEE.std_logic_1164.all;

entity AndGate is
      port(
		      A : in std_logic;
				B : in std_logic;
				X : out std_logic
		);
end entity;

architecture arch of AndGate is
    signal x1 : std_logic;
    
	 begin
     x1 <= A nand B;
	  X <= not x1; 
end architecture;