entity T3_WhileLoop is
begin

end entity;

architecture sim of T3_WhileLoop is
begin

	process 
		variable i : integer := 0;
		
	begin
		i := 0;
		while i < 5 loop
			report "i = " & integer'image(i);
			i := i + 1;
			wait for 10 ns;
		end loop;
	end process;

end sim;
