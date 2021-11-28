----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: mcdecoder - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mcdecoder is
    Port ( dot : in STD_LOGIC;
         dash : in STD_LOGIC;
         lg : in STD_LOGIC;
         wg : in STD_LOGIC;
         valid : in STD_LOGIC;
         dout : out STD_LOGIC_VECTOR (7 downto 0);
         dvalid : out STD_LOGIC;
         error : out STD_LOGIC;
         clr : in STD_LOGIC;
         clk : in STD_LOGIC);
end mcdecoder;

architecture Behavioral of mcdecoder is

    --Use descriptive names for the states, like st1_reset, st2_search
    type state_type is (reset,invalid,
                        se, st, si,
                        sa, sn, sm, ss, su,
                        sr, sw, sd, sk, sg,
                        so, sh, sv, sf, si1,
                        sl, si2, sp, sj, sb,
                        sx, sc, sy, sz, sq,
                        si3, si4, sd5, sd4,
                        sd3, sd2, sd1, sd6,
                        sd7, sd8, sd9, sd0);
    signal state, next_state : state_type;

    --Declare other internal signals here
    signal output_space, next_output_space : std_logic := '0';  -- example signal

begin

    -------------------------------------------------------------------------------------------------------------
    --A clock process for state register
    proc_statereg: process (clk, clr, state)
    begin
        if (clr = '1' or state = invalid) then
            -- jump to reset state here
            state <= reset;
            output_space <= '0';
        end if;
        if (falling_edge(clk)) then
            state <= next_state;
            output_space <= next_output_space;
        end if;
    end process;

    --------------------------------------------------------------------------------------------------------------
    --MEALY State-Machine - Outputs based on state and inputs
    proc_output: process (state, output_space, lg, wg, valid, clk)
        --variable isValid: std_logic := '0';
    begin
        if rising_edge (clk) then
            dvalid <= '0';

            if ((lg = '1' or wg ='1') and valid = '1') then
                --isValid := '1';
                dvalid <= '1';
                case (state) is
                    when sa => dout <= "01000001";
                    when sb => dout <= "01000010";
                    when sc => dout <= "01000011";
                    when sd => dout <= "01000100";
                    when se => dout <= "01000101";
                    when sf => dout <= "01000110";
                    when sg => dout <= "01000111";
                    when sh => dout <= "01001000";
                    when si => dout <= "01001001";
                    when sj => dout <= "01001010";
                    when sk => dout <= "01001011";
                    when sl => dout <= "01001100";
                    when sm => dout <= "01001101";
                    when sn => dout <= "01001110";
                    when so => dout <= "01001111";
                    when sp => dout <= "01010000";
                    when sq => dout <= "01010001";
                    when sr => dout <= "01010010";
                    when ss => dout <= "01010011";
                    when st => dout <= "01010100";
                    when su => dout <= "01010101";
                    when sv => dout <= "01010110";
                    when sw => dout <= "01010111";
                    when sx => dout <= "01011000";
                    when sy => dout <= "01011001";
                    when sz => dout <= "01011010";
                    when sd0 => dout <= "00110000";
                    when sd1 => dout <= "00110001";
                    when sd2 => dout <= "00110010";
                    when sd3 => dout <= "00110011";
                    when sd4 => dout <= "00110100";
                    when sd5 => dout <= "00110101";
                    when sd6 => dout <= "00110110";
                    when sd7 => dout <= "00110111";
                    when sd8 => dout <= "00111000";
                    when sd9 => dout <= "00111001";
                    when others => null;
                        dvalid <= '0';
                        --isValid := '0';
                        --report "Not valid output!";
                end case;
            end if;

            if (output_space ='1') then
                dout <= "00100000";
                --report "Ouputting Space!";
                dvalid <= '1';
            else
        --if (isValid = '0') then
        --dvalid <= '0';
        --end if;
      end if;

            if (state = invalid) then
                error <= '1';
            else
                error <= '0';
            end if;
        end if;


    end process;

    --------------------------------------------------------------------------------------------------------------
    -- Next State Logic.  This corresponds to your next state logic table
    proc_ns: process (dot, dash, lg, wg, valid, clr, clk, state, output_space)
    begin
        if rising_edge (clk) then
            --declare default state for next_state to avoid latches
            next_state <= state;  --default is to stay in current state
            --insert statements to decode next_state
            if (valid ='1') then
                if (lg = '1' or wg = '1') then
                    next_state <= reset;
                end if;

                if (wg = '1') then
                    next_output_space <= '1';
                end if;

                case (state) is
                    when reset =>
                        if dot = '1' and valid = '1' then
                            next_state <= se;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= st;
                        end if;
                    when se =>
                        if dot = '1' and valid = '1' then
                            next_state <= si;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sa;
                        end if;
                    when st =>
                        if dot = '1' and valid = '1' then
                            next_state <= sn;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sm;
                        end if;
                    when si =>
                        if dot = '1' and valid = '1' then
                            next_state <= ss;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= su;
                        end if;
                    when sa =>
                        if dot = '1' and valid = '1' then
                            next_state <= sr;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sw;
                        end if;
                    when sn =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sk;
                        end if;
                    when sm =>
                        if dot = '1' and valid = '1' then
                            next_state <= sg;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= so;
                        end if;
                    when ss =>
                        if dot = '1' and valid = '1' then
                            next_state <= sh;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sv;
                        end if;
                    when su =>
                        if dot = '1' and valid = '1' then
                            next_state <= sf;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= si1;
                        end if;
                    when sr =>
                        if dot = '1' and valid = '1' then
                            next_state <= sl;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= si2;
                        end if;
                    when sw =>
                        if dot = '1' and valid = '1' then
                            next_state <= sp;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sj;
                        end if;
                    when sd =>
                        if dot = '1' and valid = '1' then
                            next_state <= sb;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sx;
                        end if;
                    when sk =>
                        if dot = '1' and valid = '1' then
                            next_state <= sc;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sy;
                        end if;
                    when sg =>
                        if dot = '1' and valid = '1' then
                            next_state <= sz;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sq;
                        end if;
                    when so =>
                        if dot = '1' and valid = '1' then
                            next_state <= si3;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= si4;
                        end if;
                    when sh =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd5;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sd4;
                        end if;
                    when sv =>
                        if dot = '1' and valid = '1' then
                            next_state <= invalid;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sd3;
                        end if;
                    when si1 =>
                        if dot = '1' and valid = '1' then
                            next_state <= invalid;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sd2;
                        end if;
                    when sj =>
                        if dot = '1' and valid = '1' then
                            next_state <= invalid;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sd1;
                        end if;
                    when sb =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd6;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= invalid;
                        end if;
                    when sz =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd7;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= invalid;
                        end if;
                    when si3 =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd8;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= invalid;
                        end if;
                    when si4 =>
                        if dot = '1' and valid = '1' then
                            next_state <= sd9;
                        elsif dash = '1' and valid = '1' then
                            next_state  <= sd0;
                        end if;
                    when invalid =>
                        next_state <= reset;
                    when others =>
                        next_state  <= invalid;
                end case;

            end if;

            -- rbshi: the st_error will be reset to st_root only after lg/wg signal, then the decode will bypass error letters.
            if (state = invalid and ((lg = '1' or wg ='1') and valid = '1') ) then
                next_state <= reset;
                next_output_space <= '0';
            end if;

            if(output_space = '1') then
                next_output_space <= '0';
            end if;

            if (clr ='1') then
                next_state <= reset;
            end if;
        end if;
    end process;

end Behavioral;

