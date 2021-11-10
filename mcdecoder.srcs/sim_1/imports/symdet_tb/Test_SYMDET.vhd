-- --------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: test_SYMDET
-- Description: Testbench for Symdet
-- Created By: yizhao
--
-- Copyright (C) 2021  Yizhao Gao
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
USE STD.textio.all;

entity test_SYMDET is
end test_SYMDET;

architecture Behavioral of test_SYMDET is
    component SYMDET
        port(clk, clr : in std_logic;
             dash, dot, lg, wg, valid: out std_logic;
             d_bin : in std_logic);
    end component;

    signal clk, clr: std_logic:='0';
    signal d_bin : std_logic;
    signal dash, dot, lg, wg, valid : std_logic;
    constant clkPeriod : time := 20.8333 us;   --48KHZ
    signal count: integer := 0;
    signal finish_flag: std_logic:='0';

begin
    UUT: SYMDET port map (clk, clr, dash, dot, lg, wg, valid, d_bin);


    clkPro: process
            begin
                clk <= '1';
                wait for clkPeriod / 2;
                clk <= '0';
                wait for clkPeriod / 2;
            end process;

    clrPro: process
            begin
                clr <= '0';
                wait for clkPeriod;
                clr <= '1';
                wait for clkPeriod;
                clr <= '0';
                wait;
            end process;

    inputPro: process
        variable line_v : line;
        file read_file : text;
        variable read_bit : integer;
    begin
        d_bin <= '1';
        wait for 20*clkPeriod;
        file_open(read_file, "L0.txt", read_mode); --change to L1, L2, L3 for different level of test
        while not endfile(read_file) loop
            readline(read_file, line_v);
            read(line_v, read_bit);
            if read_bit = 0 then
                d_bin <= '1';
            else
                d_bin <= '0';
            end if;
            wait for clkPeriod;
        end loop;
        file_close(read_file);
        d_bin <= '1';
        finish_flag <= '1';
        wait for 20*clkPeriod;

        std.env.finish;
    end process;


    PEEK_RES : process(clk)
    begin
        if rising_edge(clk) then
            if (valid = '1') then
                count <= count + 1;
                if dot = '1' then
                    report "Output " & integer'image(count) & " dot";
                elsif dash = '1' then
                    report "Output " & integer'image(count) & " dash";
                elsif lg = '1' then
                    report "Output " & integer'image(count) & " lg";
                elsif wg = '1' then
                    report "Output " & integer'image(count) & " wg";
                end if;
            end if;
        end if;
    end process;


 end Behavioral;
