library ieee;
use ieee.std_logic_1164.all;

entity DMux8Way is
	Port(
		A 	: in std_logic;
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		X1 : out std_logic;	
		X2 : out std_logic;
		X3 : out	std_logic;
		X4	: out	std_logic;
		X5 : out	std_logic;
		X6	: out	std_logic;
		X7 : out	std_logic;
		X8	: out	std_logic
		
	);
end entity;

architecture arch of DMux8Way  is

       signal y1 : std_logic;
       signal y2 : std_logic;
       signal y3 : std_logic;
       signal y4 : std_logic;
       signal y5 : std_logic;
       signal y6 : std_logic;

   component DMuxGate is
		Port(
			A	:	in 	std_logic;
			s  :  in		std_logic;
			X  :	out	std_logic;
			Y	:	out	std_logic
		);
	end component;
	
begin

	DMux1 : DMuxGate
	
		Port map(
			A => A,
			s => s1,
			X => y1,
			Y => y2
		);
		
	 DMux2 : DMuxGate
	 
		Port map(
			A => y1,
			s => s2,
			X => y3,
			Y => y4
		
		);
		
		DMux3 : DMuxGate
		Port map(
			A => y2,
			s => s2,
			X => y5,
			Y => y6
	
		);
		
		DMux4 : DMuxGate
		Port map(
			A => y3,
			s => s3,
			X => X1,
			Y => X2
	
		);
		
		DMux5 : DMuxGate
		Port map(
			A => y4,
			s => s3,
			X => X3,
			Y => X4
	
		);
		
		DMux6 : DMuxGate
		Port map(
			A => y5,
			s => s3,
			X => X5,
			Y => X6
	
		);
		
		DMuxg : DMuxGate
		Port map(
			A => y6,
			s => s3,
			X => X7,
			Y => X8
	
		);
		
end architecture;