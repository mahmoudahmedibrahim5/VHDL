library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
begin
end ShiftRegister;

architecture sim of ShiftRegister is

	-- Declare Signals
	signal reg : std_logic_vector(7 downto 0) := "10000000";
	
begin

	process
	begin
		-- main process
		for i in reg'left downto reg'right + 1 loop
			reg(i) <= reg(i-1);
		end loop;
		reg(reg'right) <= reg(reg'left);
		
		wait for 10 ns;
	end process;
	
	
end sim;
