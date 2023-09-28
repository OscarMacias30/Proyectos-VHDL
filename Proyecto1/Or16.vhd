library	IEEE;
use IEEE.std_logic_1164.all;

entity Or16 is
      port(
		     A : in std_logic_vector(15 downto 0);
			  B : in std_logic_vector(15 downto 0);
			  X : out std_logic_vector(15 downto 0)
		);
end entity;

architecture arch of Or16 is 

signal x1, x2 : std_logic_vector(15 downto 0);
  
     begin
	     x1(0) <= A(0) nand A(0);
	     x2(0) <= B(0) nand B(0);
	     x1(1) <= A(1) nand A(1);
	     x2(1) <= B(1) nand B(1);
	     x1(2) <= A(2) nand A(2);
	     x2(2) <= B(2) nand B(2);
	     x1(3) <= A(3) nand A(3);
	     x2(3) <= B(3) nand B(3);
	     x1(4) <= A(4) nand A(4);
	     x2(4) <= B(4) nand B(4);
	     x1(5) <= A(5) nand A(5);
	     x2(5) <= B(5) nand B(5);
		  x1(6) <= A(6) nand A(6);
	     x2(6) <= B(6) nand B(6);
	     x1(7) <= A(7) nand A(7);
	     x2(7) <= B(7) nand B(7);
	     x1(8) <= A(8) nand A(8);
	     x2(8) <= B(8) nand B(8);
	     x1(9) <= A(9) nand A(9);
	     x2(9) <= B(9) nand B(9);
	     x1(10) <= A(10) nand A(10);
	     x2(10) <= B(10) nand B(10);
	     x1(11) <= A(11) nand A(11);
	     x2(11) <= B(11) nand B(11);
	     x1(12) <= A(12) nand A(12);
	     x2(12) <= B(12) nand B(12);
	     x1(13) <= A(13) nand A(13);
	     x2(13) <= B(13) nand B(13);
	     x1(14) <= A(14) nand A(14);
	     x2(14) <= B(14) nand B(14);
	     x1(15) <= A(15) nand A(15);
	     x2(15) <= B(15) nand B(15);
		  
		  X(0) <= x1(0) nand x2(0);
	     X(1) <= x1(1) nand x2(1);
	     X(2) <= x1(2) nand x2(2);
	     X(3) <= x1(3) nand x2(3);
	     X(4) <= x1(4) nand x2(4);
	     X(5) <= x1(5) nand x2(5);
	     X(6) <= x1(6) nand x2(6);
	     X(7) <= x1(7) nand x2(7);
	     X(8) <= x1(8) nand x2(8);
	     X(9) <= x1(9) nand x2(9);
	     X(10) <= x1(10) nand x2(10);
	     X(11) <= x1(11) nand x2(11);
	     X(12) <= x1(12) nand x2(12);
	     X(13) <= x1(13) nand x2(13);
	     X(14) <= x1(14) nand x2(14);
	     X(15) <= x1(15) nand x2(15); 
	

end architecture;
