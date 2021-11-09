----------------------------------------------------------------------------------
-- Company: HKU ELEC3342
-- Engineer: Tam Chun Kit
-- 
-- Create Date: 11/04/2021 12:17:55 PM
-- Design Name: 
-- Module Name: symdet - Behavioral (L2)
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity symdet is
    Port (
        d_bin : in STD_LOGIC;
         dot : out STD_LOGIC;
         dash : out STD_LOGIC;
         lg : out STD_LOGIC;
         wg : out STD_LOGIC;
         valid : out STD_LOGIC;
         clr : in STD_LOGIC;
         clk : in STD_LOGIC);
end symdet;

architecture Behavioral of symdet is
    signal cnt0, cnt1: std_logic_vector(7 downto 0) := x"00";
    signal d_bin_prev: std_logic := '1';
    signal reset0, reset1, turned_on: std_logic := '0';
    signal u: std_logic_vector (3 downto 0) := x"2";
    signal u2, u4, u6, u8: std_logic_vector (7 downto 0);
begin
    
    process (u, clk)
    begin
        if (rising_edge (clk)) then
            u2 <= "000" & u & "0";
            u4 <= "00" & u & "00";
            u6 <= u4 + u2;
            u8 <= "0" & u & "000";
        end if;
    end process;
    
    -- Counter for ones
    proc_countOne:process (clk, cnt1)
    begin
        if rising_edge (clk) then
            if (clr = '1') then cnt1 <= (others => '0');
            elsif (reset1 = '1') then cnt1 <= (others => '0');
            elsif (d_bin = '1') then
                if (cnt1 = x"FF") then cnt1 <= (others => '0');
                else cnt1 <= cnt1 + 1;
                end if;
            end if;
        end if;
    end process;

    -- Counter for zeros
    proc_countZero:process (clk, cnt0)
    begin
        if rising_edge (clk) then
            if (clr = '1') then cnt0 <= (others => '0');
            elsif (reset0 = '1') then cnt0 <= (others => '0');
            elsif (d_bin = '0') then
                if (cnt0 = x"FF") then cnt0 <= (others => '0');
                else cnt0 <= cnt0 + 1;
                end if;
            end if;
        end if;
    end process;

    -- NOTE THAT d_bin is ACTIVE_LOW
    -- SO, d_bin = 1: Means lg/wg/sg
    -- SO, d_bin = 0: Means dot/dash

    -- Process that trigger on change of d_bin on rising_edge
    -- from 0 to 1, i.e. dot/dash finished
    proc_output_clk: process (clk, d_bin)
    begin

        if rising_edge (clk) then
            reset0 <= '0';
            reset1 <= '0';
            valid <= '0';
            dot <= '0';
            dash <= '0';
            lg <= '0';
            wg <= '0';

            if (d_bin_prev /= d_bin) then
                if (d_bin = '0') then
                    if (turned_on = '0') then
                        turned_on <= '1';
                        reset1 <= '1';
                    end if;
                    
                    if (cnt1 > 0) and (cnt1 < u2) then
                        reset1 <= '1';
                    elsif (cnt1 > u2) and (cnt1 < u4) then
                        lg <= '1';
                        valid <= '1';
                        reset1 <= '1';
                    elsif (cnt1 > u6) and (cnt1 < u8) then
                        wg <= '1';
                        valid <= '1';
                        reset1 <= '1';
                    end if;
                    
                elsif (d_bin = '1') then
                    -- dot --
                    if (cnt0 > 0) and (cnt0 < u2) then
                        dot <= '1';
                        valid <= '1';
                        
                        
--                        if (cnt0 < x"4" and cnt0 > x"0") then
--                            u <= x"2";
--                        elsif (cnt0 < x"6" and cnt0 > x"3") then
--                            u <= x"3";
--                        elsif (cnt0 < x"8" and cnt0 > x"5") then
--                            u <= x"4";
--                        end if;
                        
                        reset0 <= '1';
                        
                    elsif (cnt0 > u2) and (cnt0 < u4) then
                        dash <= '1';
                        valid <= '1';
                        reset0 <= '1';
                    end if;
                end if;
            end if;
        end if;
        d_bin_prev <= d_bin;

    end process;

end Behavioral;
