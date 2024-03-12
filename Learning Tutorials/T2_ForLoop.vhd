entity T2_ForLoop is

end entity;

architecture sim of T2_ForLoop is
begin

	process
	begin
		
		report "Start Loop";
		
		for i in 1 to 5 loop
			report "Looping" & "... " & integer'image(i);
			wait for 10 ns;
		end loop;
		
		report "end loop";
		
	end process;

end sim;
