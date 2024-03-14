library ieee;
use ieee.std_logic_1164.all;

entity AND_Gate is
begin

end AND_Gate;

architecture sim of AND_Gate is

-- Signals Declaration
signal input1 : std_logic := '0';
signal input2 : std_logic := '0';
signal output : std_logic := '0';

begin

	process(input1, input2)
	begin
		
		if input1 = '1' and input2 = '1' then
			output <= '1';
		else
			output <= '0';
		end if;
		
	end process;
	
	process
	begin
		input1 <= not(input1);
		wait for 5 ns;
		input1 <= not(input1);
		input2 <= not(input2);
		wait for 5 ns;
	end process;
	
end sim;