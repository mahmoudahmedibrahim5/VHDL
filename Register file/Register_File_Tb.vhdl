library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_File_Tb is

end Register_File_Tb;

architecture sim of Register_File_Tb is

    constant ClockFrequency : integer := 100e6; --100 MHz

    signal R1   : std_logic_vector(5 downto 1);
    signal R2   : std_logic_vector(5 downto 1);
    signal R3   : std_logic_vector(5 downto 1);
    signal data : std_logic_vector(31 downto 0);
    signal clk  : std_logic;
    signal RegWrite : std_logic;
    signal output1  : std_logic_vector(31 downto 0);
    signal output2  : std_logic_vector(31 downto 0);
    
begin
    i_clock : entity work.Clock(rtl)
            generic map(frequency => ClockFrequency)
            port map(clk => clk);

    i_file : entity work.Register_File(rtl)
            port map(
                R1       => R1,
                R2       => R2,
                R3       => R3,
                data     => data,
                clk      => clk,
                RegWrite => RegWrite,
                output1  => output1,
                output2  => output2
            );

    -- Test 1
    -- process
    -- begin
    --     ---------- Clock Cycle 1 ----------
    --     RegWrite <= '0';
    --     R1 <= "00000"; -- r0
    --     R2 <= "00001"; -- r1
        
    --     data <= x"0000FFFF";
    --     R3 <= "01000"; -- r8
    --     wait for 10 ns;

    --     ---------- Clock Cycle 2 ----------
    --     RegWrite <= '1';
    --     R1 <= "00101"; -- r5
    --     R2 <= "01001"; -- r9
        
    --     data <= x"FFFF0000";
    --     R3 <= "10000"; -- r16
    --     wait for 10 ns;

    --     ---------- Clock Cycle 3 ----------
    --     R1 <= "01000"; -- r8
    --     R2 <= "10000"; -- r16
        
    --     data <= x"00000000";
    --     R3 <= "00000"; -- r0
    --     wait for 10 ns;

    -- end process;
    
    -- Test 2
    process
    begin
        ---------- Clock Cycle 1 ----------
        RegWrite <= '1';
        R1 <= "00000"; -- r0
        R2 <= "00001"; -- r1
        
        data <= x"0000FFFF";
        R3 <= "01000"; -- r8
        wait for 10 ns;

        ---------- Clock Cycle 2 ----------
        RegWrite <= '1';
        R1 <= "10000"; -- r5
        R2 <= "00000"; -- r9
        
        data <= x"FFFF0000";
        R3 <= "10000"; -- r16
        wait for 10 ns;

    end process;
end sim;
