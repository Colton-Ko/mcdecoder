----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name:  mcdecoder_top - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: Lo Ngai Chak Ivan, Tam Chun Kit
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity mcdecoder_top is 
    port( 
        ain : in STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
        clk: in std_logic := '0';
        clr: in std_logic := '0'; 
        sout: out std_logic := '0'
    );
end;

architecture Behavioral of mcdecoder_top is

component au2mc is 
    port(
        ain_a: in STD_LOGIC_VECTOR (11 downto 0);
        d_bin_a: out std_logic;
        clk_a: in std_logic;
        clr_a: in std_logic
    );
end component;

component symdet is
    port( 
        d_bin_s : in STD_LOGIC;
        dot_s : out STD_LOGIC;
        dash_s : out STD_LOGIC;
        lg_s : out STD_LOGIC;
        wg_s : out STD_LOGIC;
        valid_s : out STD_LOGIC;
        clr_s : in STD_LOGIC;
        clk_s : in STD_LOGIC
    );
end component;

component mcdecoder is 
    port( 	
        dot_m : in STD_LOGIC;
        dash_m : in STD_LOGIC;
        lg_m : in STD_LOGIC;
        wg_m : in STD_LOGIC;
        valid_m : in STD_LOGIC;
        dout_m : out STD_LOGIC_VECTOR (7 downto 0);
        dvalid_m : out STD_LOGIC;
        error_m : out STD_LOGIC;
        clr_m : in STD_LOGIC;
        clk_m : in STD_LOGIC
    );
end component;

component dpop is 
    port(
        clr_d : in std_logic;
        clk_d : in STD_LOGIC;
        din_valid_d : in STD_LOGIC;
        data_in_d : in std_logic_vector(7 downto 0);
        dout_valid_d : out STD_LOGIC;
        data_out_d : out std_logic_vector(7 downto 0);
        busy_d: in std_logic
    );
end component;

component uart_tx is 
    port(
        din_u : in STD_LOGIC_VECTOR (7 downto 0);
        wen_u : in STD_LOGIC;
        sout_u : out STD_LOGIC;
        clr_u : in STD_LOGIC;
        clk_48k_u : in STD_LOGIC;
        busy_u: out std_logic
    );
end component;

-- suffix
    -- (_t): TOP
    -- (_s): SYMDET
    -- (_u): UART_TX
    -- (_m): MCDECODER
    -- (_d): DPOP
    
-- au2mc
signal d_bin_t: std_logic := '0';
-- symdet
signal dot_t, dash_t, lg_t, wg_t, valid_t: std_logic := '0';
-- mcdecoder
signal dpop_in_valid_t, error_t: std_logic := '0';
-- dpop, uart
signal dpop_in_t, dpop_out_t: std_logic_vector (7 downto 0) := (others => '0');
signal dpop_out_valid_t, busy_uart_t: std_logic := '0';

begin

    adc_in: au2mc
    port map(
        clk_a => clk,
        clr_a => clr,
        ain_a => ain,
        d_bin_a => d_bin_t
    );
    
    detect_symbols: symdet
    port map(
        clk_s => clk,
        clr_s => clr,
        d_bin_s => d_bin_t, 
        dot_s => dot_t,
        dash_s => dash_t,
        lg_s => lg_t,
        wg_s => wg_t,
        valid_s => valid_t
    );
    
    decode_morsecode: mcdecoder
    port map(
        clk_m => clk,
        clr_m => clr,
        dot_m => dot_t,
        dash_m => dash_t,
        lg_m => lg_t,
        wg_m => wg_t,
        valid_m => valid_t,
        dout_m => dpop_in_t,
        dvalid_m => dpop_in_valid_t,
        error_m => error_t
    );
    
    data_popper: dpop
    port map(
        clk_d => clk,
        clr_d => clr,
        din_valid_d => dpop_in_valid_t,
        data_in_d => dpop_in_t,
        dout_valid_d => dpop_out_valid_t,
        data_out_d => dpop_out_t,
        busy_d => busy_uart_t
    );
    
    uart_transmitter: uart_tx
    port map(
        din_u => dpop_out_t,
        wen_u => dpop_out_valid_t,
        sout_u => sout,
        clr_u => clr,
        clk_48k_u => clk,
        busy_u => busy_uart_t
    );

end Behavioral;