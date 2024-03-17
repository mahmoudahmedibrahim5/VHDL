library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NAND_Gate is
    generic(inputWidth : integer);
    port(
        input : in std_logic_vector(inputWidth-1 downto 0);
        output: out std_logic);

end NAND_Gate;

architecture rtl of NAND_Gate is
    
begin
    process(input)
        variable temp : std_logic;
    begin
        temp := '1';
        
        for i in inputWidth-1 downto 0 loop
            temp := temp and input(i);
        end loop;
        
        output <= not(temp);

    end process;

end architecture rtl;
