----------------------------------------------------------------------------------
-- Course: ELEC3342
-- Module Name:  uart_tx - Behavioral
-- Project Name: mcdecoder_sys
-- Created By: Tam Chun Kit
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_tx is
    Port (
        din : in STD_LOGIC_VECTOR (7 downto 0);
        wen : in STD_LOGIC;
        sout : out STD_LOGIC;
        clr : in STD_LOGIC;
        clk_48k : in STD_LOGIC;
        busy: out std_logic
    );
end uart_tx;

architecture Behavioral of uart_tx is
    signal offset, fqdvrcntr: std_logic_vector(3 downto 0):= x"0";
    signal clw: std_logic := '0';   -- Write next trigger
    signal d: std_logic_vector (7 downto 0) := (others => '0');
begin
    -- Counter frequency counter
    process(clk_48k)
    begin
        if rising_edge(clk_48k) then
            clw <= '0';
            if(clr = '1') then
                fqdvrcntr  <= (others => '0');
            elsif(wen = '1') then
                d <= din ;
                if(fqdvrcntr = x"4") then
                    fqdvrcntr  <= (others => '0');
                    clw <= '1';
                else
                    fqdvrcntr <= fqdvrcntr + 1;
                end if;
            end if;
        end if;
    end process;

    process(clw)
    begin
        if rising_edge (clw) then
            busy <= '0';
            if (wen = '1') then
                if (offset = x"9") then
                    offset <= x"0";
                else
                    offset <= offset +1;
                    busy <= '1';
                end if;
            end if;
        end if;
    end process;

    -- Write bit onto UART process
    process(clw, clr)
    begin
        if (clr = '1') then
            sout <= '1';
        end if;
        if rising_edge(clw) then
            sout <= '1';
            case (offset) is
                when (x"0") =>
                    -- Start bit --
                    sout <= '0';
                when (x"1") =>
                    sout <= d(0);
                when (x"2") =>
                    sout <= d(1);
                when (x"3") =>
                    sout <= d(2);
                when (x"4") =>
                    sout <= d(3);
                when (x"5") =>
                    sout <= d(4);
                when (x"6") =>
                    sout <= d(5);
                when (x"7") =>
                    sout <= d(6);
                when (x"8") =>
                    sout <= d(7);
                when (x"9") =>
                    -- Stop bit --
                    sout <= '1';
                when others => null;
            end case;
        end if;
    end process;


end Behavioral;
