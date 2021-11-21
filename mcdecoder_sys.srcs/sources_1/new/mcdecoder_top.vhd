----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: mcdecoder_top - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity mcdecoder_top is
    Port ( ain : in STD_LOGIC_VECTOR (11 downto 0);
           RsTx : out STD_LOGIC;
           clr : in STD_LOGIC;
           clk : in STD_LOGIC);
end mcdecoder_top;

architecture rtl of mcdecoder_top is
begin

end rtl;
