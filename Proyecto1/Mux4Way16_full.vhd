
-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity Mux4Way16_full is 
	Port(
		A 	: in std_logic_vector(15 downto 0);
		B 	: in std_logic_vector(15 downto 0);
		C	: in std_logic_vector(15 downto 0);
		D 	: in std_logic_vector(15 downto 0);
		s1 : in std_logic;	
		s2 : in std_logic;
		X 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux4Way16_full is
	component Mux4way16 is
		Port(
			A	:	in 	std_logic;
			B	:	in		std_logic;
			C	: 	in		std_logic;
			D	: 	in 	std_logic;
			s1 : 	in 	std_logic;
			s2	:	in 	std_logic;
			X	:	out	std_logic
		);
	end component;
begin
	mux15: Mux4way16
		Port map(
			A => A(15),
			B => B(15),
			C => D(15),
			D => D(15),
			s1 => s1,
			s2 => s2,
			X => X(15)
		);
	mux14: Mux4way16
		Port map(
			A => A(14),
			B => B(14),
			C => C(14),
			D => D(14),
			s1 => s1,
			s2 => s2,
			X => X(14)
		);
	mux13: Mux4way16
		Port map(
			A => A(13),
			B => B(13),
		   C => C(13),
			D => D(13),
			s1 => s1,
			s2 => s2,
			X => X(13)
		);
	mux12: Mux4way16
		Port map(
			A => A(12),
			B => B(12),
			C => C(12),
			D => D(12),
			s1 => s1,
			s2 => s2,
			X => X(12)
		);
	mux11: Mux4way16
		Port map(
			A => A(11),
			B => B(11),
			C => C(11),
			D => D(11),
			s1 => s1,
			s2 => s2,
			X => X(11)
		);
	mux10: Mux4way16
		Port map(
			A => A(10),
			B => B(10),
			C => C(10),
			D => D(10),
			s1 => s1,
			s2 => s2,
			X => X(10)
		);
	mux9: Mux4way16
		Port map(
			A => A(9),
			B => B(9),
			C => C(9),
			D => D(9),
			s1 => s1,
			s2 => s2,
			X => X(9)
		);
	mux8: Mux4way16
		Port map(
			A => A(8),
			B => B(8),
			C => C(8),
			D => D(8),
			s1 => s1,
			s2 => s2,
			X => X(8)
		);
	mux7: Mux4way16
		Port map(
			A => A(7),
			B => b(7),
			C => C(7),
			D => D(7),
			s1 => s1,
			s2 => s2,
			X => X(7)
		);
	mux6: Mux4way16
		Port map(
			A => A(6),
			B => B(6),
			C => C(6),
			D => D(6),
			s1 => s1,
			s2 => s2,
			X => X(6)
		);
	mux5: Mux4way16
		Port map(
			A => A(5),
			B => B(5),
			C => C(5),
			D => D(5),
			s1 => s1,
			s2 => s2,
			X => X(5)
		);
	mux4: Mux4way16
		Port map(
			A => A(4),
			B => B(4),
			C => C(4),
			D => D(4),
			s1 => s1,
			s2 => s2,
			X => X(4)
		);
	mux3: Mux4way16
		Port map(
			A => A(3),
			B => B(3),
			C => C(3),
			D => D(3),
			s1 => s1,
			s2 => s2,
			X => X(3)
		);
	mux2: Mux4way16
		Port map(
			A => A(2),
			B => B(2),
			C => C(2),
			D => D(2),
			s1 => s1,
			s2 => s2,
			X => X(2)
		);
	mux1: Mux4way16
		Port map(
			A => A(1),
			B => B(1),
			C => C(1),
			D => D(1),
			s1 => s1,
			s2 => s2,
			X => X(1)
		);
	mux0: Mux4way16
		Port map(
			A => A(0),
			B => B(0),
			C => C(0),
			D => D(0),
			s1 => s1,
			s2 => s2,
			X => X(0)
		);

end architecture;