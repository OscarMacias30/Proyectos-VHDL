library	IEEE;
use IEEE.std_logic_1164.all;

entity MuxGate is
	port(
		A : in std_logic;
		B : in std_logic;
		s : in std_logic;
		X : out std_logic
	);
end entity;

architecture arch of MuxGate is
    signal x1, x2 : std_logic;

    begin
	     x1 <= ( not s ) and A;
	     x2 <= s and B;
	     X <= x1 or x2;
end architecture;