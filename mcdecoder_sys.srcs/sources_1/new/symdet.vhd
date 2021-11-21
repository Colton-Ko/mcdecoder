----------------------------------------------------------------------------------
-- Company: HKU ELEC3342
-- Engineer: Tam Chun Kit
-- 
-- Create Date: 11/04/2021 12:17:55 PM
-- Design Name: 
-- Module Name: symdet - Behavioral (L3)
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
    Port ( d_bin : in STD_LOGIC := '0';
         dot : out STD_LOGIC := '0';
         dash : out STD_LOGIC := '0';
         lg : out STD_LOGIC := '0';
         wg : out STD_LOGIC := '0';
         valid : out STD_LOGIC := '0';
         clr : in STD_LOGIC := '0';
         clk : in STD_LOGIC := '0');
end symdet;

-- Start symbol: dot sg


architecture Behavioral of symdet is

    signal cnt0, cnt1 : std_logic_vector(15 downto 0) := (others => '0');
    signal d_bin_prev, u_invalid: std_logic := '1';
    signal reset0, reset1, turned_on, output_trig: std_logic := '0';
    signal count_u, count_sym : std_logic_vector (15 downto 0) := (others => '0');
    signal u2, u4, u6, u8: std_logic_vector (19 downto 0) := (others => '0');

    signal u_c, u_c_next: std_logic_vector(3 downto 0) := (others => '0');
    signal u_est_sum, u_est_sum_next, u, u_1st, u_est: std_logic_vector(15 downto 0) := (others => '0');
    signal reset, u_est_avail, u_predicted, decode_dbuff_1st: std_logic := '0';

    signal d_buff, d_buff_prev, d_buff_1st : std_logic_vector (15 downto 0) := (others => '0');

