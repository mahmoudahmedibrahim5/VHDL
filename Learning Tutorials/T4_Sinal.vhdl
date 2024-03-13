entity T4_Signal is
begin

end T4_Signal;

architecture sim of T4_Signal is

	signal sig : integer := 0;
begin
	
	process
		variable var : integer := 0;
	
	begin
			sig <= sig + 1;
			var := var + 1;
			
			report "signal = " & integer'image(sig) 
				& ", variable = " & integer'image(var);
			
			wait for 10 ns;
			
			report "After delay: " 
				& "signal = " & integer'image(sig) 
				& ", variable = " & integer'image(var);
				
	end process;
	
end sim;
