entity T0_HelloWorld is

end T0_HelloWorld;


architecture sim of T0_HelloWorld is
begin
	
	process
	begin
		report "HelloWorld";
		wait;
	end process;

end sim;

