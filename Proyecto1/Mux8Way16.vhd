library ieee;
use ieee.std_logic_1164.all;


entity Mux8Way16 is
	Port(

		A : in std_logic_vector(15 downto 0);	
		B : in std_logic_vector(15 downto 0);
		C :	in	std_logic_vector(15 downto 0);
		D :	in	std_logic_vector(15 downto 0);
		E :	in	std_logic_vector(15 downto 0);
		F :	in	std_logic_vector(15 downto 0);
		G :	in	std_logic_vector(15 downto 0);
		H :	in	std_logic_vector(15 downto 0);
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		X : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux8Way16 is
	component Mux8Way is
		Port(
		

		A : in std_logic;	
		B : in std_logic;
		C : in	std_logic;
		D : in	std_logic;
		E : in	std_logic;
		F : in	std_logic;
		G : in	std_logic;
		H : in	std_logic;
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		X : out std_logic
		
		);
	end component;
begin
	   Mux8Way15: Mux8Way
		Port map(

		A => A(15),
		B => B(15),
		C => C(15),
		D => D(15),
		E => E(15),
		F => F(15),
		G => G(15),
		H => H(15),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(15)
		);
		
		Mux8Way14 : Mux8Way
		Port map(

		A => A(14),
		B => B(14),
		C => C(14),
		D => D(14),
		E => E(14),
		F => F(14),
		G => G(14),
		H => H(14),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(14)
		);
		
		Mux8Way13: Mux8Way
		Port map(

		A => A(13),
		B => B(13),
		C => C(13),
		D => D(13),
		E => E(13),
		F => F(13),
		G => G(13),
		H => H(13),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(13)
		);
		
		Mux8Way12: Mux8Way
		Port map(

		A => A(12),
		B => B(12),
		C => C(12),
		D => D(12),
		E => E(12),
		F => F(12),
		G => G(12),
		H => H(12),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(12)
		);
		
		Mux8Way11: Mux8Way
		Port map(

		A => A(11),
		B => B(11),
		C => C(11),
		D => D(11),
		E => E(11),
		F => F(11),
		G => G(11),
		H => H(11),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(11)
		);
		
		Mux8Way10: Mux8Way
		Port map(

		A => A(10),
		B => B(10),
		C => C(10),
		D => D(10),
		E => E(10),
		F => F(10),
		G => G(10),
		H => H(10),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(10)
		);
		
		Mux8Way9 : Mux8Way
		Port map(

		A => A(9),
		B => B(9),
		C => C(9),
		D => D(9),
		E => E(9),
		F => F(9),
		G => G(9),
		H => H(9),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(9)
		);
		
		Mux8Way8 : Mux8Way
		Port map(
		A => A(8),
		B => B(8),
		C => C(8),
		D => D(8),
		E => E(8),
		F => F(8),
		G => G(8),
		H => H(8),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(8)
		);
		
		Mux8Way7 : Mux8Way
		Port map(
		A => A(7),
		B => B(7),
		C => C(7),
		D => D(7),
		E => E(7),
		F => F(7),
		G => G(7),
		H => H(7),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(7)
		);
		
		Mux8Way6 : Mux8Way
		Port map(
		A => A(6),
		B => B(6),
		C => C(6),
		D => D(6),
		E => E(6),
		F => F(6),
		G => G(6),
		H => H(6),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(6)
		);
		
		Mux8Way5 : Mux8Way
		Port map(
		A => A(5),
		B => B(5),
		C => C(5),
		D => D(5),
		E => E(5),
		F => F(5),
		G => G(5),
		H => H(5),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(5)
		);
		
		Mux8Way4 : Mux8Way
		Port map(
		A => A(4),
		B => B(4),
		C => C(4),
		D => D(4),
		E => E(4),
		F => F(4),
		G => G(4),
		H => H(4),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(4)
		);
		
		Mux8Way3 : Mux8Way
		Port map(
		A => A(3),
		B => B(3),
		C => C(3),
		D => D(3),
		E => E(3),
		F => F(3),
		G => G(3),
		H => H(3),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(3)
		);
		
		Mux8Way2 : Mux8Way
		Port map(
		A => A(2),
		B => B(2),
		C => C(2),
		D => D(2),
		E => E(2),
		F => F(2),
		G => G(2),
		H => H(2),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(2)
		);
		
		Mux8Way1 : Mux8Way
		Port map(
		A => A(1),
		B => B(1),
		C => C(1),
		D => D(1),
		E => E(1),
		F => F(1),
		G => G(1),
		H => H(1),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(1)
		);
		
		Mux8Way0 : Mux8Way
		Port map(
		A => A(0),
		B => B(0),
		C => C(0),
		D => D(0),
		E => E(0),
		F => F(0),
		G => G(0),
		H => H(0),
		s1 => s1,
		s2 => s2,
		s3 => s3,
		X => X(0)
		);

end architecture;