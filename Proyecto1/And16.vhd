library ieee;
use ieee.std_logic_1164.all;

entity And16 is 
port (
     A : in std_logic_vector(15 downto 0);
     B : in std_logic_vector(15 downto 0);
     X : out std_logic_vector(15 downto 0)
     
	  );
end entity;

architecture arch of And16 is 
	signal x1, x2 : std_logic_vector(15 downto 0);
	
	
   begin 
       x1(0) <= not A(0);
		 x2(0) <= not B(0);
		 X(0) <= x1(0) nor x2(0);
		 
       x1(1) <= not A(1);
		 x2(1) <= not B(1);
		 X(1) <= x1(1) nor x2(1);
		 
       x1(2) <= not A(2);
		 x2(2) <= not B(2);
		 X(2) <= x1(2) nor x2(2);
		 
       x1(3) <= not A(3);
		 x2(3) <= not B(3);
		 X(3) <= x1(3) nor x2(3);
		 
       x1(4) <= not A(4);
		 x2(4) <= not B(4);
		 X(4) <= x1(4) nor x2(4);
		 
       x1(5) <= not A(5);
		 x2(5) <= not B(5);
		 X(5) <= x1(5) nor x2(5);
		 
       x1(6) <= not A(6);
		 x2(6) <= not B(6);
		 X(6) <= x1(6) nor x2(6);
		 
       x1(7) <= not A(7);
		 x2(7) <= not B(7);
		 X(7) <= x1(7) nor x2(7);
		 
       x1(8) <= not A(8);
		 x2(8) <= not B(8);
		 X(8) <= x1(8) nor x2(8);
		 
       x1(9) <= not A(9);
		 x2(9) <= not B(9);
		 X(9) <= x1(9) nor x2(9);
		 
       x1(10) <= not A(10);
		 x2(10) <= not B(10);
		 X(10) <= x1(10) nor x2(10);
		 
       x1(11) <= not A(11);
		 x2(11) <= not B(11);
		 X(11) <= x1(11) nor x2(11);
		 
       x1(12) <= not A(12);
		 x2(12) <= not B(12);
		 X(12) <= x1(12) nor x2(12);
		 
       x1(13) <= not A(13);
		 x2(13) <= not B(13);
		 X(13) <= x1(13) nor x2(13);
		 
       x1(14) <= not A(14);
		 x2(14) <= not B(14);
		 X(14) <= x1(14) nor x2(14);
		 
       x1(15) <= not A(15);
       x2(15) <= not B(15); 
       X(15) <= x1(15) nor x2(15);       
end architecture;