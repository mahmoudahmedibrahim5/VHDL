library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XOR_Gate is

	generic(inputWidth : integer);
	
	port(
		-- Input Signals 
		input : in std_logic_vector(inputWidth-1 downto 0);
		
		-- Output Signals
		output : out std_logic);
		
end XOR_Gate;

architecture rtl of XOR_Gate is

begin
	
	process(input)
		variable temp : std_logic := '0';
	begin
		
		temp := '0';
		
		for i in inputWidth-2 downto 0 loop
			if input(i+1) /= input(i) then
				temp := '1';
			end if;
		end loop;
		
		output <= temp;
		
	end process;
	
end rtl;
