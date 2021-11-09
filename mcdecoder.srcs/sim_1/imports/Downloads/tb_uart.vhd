--------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: tb_uart.vhd
-- Description: Testbench for uart_tx
-- Created By: song
--
-- Copyright (C) 2021  Song Wang
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
--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY tb_uart IS
END tb_uart;

ARCHITECTURE Behavioral OF tb_uart IS
    COMPONENT uart_tx
        PORT (
            clk : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            wen : IN STD_LOGIC;
            d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            busy : OUT STD_LOGIC;
            sout : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL clr : STD_LOGIC := '0';
    SIGNAL wen : STD_LOGIC := '0';
    SIGNAL d : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";

    SIGNAL busy : STD_LOGIC := '0';
    SIGNAL sout : STD_LOGIC := '0';

BEGIN

    UUT : uart_tx
    PORT MAP(
        clk => clk,
        clr => clr,
        wen => wen,
        d => d,
        busy => busy,
        sout => sout);

    clk_gen : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR 1ns;
        clk <= '1';
        WAIT FOR 1ns;
    END PROCESS;

    wen_gen : PROCESS
    BEGIN
        clr <= '1';
        wen <= '0';

        WAIT FOR 100ns;
        clr <= '0';

        WAIT FOR 100ns;
        wen <= '1';
        WAIT;
    END PROCESS;

    d_gen : PROCESS (busy, clr)
    BEGIN
        IF falling_edge(clr) THEN
            d <= "10101010";
        ELSIF falling_edge(busy) THEN
            d <= d(6 DOWNTO 0) & d(7);
        END IF;

    END PROCESS;

END Behavioral;
