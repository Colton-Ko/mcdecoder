library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.numeric_std.all;

entity au2mc is
    Port (
        ain    : in std_logic_vector(11 downto 0);
        d_bin :     out std_logic := '1';
        clk, clr      : in std_logic
    );
end au2mc;

architecture Behavioral of au2mc is

    COMPONENT fifo_generator_3
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

    signal absolute_val  : integer :=0;
    signal threshold : std_logic_vector (10 downto 0) := "00000001111" ;
    signal w_ctr: integer :=0;
    -- WINDOW CTR
    signal w_sum: integer :=0;
    -- WINDOW SUM
    signal w_avg: integer :=0;
    signal w_avg_prev, w_avg_prev_next: integer := 0;
    signal d_bin_prev, d_bin_prev_next, d_bin_nflip: std_logic := '0';
    signal have_sound: std_logic;
    constant smooth_threshold: integer := 3000;
    signal delay_counter: integer := 0;
    signal smooth_counter, smooth_counter2: integer := 0;
    -- WINDOW AVG
    -- SIGOUT = OUT_DATA
    signal wr_en, rd_en, full, empty: std_logic := '0';
    signal have_sound_prev, out_cand, out_cand_prev: std_logic:= '1';

    -- Signal reconstructor
    signal zeros, ones: integer := 0;
    signal reset0, reset1, write, currentPattern, restr_Trig, rd_prev, taken: std_logic := '0';
    signal dq, q, restr_cntr, restr_cntr_next: std_logic_vector(15 downto 0);
begin

    reconstructor_fifo : fifo_generator_3
        PORT MAP (
            clk => clk,
            srst => clr,
            din => q,
            wr_en => wr_en,
            rd_en => rd_en,
            dout => dq,
            full => full,
            empty => empty
        );

    proc_decrement_gen_d_bin: process(clk)
    begin
        if rising_edge (clk) then
            d_bin <= '1';
            if empty = '0' and rd_en = '0' and write = '0' and taken = '0' then
                taken <= '1';
            end if;
            if clr = '1' then
                write <= '0';
                restr_cntr <= (others => '0');
                taken <= '0';
            else
                if write = '1' then
                    if restr_cntr < 3 then
                        write <= '0';
                    else
                        restr_cntr <= restr_cntr-1;
                        d_bin <= currentPattern;
                        write <= '1';
                    end if;
                    
                elsif write = '0' then
                    if restr_Trig = '1' then
                        restr_cntr <= restr_cntr_next;
                        write <= '1';
                        taken <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    proc_delay_rd: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' then
                rd_prev <= '0';
            else
                rd_prev <= rd_en ;
            end if;
        end if;
    end process;

    proc_read: process(clk)
    begin
        if rising_edge (clk) then
            rd_en <= '0';
            if empty = '0' and rd_en = '0' and write = '0' and taken = '0' then
                rd_en <= '1';
            end if;
        end if;
    end process;

    proc_read_convert_dq: process(clk)
    begin
        if rising_edge (clk) then
            restr_Trig <= '0';
            if clr = '1' then
                currentPattern <= '1';
            elsif rd_prev = '1' then
                currentPattern <= dq(15);
                restr_cntr_next <= '0' & dq(14 downto 0);
                restr_Trig <= '1';
            end if;
        end if;
    end process;

    proc_countOne:process (clk)
    begin
        if rising_edge (clk) then
            if (clr = '1') or (reset1 = '1') then
                ones <= 0;
            elsif (out_cand = '1') then
                if (ones = 32767) then
                    ones <= 0;
                else
                    ones <= ones + 1;
                end if;
            end if;
        end if;
    end process;

    proc_countZero:process (clk)
    begin
        if rising_edge (clk) then
            if (clr = '1') or (reset0 = '1') then
                zeros <= 0;
            elsif (out_cand = '0') then
                if (zeros = 32767) then
                    zeros <= 0;
                else
                    zeros <= zeros + 1;
                end if;
            end if;
        end if;
    end process;

    proc_cntrReset: process (clk)
    begin
        if rising_edge (clk) then
            reset0 <= '0';
            reset1 <= '0';
            wr_en <= '0';
            if (out_cand = '0' and out_cand_prev = '1') then
                q <= '1' & std_logic_vector (to_unsigned (ones , 15));
                if full = '0' then
                    wr_en <= '1';
                end if;
                reset1 <= '1';
            elsif (out_cand = '1' and out_cand_prev = '0') then
                q <= '0' & std_logic_vector (to_unsigned (zeros + 7*smooth_threshold/8, 15));
                if full = '0' then
                    wr_en <= '1';
                end if;
                reset0 <= '1';

            end if;
        end if;
    end process;

    proc_smooth_have_sound: process(clk)
    begin
        if rising_edge (clk) then
            out_cand <= '1';
--            d_bin <= out_cand ;
            if have_sound_prev = '0' and have_sound = '1' then
                out_cand <= '1';
                smooth_counter <= 0;
            elsif smooth_counter > smooth_threshold then
                out_cand <= '0';
            elsif have_sound = '0' then
                smooth_counter <= smooth_counter+1;
            end if;
            out_cand_prev <= out_cand;
        end if;
    end process;

    proc_delay_have_sound_1: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' then
                have_sound_prev<= '1';
            else
                have_sound_prev <= have_sound ;
            end if;
        end if;
    end process;

    proc_dbnf: process(clk)
    begin
        have_sound <= not d_bin_nflip;
    end process;

    proc_smooth: process(clk, clr)
    begin
        if rising_edge (clk) then
            if (clr = '1') then
                w_avg_prev <= 0;
                d_bin_prev <= '1';
            else
                w_avg_prev <= w_avg_prev_next ;
                d_bin_prev <= d_bin_prev_next;
            end if;
        end if;
    end process;

    proc_clk : process(clk, clr)
    begin
        if (clk = '1' and clk'event) then
            absolute_val <= CONV_INTEGER (ain(10 downto 0));
            -- We now have the absolute value

            if (w_ctr >= 128) then
                w_ctr<=1;
                w_sum<=0;
                w_avg<=w_avg_prev;
            else

                w_ctr<=w_ctr+1;
                w_sum<=w_sum+absolute_val;

                if (w_ctr > 0) then
                    w_avg<=(w_sum)/(w_ctr);
                else
                    w_avg <= w_avg_prev;
                end if;

                w_avg_prev_next <= w_avg ;

            end if;

            if(w_avg > threshold) then
                d_bin_nflip <= '1';
                d_bin_prev_next <= d_bin_nflip;
            else
                d_bin_prev_next <= '0';
                d_bin_nflip <= d_bin_prev;
            end if;
        end if;
    end process;
end Behavioral;
