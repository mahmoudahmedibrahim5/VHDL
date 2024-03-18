library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_File is

    port(
        -- Input Signals
        R1       : in std_logic_vector(5 downto 1);
        R2       : in std_logic_vector(5 downto 1);
        R3       : in std_logic_vector(5 downto 1);
        data     : in std_logic_vector(31 downto 0);
        clk      : in std_logic;
        RegWrite : in std_logic;

        -- Output Signals
        output1 : out std_logic_vector(31 downto 0);
        output2 : out std_logic_vector(31 downto 0)
    );

end Register_File;

architecture rtl of Register_File is
    -- Initial Values of registers are their numbers 
    -- R0 = 0, R1 = 1, R22 = 22, R31 = 31
    type ArrayRegisters is array (0 to 31) of std_logic_vector(31 downto 0);
    signal Registers : ArrayRegisters := ( 
                                            x"00000000", 
                                            x"00000001",
                                            x"00000002",
                                            x"00000003",
                                            x"00000004",
                                            x"00000005",
                                            x"00000006",
                                            x"00000007",
                                            x"00000008",
                                            x"00000009",
                                            x"0000000A",
                                            x"0000000B",
                                            x"0000000C",
                                            x"0000000D",
                                            x"0000000E",
                                            x"0000000F",
                                            x"00000010",
                                            x"00000011",
                                            x"00000012",
                                            x"00000013",
                                            x"00000014",
                                            x"00000015",
                                            x"00000016",
                                            x"00000017",
                                            x"00000018",
                                            x"00000019",
                                            x"0000001A",
                                            x"0000001B",
                                            x"0000001C",
                                            x"0000001D",
                                            x"0000001E",
                                            x"0000001F"
                                         );
begin
    -- Main Process
    process(clk)
        variable temp : integer := 0;
    begin
        
        if rising_edge(clk) then
            if RegWrite = '1' then
                temp := to_integer(unsigned(R3));
                Registers(temp) <= data;
            end if;
        else
            temp := to_integer(unsigned(R1));
            output1 <= Registers(temp);
            temp := to_integer(unsigned(R2));
            output2 <= Registers(temp);
        end if;

    end process;

end rtl;
