library ieee;
use ieee.std_logic_1164.all;


entity Add16 is
	Port(
        A : in std_logic_vector(15 downto 0);
		  B : in std_logic_vector(15 downto 0);
		  C : in std_logic_vector(15 downto 0);
		  sum : out std_logic_vector(15 downto 0);
		  carry : out std_logic
	);
end entity;

architecture arch of Add16 is
	signal x1 : std_logic_vector (15 downto 0);
	component FullAdder is
		Port(
			A : in std_logic;
			B : in std_logic;
			C : in std_logic;	
			sum : out std_logic;
			carry : out std_logic
		);
	end component;
   begin
	FullAdder15: FullAdder
		Port map(
			A => A(15),
			B => B(15),
			C => x1(15),
			sum => sum(15),
			carry => carry
			);
			
	FullAdder14: FullAdder
		Port map(
			A => A(14),
			B => B(14),
			C => x1(14),
			sum => sum(14),
			carry => x1(15)
			);
			
	FullAdder13: FullAdder
		Port map(
			A => A(13),
			B => B(13),
			C => x1(13),
			sum => sum(13),
			carry => x1(14)
			);
			
	FullAdder12: FullAdder
		Port map(
			A => A(12),
			B => B(12),
			C => x1(12),
			sum => sum(12),
			carry => x1(13)
			);
			
	FullAdder11: FullAdder
		Port map(
			A => A(11),
			B => B(11),
			C => x1(11),
			sum => sum(11),
			carry => x1(12)
			);
			
	FullAdder10: FullAdder
		Port map(
			A => A(10),
			B => B(10),
			C => x1(10),
			sum => sum(10),
			carry => x1(11)
			);
			
	FullAdder9: FullAdder
		Port map(
			A => A(9),
			B => B(9),
			C => x1(9),
			sum => sum(9),
			carry => x1(10)
			);
			
	FullAdder8: FullAdder
		Port map(
			A => A(8),
			B => B(8),
			C => x1(8),
			sum => sum(8),
			carry => x1(9)
			);
			
	FullAdder7: FullAdder
		Port map(
			A => A(7),
			B => B(7),
			C => x1(7),
			sum => sum(7),
			carry => x1(8)
			);
			
	FullAdder6: FullAdder
		Port map(
			A => A(6),
			B => B(6),
			C => x1(6),
			sum => sum(6),
			carry => x1(7)
			);
			
	FullAdder5: FullAdder
		Port map(
			A => A(5),
			B => B(5),
			C => x1(5),
			sum => sum(5),
			carry => x1(6)
			);
			
	FullAdder4: FullAdder
		Port map(
			A => A(4),
			B => B(4),
			C => x1(4),
			sum => sum(4),
			carry => x1(5)
			);
			
	FullAdder3: FullAdder
		Port map(
			A => A(3),
			B => B(3),
			C => x1(3),
			sum => sum(3),
			carry => x1(4)
			);
			
	FullAdder2: FullAdder
		Port map(
			A => A(2),
			B => B(2),
			C => x1(2),
			sum => sum(2),
			carry => x1(3)
			);
			
	FullAdder1: FullAdder
		Port map(
			A => A(1),
			B => B(1),
			C => x1(1),
			sum => sum(1),
			carry => x1(2)
			);
	
	FullAdder0 : FullAdder
	    Port map(
		   A => A(0),
			B => B(1),
			C => '0',
			sum => sum(0),
			carry => x1(1)
		 );
			

end architecture;