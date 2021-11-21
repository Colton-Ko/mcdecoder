----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: mcdecoder_sys - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: Hayden So
--
-- Copyright (C) 2021  Hayden So
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

entity mcdecoder_sys is
    Port ( adccsn : out STD_LOGIC;
           adcsclk : out STD_LOGIC;
           adcsdata : in STD_LOGIC;
           uartrstx : out STD_LOGIC;
           clk_100m : in STD_LOGIC;
           clr : in STD_LOGIC);
end mcdecoder_sys;

architecture rtl of mcdecoder_sys is
component au2mcdecoder is
    Port ( ain : in STD_LOGIC_VECTOR (11 downto 0);
           RsTx : out STD_LOGIC;
           clr : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;
component clk_wiz_0 is
    Port ( 
        clk_6144: out std_logic;
        clk_100m: in  std_logic;
        reset   : in  std_logic;
        locked  : out std_logic);
end component;
component clk_div is
    Port ( clk_in     : in STD_LOGIC;
           clr        : in STD_LOGIC;
           clk_div128 : out STD_LOGIC);
end component;
component adccntrl is
    Port ( csn : out STD_LOGIC;
           sclk : out STD_LOGIC;
           sdata : in STD_LOGIC;
           data : out STD_LOGIC_VECTOR(11 DOWNTO 0);
           clk : in STD_LOGIC;
           clr : in STD_LOGIC);
end component;

signal clk_48k: std_logic;
signal clk_6144: std_logic;
--signal led1: std_logic;
signal led0: std_logic;
signal ain : std_logic_vector(11 downto 0);

begin
  inst_clk_src: clk_wiz_0 PORT MAP (
    clk_6144=>clk_6144,
    clk_100m=>clk_100m,
    reset=>clr,
    locked=>led0);
  inst_clk_div: clk_div PORT MAP (
    clk_in=>clk_6144,
    clk_div128=>clk_48k,
    clr=>clr);
  inst_mcdecoder_top: mcdecoder_top PORT MAP (
    ain=>ain,
    RsTx=>uartrstx,
    clr=>clr,
    clk=>clk_48k);
  inst_adccntrl : adccntrl PORT MAP (
    csn=>adccsn,
    sclk=>adcsclk,
    sdata=>adcsdata,
    data=>ain,
    clk=>clk_6144,
    clr=>clr);

  
end rtl;
