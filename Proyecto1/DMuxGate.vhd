library	IEEE;
use IEEE.std_logic_1164.all;

entity DMuxGate is
       Port(
		      A : in std_logic;
				s : in std_logic;
				X : out std_logic;
				Y : out std_logic
		 );
end entity;

architecture arch of DMuxGate is

   begin 
	     X <= (not s) and A;
		  Y <= A and s;
end architecture;