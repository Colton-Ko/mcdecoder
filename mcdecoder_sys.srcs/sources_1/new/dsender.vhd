----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: dsender - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: 
--
-- Copyright (C) 2021  
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity dsender is
    Port (
           clr : in std_logic;
           clk : in STD_LOGIC;
           din_valid : in STD_LOGIC;
           data_in : in std_logic_vector(7 downto 0);
           dout_valid : out STD_LOGIC;
           data_out : out std_logic_vector(7 downto 0));

end dsender;

architecture rtl of dsender is

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

begin

-- instantiate your fifo using xilinx ip generator

end rtl;
