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
        clr : in std_logic;
        clk : in STD_LOGIC;
        din_valid : in STD_LOGIC;
        data_in : in std_logic_vector(7 downto 0);
        dout_valid : out STD_LOGIC;
        data_out : out std_logic_vector(7 downto 0);
        busy: in std_logic
    );

end dpop;

architecture rtl of dpop is

    component fifo_generator_0 IS
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC
        );
    END component;

    signal srst_fifo, wr_en_fifo, rd_en_fifo, full_fifo, empty_fifo: std_logic := '0';
    signal din, dout: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal turned_on :std_logic := '0';

begin

    fifo : fifo_generator_0 
    port map 
    (
        clk => clk,
        srst => srst_fifo,
        din => data_in,
        dout => data_out,
        wr_en => wr_en_fifo ,
        rd_en => rd_en_fifo 
    );

    proc_read: process(clk)
    begin
        if rising_edge (clk) then

            wr_en_fifo <= '0';
            din <= (others => '0');
            srst_fifo <= '0';

            if clr = '1' or turned_on = '0' then
                srst_fifo <= '1';
                turned_on <= '1';

            elsif (din_valid = '1') and (full_fifo = '0') then
                wr_en_fifo <= '1';

            end if;
        end if;
    end process;

    proc_out: process (clk)
    begin
        if rising_edge (clk) then
            rd_en_fifo <= '0';
            dout_valid <= '0';
            if (busy = '0') and (empty_fifo = '0') then
                rd_en_fifo <= '1';
                dout_valid <= '1';
            end if;
        end if;
    end process;

end rtl;
