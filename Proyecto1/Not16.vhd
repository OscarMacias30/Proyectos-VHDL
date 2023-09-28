library	IEEE;
use IEEE.std_logic_1164.all;

entity Not16 is
	port(
		A	:	in 	std_logic_vector(15 downto 0);
		X	:	out	std_logic_vector(15 downto 0)
	);
end entity;

-- Architecture (Implementation)
architecture arch of Not16 is
begin
	X(0) <= not A(0);
	X(1) <= not A(1);
	X(2) <= not A(2);
	X(3) <= not A(3);
	X(4) <= not A(4);
	X(5) <= not A(5);
	X(6) <= not A(6);
	X(7) <= not A(7);
	X(8) <= not A(8);
	X(9) <= not A(9);
	X(10) <= not A(10);
	X(11) <= not A(11);
	X(12) <= not A(12);
	X(13) <= not A(13);
	X(14) <= not A(14);
	X(15) <= not A(15);
end architecture;	