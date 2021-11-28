----------------------------------------------------------------------------------
-- 
-- Course: ELEC3342
-- Module Name:  au2mc - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: Tam Chun Kit
--
-- Copyright (C) 2021  
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity au2mc is
    Port (
        ain : in STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
        d_bin : out STD_LOGIC;
        clk : in STD_LOGIC;
        clr : in STD_LOGIC
    );
end au2mc;

architecture Behavioral of au2mc is
    signal amplititude, am_avg: unsigned (11 downto 0) := (others => '0');
    signal const_offset : std_logic_vector (11 downto 0) := "100000000000";
    signal have_sound, d_bin_orig : std_logic := '0';

    -- Determine the bgvolume per 16 times
    signal bg_volume: unsigned (11 downto 0) := (others => '0');
    signal ssum: unsigned (15 downto 0) := (others => '0');
    signal amsum : unsigned (14 downto 0) := (others => '0');
    signal ssize : unsigned(3 downto 0) := (others => '0');
    signal amssize: unsigned(3 downto 0) := (others => '0');

    -- For smoothing out the d_bin signal
    -- Filter size is learnt dynamically
    signal filter_count, stolen: unsigned (11 downto 0) := (others => '0');
    signal siglength: unsigned (11 downto 0) := (others => '0');

    signal bg_volume_ready : std_logic := '0';
    signal add_to_ssum, d_bin_prev, out_stolen: std_logic := '0';

    -- FILTER SIZE: IMPORTANT MESSAGE --
    -- FOR au2mc HW3B submission, use filter_size = 384 (000110000000)
    -- FOR au2mc REAL WORLD USAGE, use filter_size = 2048 (010000000000)
    signal filter_size_sim: unsigned(11 downto 0) := "000000100000";
    signal filter_size_real: unsigned(11 downto 0) := "101000000000";
    signal filter_size: unsigned(11 downto 0) := (others => '0');
    
    -- MODE SWITCH --
    --    請確定繳交功課（HW3B部分）之 run_in_real_world 設定為 0。
    --    使用 ELEC3342 提供之測試檔案不支援過大（>384）的過濾閥值！
    --    切勿繳交 run_in_real_world 為 1 的任何版本！
    signal run_in_real_world: std_logic := '0';

begin
    flip_d_bin: process(clk)
    begin
        if rising_edge (clk) then
            d_bin <= not d_bin_orig   ;
        end if;
    end process;

    proc_fsize_determine: process(clk )
    begin
        if rising_edge (clk ) then
            if run_in_real_world ='1' then
                filter_size <= filter_size_real ;
            elsif run_in_real_world = '0' then
                filter_size <= filter_size_sim ;
            end if;
        end if;
    end process;

    -- Process for converting ain to 2's comlement integer, and add it to sample (IF it is not higher than background)
    proc_subConst_ain: process(clk, ssize)
    begin
        if rising_edge (clk ) then
            have_sound <= '0';
            amplititude <= unsigned(signed(abs(signed(ain) - signed(const_offset))));
            add_to_ssum <= '0';

            -- Add IF and only if less than average OR bg_volume not even computed
            if (bg_volume_ready = '0') then
                add_to_ssum <= '1';
            elsif (bg_volume_ready = '1') then

                if am_avg > bg_volume and am_avg > 1 then
                    have_sound <= '1';
                else
                    add_to_ssum <= '1';
                end if;
            end if;

        end if;
    end process;
    
    -- d_bin is only modified in this process
    proc_write_d_bin: process(clk )
    begin
        if rising_edge (clk ) then
            d_bin_orig <= '0';

            if filter_count > filter_size and have_sound = '1' then
                d_bin_orig <= '1';
                d_bin_prev <= '1';

            elsif have_sound = '0' then

                d_bin_prev <= '0';
                d_bin_orig <= '0';
                filter_count <= (others => '0');

                if (d_bin_prev = '1') then
--                    out_stolen <= '1';
--                    stolen <= filter_size;
                    d_bin_orig <= '1';
                end if;

            elsif have_sound = '1' then
                filter_count <= filter_count + 1;

            end if;
            if (out_stolen = '1') then
                d_bin_orig <= '1';
                if (stolen > 1) then
                    stolen <= stolen-1;
                else
                    out_stolen <= '0';
                    stolen <= (others => '0');
                end if;
            end if;
        end if;

    end process;


    proc_averageFilterCounterBG: process(clk)
    begin
        if rising_edge (clk) then
            if (clr = '1') then
                bg_volume_ready <= '0';
                bg_volume <= (others => '0');
                ssum <= (others => '0');
            elsif ssize = "1111" and have_sound = '0' then
                bg_volume  <= ssum (15 downto 4);
                bg_volume_ready <= '1';
                ssum <= (others => '0');
                ssize <= (others => '0');
            else
                if (add_to_ssum = '1') then
                    ssize <= ssize + 1;
                    ssum <= amplititude + ssum ;
                end if;
            end if;
        end if;
    end process;

    proc_averageFilterCounterAM: process(clk)
    begin
        if rising_edge (clk) then
            if (clr = '1') then
                amsum <= (others => '0');
                amssize <= (others => '0');
                am_avg <= (others => '0');
            elsif amssize = "111" then
                am_avg  <= amsum (14 downto 3);
                amsum <= (others => '0');
                amssize <= (others => '0');
            else
                amsum <= amsum + amplititude ;
                amssize <= amssize  + 1 ;
            end if;
        end if;
    end process;


end Behavioral;
