----------------------------------------------------------------------------------
-- Company: HKU ELEC3342
-- Engineer: Tam Chun Kit
-- 
-- Create Date: 11/04/2021 12:17:55 PM
-- Design Name: 
-- Module Name: symdet - Behavioral (L2- NOT DONE!)
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
    Port ( d_bin : in STD_LOGIC;
         dot : out STD_LOGIC;
         dash : out STD_LOGIC;
         lg : out STD_LOGIC;
         wg : out STD_LOGIC;
         valid : out STD_LOGIC;
         clr : in STD_LOGIC;
         clk : in STD_LOGIC);
end symdet;

-- Start symbol: dot sg

architecture Behavioral of symdet is
    signal cnt0, cnt1: std_logic_vector(7 downto 0) := (others => '0');
    signal d_bin_prev, u_invalid: std_logic := '1';
    signal reset0, reset1, turned_on, wr_en, rd_en_symdetfifo, rd_en_udetfifo: std_logic := '0';
    signal full_udetfifo, empty_udetfifo, almost_full, almost_empty, full_symdetfifo, empty_symdetfifo: std_logic;
    signal din_fifo, dout_udetfifo, dout_symdetfifo: std_logic_vector (7 downto 0) := (others => '0');
    signal count_u, count_sym : std_logic_vector (6 downto 0) := (others => '0');
    signal u : std_logic_vector (3 downto 0)  := x"0";
    signal u2, u4, u6, u8: std_logic_vector (7 downto 0);
    signal data_count_udetfifo, data_count_symdetfifo: std_logic_vector (6 downto 0);

    COMPONENT fifo_generator_1
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC;
            data_count: OUT std_logic_vector (6 downto 0);
            almost_full : OUT std_logic;
            almost_empty : OUT std_logic
        );
    END COMPONENT;

begin

    FIFO_DETERMINE_U_MAP : fifo_generator_1
        PORT MAP (
            clk => clk,
            srst => clr,
            din => din_fifo,
            wr_en => wr_en,
            rd_en => rd_en_udetfifo,
            dout => dout_udetfifo ,
            full => full_udetfifo,
            empty => empty_udetfifo,
            data_count => data_count_udetfifo,
            almost_full => almost_full,
            almost_empty => almost_empty
        );

    FIFO_DETERMINE_SYM_MAP : fifo_generator_1
        PORT MAP (
            clk => clk,
            srst => clr,
            din => din_fifo,
            wr_en => wr_en,
            rd_en => rd_en_symdetfifo ,
            dout => dout_symdetfifo ,
            full => full_symdetfifo,
            empty => empty_symdetfifo,
            data_count => data_count_symdetfifo
        );

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
            elsif (reset0 = '1') then
                if (u_invalid = '1') then
                    u <= cnt0 (3 downto 0);
                    u_invalid <= '0';
                end if;
                cnt0 <= (others => '0');
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

    proc_writeFifo_clk: process (clk, d_bin)
    begin

        if rising_edge (clk) then
            reset0 <= '0';
            reset1 <= '0';
            wr_en <= '0';
            din_fifo <= (others => '0');

            if (d_bin_prev /= d_bin) then
                -- Rising edge
                if (d_bin = '0') then
                    if (turned_on = '0') then
                        turned_on <= '1';
                    else
                        -- For CNT1 counter: din_fifo should start with 1.
                        din_fifo <= '1' & cnt1(6 downto 0);
                        wr_en <= '1';
                    end if;
                    reset1 <= '1';

                -- Falling edge
                elsif (d_bin = '1') then
                    -- For CNT0 counter: din_fifo should start with 0.
                    din_fifo <= '0' & cnt0(6 downto 0);
                    wr_en <= '1';
                    reset0 <= '1';
                end if;
            end if;
        end if;
        d_bin_prev <= d_bin;

    end process;

    proc_determineOutput: process(clk, u_invalid)
    begin
        if rising_edge (clk) then
            valid <= '0';
            dot <= '0';
            dash <= '0';
            lg <= '0';
            wg <= '0';
            rd_en_symdetfifo <= '0';
            count_sym <= (others => '0');

            if (u_invalid = '0') then
                if (empty_symdetfifo = '0' or almost_empty = '1') then
                    rd_en_symdetfifo <= '1';
                    count_sym <= dout_symdetfifo (6 downto 0);
                    if dout_symdetfifo(7) = '1' then

                        if (count_sym > 0) and (count_sym < u2) then
                            null; -- this is a sg
                        elsif (count_sym > u2) and (count_sym < u4) then
                            lg <= '1';
                            valid <= '1';
                        elsif (count_sym > u6) and (count_sym < u8) then
                            wg <= '1';
                            valid <= '1';
                        end if;

                    elsif dout_symdetfifo(7) = '0' then

                        if (count_sym > 0) and (count_sym < u2) then
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

