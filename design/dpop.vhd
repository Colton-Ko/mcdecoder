----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: dsender - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: Tam Chun Kit (3035686554)
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity dpop is
    Port (
        clr : in STD_LOGIC;
        clk : in STD_LOGIC;
        din_valid : in STD_LOGIC;
        data_in : in std_logic_vector(7 downto 0);
        dout_valid : out STD_LOGIC;
        data_out : out std_logic_vector(7 downto 0);
        busy: in STD_LOGIC := '0'
    );

end dpop;

architecture Behavioral of dpop is

    COMPONENT fifo_generator_2
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC;
            valid : OUT STD_LOGIC
        );
    END component;

    signal dp_buffer_wr_en, dp_buffer_rd_en: std_logic := '0';
    signal dp_buffer_full, dp_buffer_empty: std_logic;
    signal data_in_prev, dout: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

begin
    
    dout_delay: process(clk)
    begin
        if rising_edge (clk) then
            if clr = '1' then
                data_in_prev <= (others => '0');
            else
                data_in_prev <= data_in;
            end if;
        end if;
    end process;

    dpop_fifo : fifo_generator_2
        PORT MAP (
            clk => clk,
            srst => clr,
            din => data_in_prev,
            wr_en => dp_buffer_wr_en,
            rd_en => dp_buffer_rd_en,
            dout => data_out,
            full => dp_buffer_full,
            empty => dp_buffer_empty,
            valid => dout_valid
        );

    proc_write: process(clk)
    begin
        if rising_edge (clk) then
            dp_buffer_wr_en <= '0';
            if dp_buffer_full = '0' and din_valid = '1' then
                dp_buffer_wr_en <= '1';
            end if;
        end if;
    end process;
    
    proc_read: process(clk)
    begin
        if rising_edge (clk) then
            dp_buffer_rd_en <= '0';
            if dp_buffer_empty = '0' and busy = '0' then
                dp_buffer_rd_en <= '1';
            end if;
        end if;
    end process;

end Behavioral;
