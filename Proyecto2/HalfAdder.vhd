library	IEEE;
use IEEE.std_logic_1164.all;

entity HalfAdder is
	port(
		A	:	in 	std_logic;
		B	:	in	   std_logic;
		sum : out std_logic;
		carry  :  out	std_logic
		
	);
end entity;

architecture HalfAdder_arch of HalfAdder is
     begin
          sum <= A xor B;
          carry <= A and B;
	
end architecture;	