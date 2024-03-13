entity T6_SensitivityList is
begin
end T6_SensitivityList;

architecture sim of T6_SensitivityList is

	-- Initialize Signals
	signal CountUp 	 : integer := 0; 
	signal CountDown : integer := 10;
	
begin

	process
	begin
		-- main process
		CountUp   <= CountUp + 1;
		CountDown <= CountDown - 1;
		wait for 10 ns;
	end process;
	
	process(CountUp, CountDown)
	begin
		-- interrupt
		if CountUp > CountDown then
			report "Count Up is larger";
		elsif CountDown > CountUp then
			report "Count Down is larger";
		else
			report "They are equal";
		end if;
		
	end process;

end sim;
