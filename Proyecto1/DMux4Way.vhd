library IEEE;
use IEEE.std_logic_1164.all;

entity DMux4Way is
      Port(
		     A : in std_logic;
			  s1 : in std_logic;
			  s2 : in std_logic;
			  X : out std_logic;
			  Y : out std_logic;
			  Z : out std_logic;
			  W : out std_logic
		
		);
end entity;

architecture arch of DMux4Way is
   signal x1, x2 : std_logic;
	
	component DMuxGate is 
	    Port(
		      A : in std_logic;
		      s : in std_logic;
				X : out std_logic;
				Y : out std_logic
		 );
	end component;
	begin
	     DMux1: DMuxGate
		  Port map(
		       A => A,
	          s => s1,
	          X => x1,
             Y => x2				 
		  );
		  DMux2: DMuxGate
		  Port map(
		       A => x1,
	          s => s2,
	          X => X,
             Y => Y				 
		  );
		  DMux3: DMuxGate
		  Port map(
		       A => x2,
	          s => s2,
	          X => Z,
             Y => W				 
		  );
end architecture;