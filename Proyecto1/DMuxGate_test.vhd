library	IEEE;
use IEEE.std_logic_1164.all;

entity DMuxGate_test is 
end entity;

architecture arch of DMuxGate_test is 
         component DMuxGate
			         Port(
						     A : in std_logic;
							  s : in std_logic;
							  X : out std_logic;
							  Y : out std_logic
						);
			end component;
			signal A_test : std_logic := '0';
			signal s_test : std_logic := '0';
			signal X_test : std_logic;
			signal Y_test : std_logic;
			
			begin 
			
			dut1 : DMuxGate
			      Port map(
					         A => A_test,
								s => s_test,
								X => X_test,
								Y => Y_test
					);
			
			Stimulus : process
			begin 
			     
				  report "Inicio del test de DMuxGate"
				        severity note;
						  
						  A_test <= '0';
						  s_test <= '0';
						  wait for 1 ns;
						  assert X_test = '0';
						  assert Y_test = '0';
						    report "Falla para A=0 y s=0"
							 severity failure;
							 
						  A_test <= '0';
						  s_test <= '1';
						  wait for 1 ns;
						  assert X_test = '0';
						  assert Y_test = '0';
						    report "Falla para A=0 y s=1"
							 severity failure;
							 
						  A_test <= '1';
						  s_test <= '0';
						  wait for 1 ns;
						  assert X_test = '1';
						  assert Y_test = '0';
						    report "Falla para A=1 y B=0"
							 severity failure;
							 
						  A_test <= '1';
						  s_test <= '1';
						  wait for 1 ns;
						  assert X_test = '0';
						  assert Y_test = '1';
						    report "Falla para A=1 y B=1"
							 severity failure;
							 
							 
						  report "Test exitoso"
						  severity note;
						  wait;
						  
				end process;
						  
end architecture;
						  