library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
    generic(frequency : integer);
    port(clk : out std_logic);
end Clock;

architecture rtl of Clock is
    
    constant period : time := 1000 ms / frequency; 
    signal InitialValue : std_logic := '1';
begin

    InitialValue <= not(InitialValue) after period/2;
    clk <= InitialValue;

end rtl;
