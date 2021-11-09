----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name: mcdecoder - Behavioral
-- Project Name: Morse Code Decoder for Homework 1 (Partial)
-- Created By: rshi
--
-- Copyright (C) 2020  Runbin Shi
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
   type state_type is (st_root,st_error,
                        st_A,st_B,st_C,st_D,st_E,st_F,
                        st_G,st_H,st_I,st_J,st_K,st_L,
                        st_M,st_N,st_O,st_P,st_Q,st_R,
                        st_S,st_T,st_U,st_V,st_W,st_X,
                        st_Y,st_Z,st_1,st_2,st_3,st_4,
                        st_5,st_6,st_7,st_8,st_9,st_0,
                        st_NULL_0,st_NULL_1,st_NULL_2);
   signal state, next_state : state_type;

   --Declare other internal signals here
   signal output_space, next_output_space : std_logic := '0';  -- example signal

begin

   -------------------------------------------------------------------------------------------------------------
   --A clock process for state register
   proc_statereg: process (clk, clr)
   begin
      if (clr = '1' or state = st_error) then
         -- jump to reset state here
         state <= st_root;
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
      --insert statements to decode internal output signals
      --below is simple example
      dvalid <= '0';

      if ((lg = '1' or wg ='1') and valid = '1') then
          --isValid := '1';
          dvalid <= '1';
          case (state) is
            when st_A => dout <= "01000001";
            when st_B => dout <= "01000010";
            when st_C => dout <= "01000011";
            when st_D => dout <= "01000100";
            when st_E => dout <= "01000101";
            when st_F => dout <= "01000110";
            when st_G => dout <= "01000111";
            when st_H => dout <= "01001000";
            when st_I => dout <= "01001001";
            when st_J => dout <= "01001010";
            when st_K => dout <= "01001011";
            when st_L => dout <= "01001100";
            when st_M => dout <= "01001101";
            when st_N => dout <= "01001110";
            when st_O => dout <= "01001111";
            when st_P => dout <= "01010000";
            when st_Q => dout <= "01010001";
            when st_R => dout <= "01010010";
            when st_S => dout <= "01010011";
            when st_T => dout <= "01010100";
            when st_U => dout <= "01010101";
            when st_V => dout <= "01010110";
            when st_W => dout <= "01010111";
            when st_X => dout <= "01011000";
            when st_Y => dout <= "01011001";
            when st_Z => dout <= "01011010";
            when st_0 => dout <= "00110000";
            when st_1 => dout <= "00110001";
            when st_2 => dout <= "00110010";
            when st_3 => dout <= "00110011";
            when st_4 => dout <= "00110100";
            when st_5 => dout <= "00110101";
            when st_6 => dout <= "00110110";
            when st_7 => dout <= "00110111";
            when st_8 => dout <= "00111000";
            when st_9 => dout <= "00111001";
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

      if (state = st_error) then
        error <= '1';
      else
        error <= '0';
      end if;

   end process;

   --------------------------------------------------------------------------------------------------------------
   -- Next State Logic.  This corresponds to your next state logic table
   proc_ns: process (dot, dash, lg, wg, valid, clr, clk)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      if (valid ='1') then
          if (lg = '1' or wg = '1') then
            next_state <= st_root;
          end if;

          if (wg = '1') then
            next_output_space <= '1';
          end if;
          case (state) is
            when st_root =>
                if dot = '1' and dash = '0' then
                    next_state <= st_E;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_T;
                end if;
           when st_A =>
                if dot = '1' and dash = '0' then
                    next_state <= st_R;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_W;
                end if;
            when st_E =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_A;
                end if;

            when st_G =>
                if dot = '1' and dash = '0' then
                    next_state <= st_Z;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_Q;
                end if;

            when st_J =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_1;
                end if;

            when st_L =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_M =>
                if dot = '1' and dash = '0' then
                    next_state <= st_G;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_O;
                end if;

            when st_O =>
                if dot = '1' and dash = '0' then
                    next_state <= st_NULL_1;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_NULL_2;
                end if;
            when st_P =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_Q =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_R =>
                if dot = '1' and dash = '0' then
                    next_state <= st_L;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;

            when st_T =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_M;
                end if;

            when st_W =>
                if dot = '1' and dash = '0' then
                    next_state <= st_P;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_J;
                end if;

            when st_Z =>
                if dot = '1' and dash = '0' then
                    next_state <= st_7;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_0 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_1 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;

            when st_7 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_8 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
            when st_9 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;

            -- rbshi: NULL states processing
            when st_NULL_0 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_2;
                end if;

            when st_NULL_1 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_8;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;

            when st_NULL_2 =>
                if dot = '1' and dash = '0' then
                    next_state <= st_9;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_0;
                end if;

            when others =>
                if dot = '1' and dash = '0' then
                    next_state <= st_error;
                end if;
                if dot = '0' and dash = '1' then
                    next_state <= st_error;
                end if;
          end case;
      end if;

      -- rbshi: the st_error will be reset to st_root only after lg/wg signal, then the decode will bypass error letters.
      if (state = st_error and ((lg = '1' or wg ='1') and valid = '1') ) then
        next_state <= st_root;
        next_output_space <= '0';
      end if;

      if(output_space = '1') then
        next_output_space <= '0';
      end if;

      if (clr ='1') then
        next_state <= st_root;
      end if;
   end process;

end Behavioral;
