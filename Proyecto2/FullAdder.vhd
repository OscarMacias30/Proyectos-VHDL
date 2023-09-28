library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is 
       Port(
		      A : in std_logic;
				B : in std_logic;
				C : in std_logic;
				sum : out std_logic;
				carry : out std_logic
		 );
end entity;

architecture arch of FullAdder is 

       signal x1, x2, x3 : std_logic;
		 
		 component HalfAdder is
		           Port(
					       A : in std_logic;
							 B : in std_logic;
							 sum : out std_logic;
							 carry : out std_logic
					  );
		  end component;
		begin 
		     HalfAdder1 : HalfAdder
			         Port map(
						         A => A,
									B => B,
									sum => x1,
									carry => x2
						);
		    	HalfAdder2 : HalfAdder
			         Port map(
						         A => x1,
									B => C,
									sum => sum,
									carry => x3
						);
				carry <= x2 or x3;

end architecture;

