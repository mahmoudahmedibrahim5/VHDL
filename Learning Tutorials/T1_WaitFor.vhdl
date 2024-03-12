entity T1_WaitFor is

end entity;

architecture sim of T1_WaitFor is
begin

	process
	begin
		
		report "Hi";
		wait for 10 ns;
		
	end process;

end sim;
