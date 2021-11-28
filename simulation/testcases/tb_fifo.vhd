--------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: tb_fifo.vhd
-- Description: Testbench for FIFO
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


ENTITY tb_fifo IS
END tb_fifo;

ARCHITECTURE Behavioral OF tb_fifo IS
    COMPONENT fifo_top
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full : OUT STD_LOGIC;
            almost_full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC;
            almost_empty : OUT STD_LOGIC;
            data_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL srst : STD_LOGIC := '0';
    SIGNAL din : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
    SIGNAL wr_en : STD_LOGIC := '0';
    SIGNAL rd_en : STD_LOGIC := '0';

    SIGNAL dout : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
    SIGNAL full : STD_LOGIC := '0';
    SIGNAL almost_full : STD_LOGIC := '0';
    SIGNAL empty : STD_LOGIC := '0';
    SIGNAL almost_empty : STD_LOGIC := '0';
    SIGNAL data_count : STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";

BEGIN

    UUT : fifo_top
    PORT MAP(
        clk => clk,
        srst => srst,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => full,
        almost_full => almost_full,
        empty => empty,
        almost_empty => almost_empty,
        data_count => data_count
    );

    clk_gen : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR 10ns;
        clk <= '1';
        WAIT FOR 10ns;
    END PROCESS;

    initial : PROCESS
    BEGIN
        srst <= '1';
        din <= "00000000";
        wr_en <= '0';
        rd_en <= '0';

        WAIT FOR 100ns;
        srst <= '0';

        WAIT FOR 100ns;
        FOR n IN 0 TO 15 LOOP
            wr_en <= '1';
            WAIT FOR 20ns;
            wr_en <= '0';
            WAIT FOR 20ns;
            din <= din + 1;
        END LOOP;

        WAIT FOR 100ns;
        FOR n IN 0 TO 15 LOOP
            rd_en <= '1';
            WAIT FOR 20ns;
            rd_en <= '0';
            WAIT FOR 20ns;
        END LOOP;

        WAIT FOR 100ns;
        FOR n IN 0 TO 15 LOOP
            wr_en <= '1';
            WAIT FOR 10ns;
            rd_en <= '1';
            WAIT FOR 10ns;
            wr_en <= '0';
            WAIT FOR 10ns;
            rd_en <= '0';
            WAIT FOR 10ns;
            din <= din + 1;
        END LOOP;

        WAIT;
    END PROCESS;

END Behavioral;