begin

    -- mux for choosing the final u to output
    proc_mux_outputU: process(clk)
    begin
        if rising_edge (clk) then
            if (clr = '1' or reset = '1') then
                u <= (others => '0');
            elsif (u_invalid = '0') then
                case (u_est_avail) is
                    when '0' => u <= u_1st ;
                    when '1' => u <= u_est ;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    -- Generate multiples of u
    proc_genMulU: process (u, clk)
    begin
        if (rising_edge (clk)) then
            u2 <= "000" & u & "0";
            u4 <= "00" & u & "00";
            u6 <= u4 + u2;
            u8 <= "0" & u & "000";
        end if;
    end process;

    -- Counter for ones
    -- Also for guessing the base unit
    proc_countOne:process (clk, cnt1)
    begin
        if rising_edge (clk) then
            reset <= '0';
            if (clr = '1') then cnt1 <= (others => '0');
            -- This is way too long
            elsif (cnt1 > u8 and u8 > 0) then
                reset <= '1';
            elsif (reset1 = '1') then
                cnt1 <= (others => '0');
            elsif (reset = '1') then cnt1 <= (others => '0');
            elsif (d_bin = '1') then
                if (cnt1 = x"7FFF") then cnt1 <= (others => '0');
                else cnt1 <= cnt1 + 1;
                end if;
            end if;
        end if;
    end process;

    -- Counter for zeros
    -- Also for guessing the first base unit
    proc_countZero:process (clk, cnt0)
    begin
        if rising_edge (clk) then
            decode_dbuff_1st <= '0';
            if (clr = '1' or reset = '1') then
                cnt0 <= (others => '0');
                u_1st <= (others => '0');
                u_invalid <= '1';
            elsif (reset = '1') then cnt0 <= (others => '0');
            elsif (reset0 = '1') then
                if (u_invalid = '1') then
                    u_1st <= cnt0;
                    u_invalid <= '0';
                    d_buff_1st <= '0' & cnt0(14 downto 0);
                    decode_dbuff_1st <= '1';
                end if;
                cnt0 <= (others => '0');
            elsif (d_bin = '0') then
                if (cnt0 = x"7FFF") then cnt0 <= (others => '0');
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

    proc_writeFifo_clk: process (clk, d_bin)
    begin

        if rising_edge (clk) then

            reset0 <= '0';
            reset1 <= '0';

            if (reset = '1' or clr = '1') then
                turned_on <= '0';
                d_buff <= (others => '0');
            end if;

            if (d_bin_prev /= d_bin) then
                -- Rising edge
                if (d_bin = '0') then
                    if (turned_on = '0') then
                        turned_on <= '1';
                    else
                        -- For CNT1 counter: din_fifo should start with 1.
                        d_buff <= '1' & cnt1(14 downto 0);
                    end if;
                    reset1 <= '1';

                -- Falling edge
                elsif (d_bin = '1') then
                    -- For CNT0 counter: din_fifo should start with 0.
                    d_buff <= '0' & cnt0(14 downto 0);
                    reset0 <= '1';
                end if;
            end if;
        end if;
        d_bin_prev <= d_bin;

    end process;

    -- Sliding window average estimator, samples 4 base units of signal to determine change of base unit (speed)
    proc_u_estimator_counter: process(clk)
    begin
        if rising_edge (clk) then
            u_c <= u_c_next ;
            u_est_sum <= u_est_sum_next ;
            u_predicted <= '0';
            if (reset = '1' or clr = '1') then
                u_c <= (others => '0');
                u_est_sum <= (others => '0');
                u_est_avail <= '0';
                u_est <= (others => '0');
            else
                -- If u_c = 8, then u_est = u_est_sum / 8;
                if (u_c = "1000") then
                    -- Divide by 8
                    u_est <= "000" & u_est_sum (15 downto 3);
                                        u_est_avail <= '1';
                    u_predicted <= '1';
                end if;
            end if;
        end if;
    end process;

    proc_outputTrig: process(clk)
    begin
        if rising_edge (clk) then
            output_trig <= '0';
            count_sym <= (others => '0');
            if (reset = '1' or clr = '1') then
                d_buff_prev <= (others => '0');
            elsif (d_buff /= d_buff_prev ) then
                output_trig <= '1';
                count_sym <= '0' & d_buff (14 downto 0);
                d_buff_prev <= d_buff;
            end if;
        end if;
    end process;

    proc_determineOutput: process(clk, u_invalid)
    begin
        if rising_edge (clk) then
            valid <= '0';
            dot <= '0';
            dash <= '0';
            lg <= '0';
            wg <= '0';

            if (u_predicted = '1') then
                u_c_next <= (others => '0');
                u_est_sum_next <= (others => '0');
            end if;

            if (reset = '1' or clr = '1') then
                u_c_next <= (others => '0');
                u_est_sum_next <= (others => '0');
            end if;
            
            if (decode_dbuff_1st = '1') then
                dot <= '1';
                valid <= '1';
            end if;


            if (u_invalid = '0') then
                if (output_trig  = '1') then

                    if d_buff (15) = '1' then

                        -- this is a sg
                        if (count_sym > 0) and (count_sym < u2) then
                            null;
--                            if (u_predicted = '0') then
--                                u_c_next <= u_c + 1;
--                                u_est_sum_next <= u_est_sum + count_sym ;
--                            end if;
                        elsif (count_sym > u2) and (count_sym < u4) then
                            lg <= '1';
                            valid <= '1';
                        elsif (count_sym > u6) and (count_sym < u8) then
                            wg <= '1';
                            valid <= '1';
                        end if;

                    elsif d_buff(15) = '0' then

                        if (count_sym > 0) and (count_sym < u2) then
                            if (u_predicted = '0') then
                                u_c_next <= u_c + 1;
                                u_est_sum_next <= u_est_sum + count_sym ;
                            end if;
                            dot <= '1';
                            valid <= '1';

                        elsif (count_sym > u2) and (count_sym < u4) then
                            dash <= '1';
                            valid <= '1';

                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;