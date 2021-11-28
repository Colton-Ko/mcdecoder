----------------------------------------------------------------------------------
-- Company: HKU ELEC3342
-- Engineer: Tam Chun Kit (HKMDLL)
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
-- i7-4940MX
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity symdet is
    Port ( d_bin : in STD_LOGIC := '1';
         dot : out STD_LOGIC;
         dash : out STD_LOGIC;
         lg : out STD_LOGIC;
         wg : out STD_LOGIC;
         valid : out STD_LOGIC;
         clr : in STD_LOGIC;
         clk : in STD_LOGIC);
end symdet;

architecture Behavioral of symdet is

    -- buffer for SI
    COMPONENT fifo_generator_1
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals for counter subsystem (CT)
    signal ct_cnt0, ct_cnt1 : integer := 0;
    signal t_d_bin_prev: std_logic := '1';
    signal ct_reset0, ct_reset1: std_logic := '0';
    signal t_reset: std_logic := '0';
    signal t_turned_on: std_logic := '0';

    -- Signals for Base Unit Predictor subsystem (BUP)
    signal bup_cntr: integer := 1;
    signal bup_Lmin: integer := 0;
    signal bup_partLen: integer := 0;
    signal bup_FindMinTrig: std_logic := '0';
    signal bup_predicted_coarse_u, bup_predicted_fine_u: std_logic := '0';
    signal u_coarse, u_fine, u_fine_sum, u_fine_wsize: integer := 0;

    -- Signals of symbol inferencer subsystem (SI)
    signal si_u_fine_est_window : integer := 8;
    signal si_buffer_wr, si_buffer_rd, si_buffer_prev, si_buffer_full, si_buffer_empty, si_firstWrite, si_out_trig: std_logic := '0';
    signal si_buffer_din, si_buffer_dout: std_logic_vector (15 downto 0);
    signal si_partLen: integer := 0;

