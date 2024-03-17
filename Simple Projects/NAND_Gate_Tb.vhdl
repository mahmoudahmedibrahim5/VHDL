library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NAND_Gate_Tb is 
end NAND_Gate_Tb;

architecture sim of NAND_Gate_Tb is

	constant inputWidth : integer := 3;

	signal input : std_logic_vector(inputWidth-1 downto 0) := (others => '0');
	signal output : std_logic;
begin
	
i_nor : entity work.NAND_Gate(rtl) 
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
