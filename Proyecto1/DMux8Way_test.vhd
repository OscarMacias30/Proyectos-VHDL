library	IEEE;
use IEEE.std_logic_1164.all;

entity DMux8Way_test is	
end entity;

architecture arch_test of DMux8Way_test is

	component DMux8Way
		port(
		A 	: in std_logic;
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		X1 : out std_logic;	
		X2: out std_logic;
		X3:	out	std_logic;
		X4	:	out	std_logic;
		X5:	out	std_logic;
		X6	:	out	std_logic;
		X7:	out	std_logic;
		X8	:	out	std_logic
		);
		
	end component;
	
	-- Signal declaration
	
	signal A_test	: std_logic := '0';
	signal s1_test	: std_logic := '0';
	signal s2_test	: std_logic := '0';
	signal s3_test	: std_logic := '0';
	signal X1_test	: std_logic;
	signal X2_test	: std_logic;
	signal X3_test	: std_logic;
	signal X4_test	: std_logic;
	signal X5_test	: std_logic;
	signal X6_test	: std_logic;
	signal X7_test	: std_logic;
	signal X8_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: DMux8Way
		port map (
			A 	=> A_test,
			s1 => s1_test,
			s2 => s2_test,
			s3 => s3_test,
			X1 => X1_test,
		   X2 => X2_test,
			X3 => X3_test,
		   X4 => X4_test,
			X5 => X5_test,
		   X6 => X6_test,
			X7 => X7_test,
		   X8 => X8_test
			
			
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Inicio del test para el DMux8Way"	  
		severity note;
		
		A_test <= '0';
		s1_test <= '0';	
	   s2_test <= '0';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=0, s2=0 y s3=0"
		  severity failure;
		
		A_test <= '0';
		s1_test <= '0';	
	   s2_test <= '0';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=0, s2=0 y s3=1"
		  severity failure;
		  
		A_test <= '0';
		s1_test <= '0';	
	   s2_test <= '1';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=0, s2=1 y s3=0"
		  severity failure;
		  
		A_test <= '0';
		s1_test <= '0';	
	   s2_test <= '1';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=0, s2=1 y s3=1"
		  severity failure;
		  
		A_test <= '0';
		s1_test <= '1';	
	   s2_test <= '0';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=1, s2=0 y s3=0"
		  severity failure;
		 
		A_test <= '0';
		s1_test <= '1';	
	   s2_test <= '0';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=1, s2=0 y s3=1"
		  severity failure;
		
		A_test <= '0';
		s1_test <= '1';	
	   s2_test <= '1';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=1, s2=1 y s3=0"
		  severity failure;
		
		A_test <= '0';
		s1_test <= '1';	
	   s2_test <= '1';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=0, s1=1, s2=1 y s3=1"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '0';	
	   s2_test <= '0';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '1' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=0, s2=0 y s3=0"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '0';	
	   s2_test <= '0';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '1' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=0, s2=0 y s3=1"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '0';	
	   s2_test <= '1';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '1' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=0, s2=1 y s3=0"
		  severity failure;
		 		
		A_test <= '1';
		s1_test <= '0';	
	   s2_test <= '1';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '1' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=0, s2=1 y s3=1"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '1';	
	   s2_test <= '0';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '1' and X6_test = '0' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=1, s2=0 y s3=0"
		  severity failure;
		
		A_test <= '1';
		s1_test <= '1';	
	   s2_test <= '0';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '1' and X7_test = '0' and X8_test = '0'
		  report "Falla en A=1, s1=1, s2=0 y s3=1"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '1';	
	   s2_test <= '1';	
		s3_test <= '0';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '1' and X8_test = '0'
		  report "Falla en A=1, s1=1, s2=1 y s3=0"
		  severity failure;
		  
		A_test <= '1';
		s1_test <= '1';	
	   s2_test <= '1';	
		s3_test <= '1';
		wait for 1 ns;
		assert X1_test = '0' and X2_test = '0' and X3_test = '0' and X4_test = '0' and X5_test = '0' and X6_test = '0' and X7_test = '0' and X8_test = '1'
		  report "Falla en A=1, s1=1, s2=1 y s3=1"
		  severity failure;

		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;