begin
    -- MAINTAIN EASE OF HARDWARE DESCRIPTION!
    -- For each process, ONLY modify ONE signal at a time.
    -- DO NOT manipulate more than one signal in one process!
    -- Spaghetti is NOT allowed!

    -- CT REGION : The Counter subsystem
    proc_countOne:process (clk, ct_cnt1)
    begin
        if rising_edge (clk) then
            if (clr = '1') or (ct_reset1 = '1') or (t_reset = '1') then
                ct_cnt1 <= 0;
            elsif (d_bin = '1') then
                if (ct_cnt1 = 32767) then
                    ct_cnt1 <= 0;
                else
                    ct_cnt1 <= ct_cnt1 + 1;
                end if;
            end if;
        end if;
    end process;

    proc_countZero:process (clk, ct_cnt0)
    begin
        if rising_edge (clk) then

            if (clr = '1') or (ct_reset0 = '1') or (t_reset = '1') then
                ct_cnt0 <= 0;
            elsif (d_bin = '0') then
                if (ct_cnt0 = 32767) then
                    ct_cnt0 <= 0;
                else
                    ct_cnt0 <= ct_cnt0 + 1;
                end if;
            end if;
        end if;
    end process;

    proc_turn_on: process(clk, d_bin)
    begin
        if rising_edge (clk) then
            if (clr = '1' or t_reset = '1') then
                t_turned_on <= '0';
            elsif (d_bin = '1' and t_d_bin_prev = '0' and t_turned_on = '0') then
                t_turned_on <= '1';
            end if;
        end if;
    end process;

    proc_cntrReset: process (clk, d_bin)
    begin
        if rising_edge (clk) then
            ct_reset0 <= '0';
            ct_reset1 <= '0';
            if (t_d_bin_prev /= d_bin) then
                if (d_bin = '0' and t_d_bin_prev = '1') then
                    ct_reset1 <= '1';
                elsif (d_bin = '1' and t_d_bin_prev = '0') then
                    ct_reset0 <= '1';
                end if;
            end if;
        end if;
    end process;

    proc_delay_dbin: process(clk)
    begin
        if rising_edge (clk) then
            if (t_reset = '1' or clr = '1') then
                t_d_bin_prev <= '1' ;
            else
                t_d_bin_prev <= d_bin ;
            end if;
        end if;
    end process;

    -- BUP REGION: Base Unit Predictor Region
    proc_bupTrigCnt: process (clk, d_bin)
    begin
        if rising_edge (clk) then
            bup_FindMinTrig <= '0';
            if (t_d_bin_prev /= d_bin) then
                bup_FindMintrig <= '1';
            end if;
        end if;
    end process;

    proc_bupCopyCntToPLen: process (clk)
    begin
        if rising_edge (clk) then
            if (t_reset = '1' or clr = '1') then
                bup_partLen <= 0;
            elsif (t_d_bin_prev /= d_bin) then
                if (d_bin = '0' and t_d_bin_prev = '1') then
                    bup_partLen <= ct_cnt1;
                elsif (d_bin = '1' and t_d_bin_prev = '0') then
                    bup_partLen <= ct_cnt0;
                end if;
            end if;
        end if;
    end process;

    proc_bupCntr: process(clk)
    begin
        if rising_edge (clk) then
            if (clr = '1' or t_reset = '1') then
                bup_cntr <= 1;
            elsif t_turned_on = '1' then
                if bup_FindMinTrig = '1' then
                    if bup_cntr = 6 then
                        bup_cntr <= 1;
                    else
                        bup_cntr <= bup_cntr + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    proc_bupOutputU: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' or t_reset = '1' then
                u_coarse <= 0;
                bup_predicted_coarse_u <= '0';
            elsif t_turned_on = '1' then
                if bup_cntr = 6 then
                    u_coarse <= bup_Lmin;
                    bup_predicted_coarse_u <= '1';
                end if;
            end if;
        end if;
    end process;

    proc_bupFindMin: process(clk)
    begin
        if rising_edge (clk) then
            if t_turned_on = '1' then
                if bup_cntr = 1 then
                    bup_Lmin <= bup_partLen;
                else
                    if bup_partLen < bup_Lmin then
                        bup_Lmin <= bup_partLen ;
                    end if;
                end if;
            end if;
        end if;
    end process;

    proc_bup_determineFineU:process(clk)
    begin
    end process;

    -- SI REGION: Symbol inferencer region
    si_buffer: fifo_generator_1
        port map(
            clk => clk,
            srst => clr,
            din => si_buffer_din,
            wr_en => si_buffer_wr,
            rd_en => si_buffer_rd,
            dout => si_buffer_dout,
            full => si_buffer_full,
            empty => si_buffer_empty
        );

    proc_si_putToSIBufferDin: process (clk, d_bin)
    begin
        if rising_edge (clk) then
            si_buffer_din <= (others => '0');
            if si_firstWrite = '1' then
                si_buffer_din <= '0' & std_logic_vector (to_unsigned(bup_partLen, 15));
            elsif t_turned_on = '1' then
                -- End of U partition -> cnt0
                if (d_bin = '1' and t_d_bin_prev = '0') then
                    si_buffer_din <= '0' & std_logic_vector (to_unsigned(ct_cnt0, 15));
                -- End of A partition -> cnt1
                elsif (d_bin = '0' and t_d_bin_prev = '1') then
                    si_buffer_din <= '1' & std_logic_vector (to_unsigned(ct_cnt1, 15));
                end if;
            end if;
        end if;
    end process;

    proc_si_generateQueueSignalToBuffer: process (clk, d_bin)
    begin
        if rising_edge (clk) then
            si_buffer_wr <= '0';
            if si_firstWrite = '1' and si_buffer_full = '0' then
                si_buffer_wr <= '1';
            elsif t_turned_on = '1' then
                -- End of U partition -> cnt0
                if (d_bin = '1' and t_d_bin_prev = '0' and si_buffer_full = '0') then
                    si_buffer_wr <= '1';
                -- End of A partition -> cnt1
                elsif (d_bin = '0' and t_d_bin_prev = '1' and si_buffer_full = '0') then
                    si_buffer_wr <= '1';
                end if;
            end if;
        end if;
    end process;

    proc_si_dequeueFromSIBuffer: process (clk)
    begin
        if rising_edge (clk) then
            si_buffer_rd <= '0';
            if bup_predicted_coarse_u = '1' then
                if si_buffer_empty = '0' and si_buffer_rd <= '0' then
                    si_buffer_rd <= '1';
                end if;
            end if;
        end if;
    end process;

    proc_si_firstWrite: process(clk, d_bin)
    begin
        if rising_edge (clk) then
            si_firstWrite <= '0';
            if (d_bin = '1' and t_d_bin_prev = '0' and t_turned_on = '0') then
                si_firstWrite <= '1';
            end if;
        end if;
    end process;

    proc_generateTriggerSymDet2: process(clk)
    begin
        if rising_edge (clk) then
            if (t_reset = '1' or clr = '1') then
                si_out_trig <= '0';
            else
                si_out_trig <= si_buffer_prev ;
            end if;
        end if;
    end process;

    proc_generateTriggerSymDet1: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' or t_reset = '1' then
                si_buffer_prev <= '0';
                si_partLen <= 0;
            else
                si_buffer_prev <= si_buffer_rd ;
                si_partLen <= to_integer(unsigned(si_buffer_dout )) ;
            end if;
        end if;
    end process;

    -- Output logic, ONLY exception
    proc_si_determineSymFromSignalLength: process(clk)
    begin
        if rising_edge (clk) then
            dot <= '0';
            dash <= '0';
            lg <= '0';
            wg <= '0';
            valid <= '0';

            if si_out_trig = '1'  then
                if bup_predicted_fine_u = '1' then
                        if si_partLen > 32768 then
    
                        if (si_partLen-32768 > 0 and si_partLen-32768 < 2*u_fine  ) then
                            null;
                        elsif (si_partLen-32768 > 2*u_fine and si_partLen-32768 < 4*u_fine ) then
                            valid <= '1';
                            lg <= '1';
                        elsif (si_partLen-32768 > 6*u_fine and si_partLen-32768 < 8*u_fine ) then
                            valid <= '1';
                            wg <= '1';
                        end if;
    
                    else
    
                        if (si_partLen > 0 and si_partLen < 2*u_fine ) then
                            valid <= '1';
                            dot <= '1';
                        elsif (si_partLen > 2*u_fine and si_partLen < 4*u_fine ) then
                            valid <= '1';
                            dash <= '1';
                        end if;
    
                    end if;
                
                elsif bup_predicted_coarse_u = '1' then
                    if si_partLen > 32768 then

                        if (si_partLen-32768 > 0 and si_partLen-32768 < 2*u_coarse ) then
                            null;
                        elsif (si_partLen-32768 > 2*u_coarse and si_partLen-32768 < 4*u_coarse ) then
                            valid <= '1';
                            lg <= '1';
                        elsif (si_partLen-32768 > 6*u_coarse and si_partLen-32768 < 8*u_coarse ) then
                            valid <= '1';
                            wg <= '1';
                        end if;

                    else

                        if (si_partLen > 0 and si_partLen < 2*u_coarse ) then
                            valid <= '1';
                            dot <= '1';
                        elsif (si_partLen > 2*u_coarse and si_partLen < 4*u_coarse ) then
                            valid <= '1';
                            dash <= '1';
                        end if;

                    end if;
                end if;
            end if;
        end if;
    end process;

    proc_bup_fine_moving_sum: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' then
                u_fine_wsize <= 0;
                u_fine_sum <= 0;
                u_fine <= 0;
                bup_predicted_fine_u <= '0';
            else
                if si_out_trig = '1'  then
                    if si_partLen > 32768 then

                        if (si_partLen-32768 > 0 and si_partLen-32768 < 2*u_coarse ) then
                            u_fine_sum <= u_fine_sum + (si_partLen-32768)/si_u_fine_est_window;
                            u_fine_wsize <= u_fine_wsize + 1;
                        end if;

                    else

                        if (si_partLen > 0 and si_partLen < 2*u_coarse ) then
                            u_fine_sum <= u_fine_sum + si_partLen/si_u_fine_est_window;
                            u_fine_wsize <= u_fine_wsize + 1;
                        end if;
                    end if;
                end if;

                if u_fine_wsize = si_u_fine_est_window+1 then
                    u_fine_wsize <= u_fine_wsize-1;
                    u_fine_sum <= u_fine_sum - u_fine_sum/si_u_fine_est_window;
                    if bup_predicted_fine_u = '0' then
                        u_fine <= u_coarse;
                    else
                        u_fine <= (u_fine_sum + u_coarse )/2;
                    end if;
                    bup_predicted_fine_u <= '1';
                end if;

            end if;
        end if;
    end process;


end Behavioral;