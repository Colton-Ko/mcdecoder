-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 20.11.2020 16:25:37 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_adccntrl is
end tb_adccntrl;

architecture tb of tb_adccntrl is

    component adccntrl
        port (csn   : out std_logic;
              sclk  : out std_logic;
              sdata : in std_logic;
              data  : out std_logic_vector (11 downto 0);
              clk   : in std_logic;
              clr   : in std_logic);
    end component;

    signal csn   : std_logic;
    signal sclk  : std_logic;
    signal sdata : std_logic;
    signal data  : std_logic_vector (11 downto 0);
    signal clk   : std_logic;
    signal clr   : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : adccntrl
    port map (csn   => csn,
              sclk  => sclk,
              sdata => sdata,
              data  => data,
              clk   => clk,
              clr   => clr);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        sdata <= 'Z';

        -- Reset generation
        -- EDIT: Check that clr is really your reset signal
        clr <= '1';
        wait for 100 ns;
        clr <= '0';
--        wait for 100 ns;

        -- EDIT Add stimuli here
--        wait for 10 * TbPeriod;
        
        wait until csn = '0';
        sdata <= '0' after 5 ns;
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z2
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z1
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z0
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d11
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d10
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d9
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d8
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d7
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d6
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d5
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d4
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d3
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d2
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d1
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d0
        wait until sclk = '0';
        sdata <= 'Z' after 5ns;
        
        
        wait until csn = '0';
        sdata <= '0' after 5 ns;
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z2
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z1
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z0
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d11
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d10
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d9
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d8
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d7
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d6
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d5
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d4
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d3
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d2
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d1
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d0
        wait until sclk = '0';
        sdata <= 'Z' after 5ns;


        
        wait until csn = '0';
        sdata <= '0' after 5 ns;
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z2
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z1
        wait until sclk = '0';
        sdata <= '0' after 5ns; --z0
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d11
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d10
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d9
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d8
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d7
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d6
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d5
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d4
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d3
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d2
        wait until sclk = '0';
        sdata <= '1' after 5ns; --d1
        wait until sclk = '0';
        sdata <= '0' after 5ns; --d0
        wait until sclk = '0';
        sdata <= 'Z' after 5ns;

        wait for 10 * TbPeriod;      

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_adccntrl of tb_adccntrl is
    for tb
    end for;
end cfg_tb_adccntrl;
