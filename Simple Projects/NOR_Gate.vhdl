library ieee;
use ieee.std_logic_1164.all;

entity NOR_Gate is

generic(inputWidth : integer);

port(	-- Input Signals
		input : in std_logic_vector(inputWidth-1 downto 0);
		
		-- Output Signals
		output : out std_logic);
	 
end NOR_Gate;

architecture rtl of NOR_Gate is

	
begin
	
	-- Main Process
	process(input) is
		variable temp : std_logic := '0';
	begin
		temp := '0';
		
		for i in inputWidth-1 downto 0 loop
			temp := temp or input(i);
		end loop;
		
		output <= temp;
		
		
	end process;

end rtl;
