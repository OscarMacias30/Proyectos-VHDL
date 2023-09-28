library ieee;
use ieee.std_logic_1164.all;

-- Mux16(a= ,b= ,sel= ,out= ) /* Selects between two 16-bit inputs */

entity Mux16 is
	Port(
		A 	: in std_logic_vector(15 downto 0);
		B 	: in std_logic_vector(15 downto 0);
		s  : in std_logic;	
		X 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux16 is
	component MuxGate is
		Port(
			A	:	in 	std_logic;
			B	:	in		std_logic;
			s  :	in 	std_logic;
			X	:	out	std_logic
		);
	end component;
begin
	mux15: MuxGate
		Port map(
			A => A(15),
			B => B(15),
			s => s,
			X => X(15)
		);
	mux14: MuxGate
		Port map(
			A => A(14),
			B => B(14),
			s => s,
			X => X(14)
		);
	mux13: MuxGate
		Port map(
			A => A(13),
			B => B(13),
			s => s,
			X => X(13)
		);
	mux12: MuxGate
		Port map(
			A => A(12),
			B => B(12),
			s => s,
			X => X(12)
		);
	mux11: MuxGate
		Port map(
			A => A(11),
			B => B(11),
			s => s,
			X => X(11)
		);
	mux10: MuxGate
		Port map(
			A => A(10),
			B => B(10),
			s => s,
			X => X(10)
		);
	mux9: MuxGate
		Port map(
			A => A(9),
			B => B(9),
			s => s,
			X => X(9)
		);
	mux8: MuxGate
		Port map(
			A => A(8),
			B => B(8),
			s => s,
			X => X(8)
		);
	mux7: MuxGate
		Port map(
			A => A(7),
			B => B(7),
			s => s,
			X => X(7)
		);
	mux6: MuxGate
		Port map(
			A => A(6),
			B => B(6),
			s => s,
			X => X(6)
		);
	mux5: MuxGate
		Port map(
			A => A(5),
			B => B(5),
			s => s,
			X => X(5)
		);
	mux4: MuxGate
		Port map(
			A => A(4),
			B => B(4),
			s => s,
			X => X(4)
		);
	mux3: MuxGate
		Port map(
			A => A(3),
			B => B(3),
			s => s,
			X => X(3)
		);
	mux2: MuxGate
		Port map(
			A => A(2),
			B => B(2),
			s => s,
			X => X(2)
		);
	mux1: MuxGate
		Port map(
			A => A(1),
			B => B(1),
			s => s,
			X => X(1)
		);
	mux0: MuxGate
		Port map(
			A => A(0),
			B => B(0),
			s => s,
			X => X(0)
		);

end architecture;