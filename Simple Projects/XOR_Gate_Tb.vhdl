library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XOR_Gate_Tb is
		
end XOR_Gate_Tb;

architecture sim of XOR_Gate_Tb is

constant len : integer := 3;
signal input : std_logic_vector(len-1 downto 0) := (others => '0');
signal output : std_logic;

begin
	i_xor : entity work.XOR_Gate(rtl)
			generic map(inputWidth => len)
			port map( input  => input,
					  output => output);
	
	process
		variable count : unsigned(len-1 downto 0) := (others => '0');
	begin
		
		report "Input = ";
		for i in len-1 downto 0 loop
			report std_logic'image(input(i));
		end loop;
		
		count := count + 1;
		for i in len-1 downto 0 loop
			input(i) <= count(i);
		end loop;
		wait for 5 ns;
	
	end process;
	
end sim;
