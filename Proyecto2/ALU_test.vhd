library	IEEE;
use IEEE.std_logic_1164.all;


entity ALU_test is
end entity;

architecture arch of ALu_test is
    
  component ALU
	          port(
				      A : in std_logic;
						B : in std_logic;
						s1 : in std_logic;
						s2 : in std_logic;
						X : out std_logic
				 
				 );
	end component;
	
	signal A_test, B_test, s1_test, s2_test, x1_test, x2_test, x3_test, x4_test : std_logic := '0'; 
	signal X_test : std_logic;
	
	begin 
	
	dut1 : ALU
	port map(
	         A => A_test,
				B => B_test,
				s1 => s1_test,
				s2 => s2_test,
				X => X_test
				
	);
	
	Stimulus : process
	begin 
	
	   report "Inicio para test de una ALU"
		     severity note;
			  
			  x1_test <= '0';
			  x2_test <= '0';
			  x3_test <= '0';
			  x4_test <= '0';
			  s1_test <= '0';
			  s2_test <= '0';
			  wait for 1 ns;
			  assert X_test ='0'
			         report"Falla para x1=0, x2=0, x3=0, x4=0, s1=0 y s2=0"
						severity failure;
						
			  x1_test <= '0';
			  x2_test <= '0';
			  x3_test <= '0';
			  x4_test <= '1';
			  s1_test <= '0';
			  s2_test <= '0';
			  wait for 1 ns;
			  assert X_test ='0'
			         report"Falla para x1=0, x2=0, x3=0, x4=1, s1=0 y s2=0"
						severity failure;
				
			  x1_test <= '0';
			  x2_test <= '0';
			  x3_test <= '0';
			  x4_test <= '0';
			  s1_test <= '0';
			  s2_test <= '1';
			  wait for 1 ns;
			  assert X_test ='0'
			         report"Falla para x1=0, x2=0, x3=0, x4=0, s1=0 y s2=1"
						severity failure;
						
			  x1_test <= '0';
			  x2_test <= '0';
			  x3_test <= '1';
			  x4_test <= '0';
			  s1_test <= '1';
			  s2_test <= '0';
			  wait for 1 ns;
			  assert X_test ='1'
			         report"Falla para x1=0, x2=1, x3=1, x4=0, s1=1 y s2=1"
						severity failure;
						
						
			  report "Test exitoso"
			  severity note;
			  wait;
		end process;
end architecture;
						
						
						