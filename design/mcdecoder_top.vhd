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
        ain: in STD_LOGIC_VECTOR (11 downto 0);
        d_bin: out std_logic;
        clk: in std_logic;
        clr: in std_logic
    );
end component;

component symdet is
    port( 
        d_bin : in STD_LOGIC;
        dot : out STD_LOGIC;
        dash : out STD_LOGIC;
        lg : out STD_LOGIC;
        wg : out STD_LOGIC;
        valid : out STD_LOGIC;
        clr : in STD_LOGIC;
        clk : in STD_LOGIC
    );
end component;

component mcdecoder is 
    port( 	
        dot : in STD_LOGIC;
        dash : in STD_LOGIC;
        lg : in STD_LOGIC;
        wg : in STD_LOGIC;
        valid : in STD_LOGIC;
        dout : out STD_LOGIC_VECTOR (7 downto 0);
        dvalid : out STD_LOGIC;
        error : out STD_LOGIC;
        clr : in STD_LOGIC;
        clk : in STD_LOGIC
    );
end component;

component dpop is 
    port(
        clr : in std_logic;
        clk : in STD_LOGIC;
        din_valid : in STD_LOGIC;
        data_in : in std_logic_vector(7 downto 0);
        dout_valid : out STD_LOGIC;
        data_out : out std_logic_vector(7 downto 0);
        busy: in std_logic
    );
end component;

component uart_tx is 
    port(
        din : in STD_LOGIC_VECTOR (7 downto 0);
        wen : in STD_LOGIC;
        sout : out STD_LOGIC;
        clr : in STD_LOGIC;
        clk : in STD_LOGIC;
        busy: out std_logic
    );
end component;

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
        clk => clk,
        clr => clr,
        ain => ain,
        d_bin => d_bin_t
    );
    
    detect_symbols: symdet
    port map(
        clk => clk,
        clr => clr,
        d_bin => d_bin_t, 
        dot => dot_t,
        dash => dash_t,
        lg => lg_t,
        wg => wg_t,
        valid => valid_t
    );
    
    decode_morsecode: mcdecoder
    port map(
        clk => clk,
        clr => clr,
        dot => dot_t,
        dash => dash_t,
        lg => lg_t,
        wg => wg_t,
        valid => valid_t,
        dout => dpop_in_t,
        dvalid => dpop_in_valid_t,
        error => error_t
    );
    
    data_buffer: dpop
    port map(
        clk => clk,
        clr => clr,
        din_valid => dpop_in_valid_t,
        data_in => dpop_in_t,
        dout_valid => dpop_out_valid_t,
        data_out => dpop_out_t,
        busy => busy_uart_t
    );
    
    uart_handover: uart_tx
    port map(
        din => dpop_out_t,
        wen => dpop_out_valid_t,
        sout => sout,
        clr => clr,
        clk => clk,
        busy => busy_uart_t
    );

end Behavioral;