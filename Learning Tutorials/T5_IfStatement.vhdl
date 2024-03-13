entity T5_IfStatement is
begin

end T5_IfStatement;

architecture sim of T5_IfStatement is

-- Declare signals
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
	
	process
	begin
		-- interrupt
		if CountUp > CountDown then
			report "Count Up is larger";
		elsif CountDown > CountUp then
			report "Count Down is larger";
		else
			report "They are equal";
		end if;
		
		wait on CountUp, CountDown;
	end process;
	
end sim;
