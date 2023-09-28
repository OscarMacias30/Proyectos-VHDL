library ieee;
use ieee.std_logic_1164.all;

entity Mux8Way is
	Port(
		A : in std_logic;	
		B : in std_logic;
		C :	in	std_logic;
		D :	in	std_logic;
		E :	in	std_logic;
		F :	in	std_logic;
		G :	in	std_logic;
		H :	in	std_logic;
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
      X : out std_logic
		
	);
end entity;

architecture arch of Mux8Way  is

   signal x1, x2, x3, x4, x5, x6  : std_logic;




	component MuxGate is
		Port(
		A :	in 	std_logic;
		B :	in		std_logic;
		s :	in 	std_logic;
		X :	out	std_logic
		
		);
	end component;
   begin

	Mux1: MuxGate
	
		Port map(
		A => A,
		B	=> B,
		s => s1,
		X	=> x1
		);
		
	Mux2: MuxGate
		Port map(
		A => C,
		B	=> D,
		s => s1,
		X	=> x2
		);
		
	Mux3: MuxGate
		Port map(
		A	=> x1,
		B	=>	x2,
		s => s1,
		X	=> x5
		);
		
	Mux4: MuxGate
	
		Port map(
		A => E,
		B	=> F,
		s => s1,
		X	=> x3
		);
		
	Mux5: MuxGate
		Port map(
		A => G,
		B	=> H,
		s => s1,
		X	=> x4
		);
		
	Mux6: MuxGate
		Port map(
		A	=> x3,
		B	=>	x4,
		s => s2,
		X	=> x6
		);
		
	Mux7: MuxGate
		Port map(
		A	=> x5,
		B	=>	x6,
		s => s3,
		X	=> X
			
		);
end architecture;