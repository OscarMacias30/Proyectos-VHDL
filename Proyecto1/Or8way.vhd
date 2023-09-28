library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
      Port(
		     A : in std_logic;
			  B : in std_logic;
			  C : in std_logic;
			  D : in std_logic;
			  E : in std_logic;
			  F : in std_logic;
			  G : in std_logic;
			  H : in std_logic;
			  X : out std_logic
		
		);
end entity Or8Way;

architecture arch of Or8Way is
     signal x1, x2, x3, x4, x5, x6 : std_logic := '0';
	  
	  begin
	       x1 <= (not A) nand (not B);
			 x2 <= (not C) nand (not D);
			 x3 <= (not E) nand (not F);
			 x4 <= (not G) nand (not H);
			 x5 <= (not x1) nand (not x2);
			 x6 <= (not x3) nand (not x4);
			 X <= (not x5) nand (not x6);

end architecture;