library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T7_ClockedProcess is

end T7_ClockedProcess;

architecture sim of T7_ClockedProcess is
    
    constant frequency : integer := 100e6;  --100 MHz
    constant period    : time    := 1000 ms / frequency;
    signal clk : std_logic := '1';
begin
    
    clk <= not(clk) after period/2;

end architecture sim;
