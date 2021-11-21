----------------------------------------------------------------------------------
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
        ain : in STD_LOGIC_VECTOR (11 downto 0);
        d_bin : out STD_LOGIC := '0';
        clk_48k : in STD_LOGIC;
        clr : in STD_LOGIC
    );
end au2mc;

architecture Behavioral of au2mc is
    signal amplititude, am_avg: unsigned (11 downto 0) := (others => '0');
    signal const_offset : std_logic_vector (11 downto 0) := "100000000000";
    signal have_sound : std_logic := '0';

    -- Determine the bgvolume per 16 times
    signal bg_volume: unsigned (11 downto 0) := (others => '0');
    signal ssum: unsigned (15 downto 0) := (others => '0');
    signal amsum : unsigned (14 downto 0) := (others => '0');
    signal ssize : unsigned(3 downto 0) := (others => '0');
    signal amssize: unsigned(3 downto 0) := (others => '0');

    -- For smoothing out the d_bin signal
    -- Filter size is learnt dynamically
    signal filter_count: unsigned (11 downto 0) := (others => '0');
    signal filter_size: unsigned (11 downto 0) := "000000001111";

    signal bg_volume_ready : std_logic := '0';
    signal add_to_ssum, d_bin_prev, max_cont: std_logic := '0';

begin
    -- Process for converting ain to 2's comlement integer, and add it to sample (IF it is not higher than background)
    proc_subConst_ain: process(clk_48k, ssize)
    begin
        if rising_edge (clk_48k ) then
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

    proc_write_d_bin: process(clk_48k )
    begin
        if rising_edge (clk_48k ) then
            d_bin <= '0';

            if filter_count = 384 and have_sound = '1' then
                filter_count <= (others => '0');
                d_bin <= '1';
                d_bin_prev <= '1';
            elsif  have_sound = '0' then
                d_bin <= '0';
                filter_count <= (others => '0');
                d_bin_prev <= '0';
            elsif have_sound = '1' then
                filter_count <= filter_count + 1;
                d_bin <= d_bin_prev;
            end if;
        end if;
        
    end process;

    proc_averageFilterCounterBG: process(clk_48k)
    begin
        if rising_edge (clk_48k) then
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

    proc_averageFilterCounterAM: process(clk_48k)
    begin
        if rising_edge (clk_48k) then
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
