library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OR_Gate_Tb is 
end OR_Gate_Tb;

architecture sim of OR_Gate_Tb is

	constant inputWidth : integer := 3;

	signal input : std_logic_vector(inputWidth-1 downto 0) := (others => '0');
	signal output : std_logic;
begin
	
i_nor : entity work.OR_Gate(rtl) 
		generic map(inputWidth => inputWidth)
		port map(
			input  => input,
			output => output);
			
	process
		variable count : unsigned(inputWidth-1 downto 0) := (others => '0');
	begin
		
		for i in inputWidth-1 downto 0 loop
			input(i) <= count(i);
		end loop;
		
		count := count + 1;
		
		wait for 5 ns;
	end process;

end sim;
