library ieee;
use ieee.std_logic_1164.all;

entity NOR_Gate_Tb is 
end NOR_Gate_Tb;

architecture sim of NOR_Gate_Tb is

	signal input : std_logic_vector(1 downto 0) := (others => '0');
	signal output : std_logic;
begin
	
i_nor : entity work.NOR_Gate(rtl) 
		port map(
			input  => input,
			output => output);
			
	process
	begin
		
		input(0) <= not(input(0));
		wait for 5 ns;
		input(0) <= not(input(0));
		input(1) <= not(input(1));
		wait for 5 ns;
		
	end process;

end sim;
