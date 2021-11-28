----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2021 01:55:33 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity tb_top is
end tb_top;

architecture tb of tb_top is

    component mcdecoder_top
        port (ain     : in  std_logic_vector (11 downto 0);
              sout    : out std_logic;
              clk     : in  std_logic;
              clr     : in  std_logic);
    end component;

    signal ain     : std_logic_vector (11 downto 0);
    signal sout    : std_logic;
    signal clk_48k : std_logic;
    signal clr     : std_logic;

    constant TbPeriod : time := 20.833 us; -- for 48k Hz clk
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    file file_in : text;
    
begin

    dut : mcdecoder_top 
    port map (ain     => ain,
              sout   => sout,
              clk => clk_48k,
              clr     => clr);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    clk_48k <= TbClock;

    stimuli : process
        -- Variables for simulation
        variable v_linein     : line;
        variable v_auin       : std_logic_vector(15 downto 0);
        
    begin
        -- EDIT Adapt initialization as needed
        ain <= (others => '0');

        -- Reset generation
        clr <= '1';
        wait for 100 ns;
        clr <= '0';
        wait for 100 ns;
        
        -- Stimuli starts here.  DO NOT modify anything above this line

        file_open(file_in, "morse4.txt",  read_mode);
     
        while not endfile(file_in) loop
          readline(file_in, v_linein);
          read(v_linein, v_auin);
          ain <= v_auin(15 downto 4);
     
          wait until rising_edge(clk_48k);     
        end loop;
     
        file_close(file_in);

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;