library	IEEE;
use IEEE.std_logic_1164.all;

entity DMux4Way_test is	
end entity;

architecture arch_test of DMux4Way_test is

	-- Component declaration
	component DMux4Way
		port(
		A : in std_logic;
		s1 : in std_logic;
		s2 : in std_logic;
		X : out std_logic;	
		Y : out std_logic;
		Z : out std_logic;
		W : out std_logic
		);
		
	end component;
	
	-- Signal declaration
	
	signal A_test : std_logic := '0';
	signal s1_test : std_logic := '0';
	signal s2_test : std_logic := '0';
	signal X_test : std_logic;
	signal Y_test : std_logic;
	signal Z_test : std_logic;
	signal W_test : std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: DMux4Way
		port map (
			a => A_test,
			s1 => s1_test,
			s2 => s2_test,
			X => X_test,
		   Y => Y_test,
			Z => Z_test,
		   W => W_test
			
			
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Inicio del test para DMux4Way"	  
		severity note;
		
		A_test 	<= '0';
		s1_test 	<= '0';	
	   s2_test   <= '0';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '0' and W_test = '0'
		    report "Falla en A=0, s1=0 y s2=0"
		    severity failure;
			 
		A_test 	<= '0';
		s1_test 	<= '0';	
	   s2_test   <= '1';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '0' and W_test = '0'
		    report "Falla en A=0, s1=0 y s2=1"
		    severity failure;
			 
		A_test 	<= '0';
		s1_test 	<= '1';	
	   s2_test   <= '0';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '0' and W_test = '0'
		    report "Falla en A=0, s1=1 y s2=0"
		    severity failure;
			 
		A_test 	<= '0';
		s1_test 	<= '1';	
	   s2_test   <= '1';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '0' and W_test = '0'
		    report "Falla en A=0, s1=1 y s2=1"
		    severity failure;
		
		A_test 	<= '1';
		s1_test 	<= '0';	
	   s2_test   <= '0';	
		wait for 1 ns;
		assert X_test = '1' and Y_test = '0' and Z_test = '0' and W_test = '0'
		    report "Falla en A=1, s1=0 y s2=0"
		    severity failure;
		
		A_test 	<= '1';
		s1_test 	<= '0';	
	   s2_test   <= '1';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '1' and Z_test = '0' and W_test = '0'
		    report "Falla en A=1, s1=0 y s2=1"
		    severity failure;
			 
		A_test 	<= '1';
		s1_test 	<= '1';	
	   s2_test   <= '0';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '1' and W_test = '0'
		    report "Falla en A=1, s1=1 y s2=0"
		    severity failure;
			 
		A_test 	<= '1';
		s1_test 	<= '1';	
	   s2_test   <= '1';	
		wait for 1 ns;
		assert X_test = '0' and Y_test = '0' and Z_test = '0' and W_test = '1'
		    report "Falla en A=1, s1=1 y s2=1"
		    severity failure;
		  
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;