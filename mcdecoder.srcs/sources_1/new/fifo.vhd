----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2021 11:37:57 AM
-- Design Name: 
-- Module Name: fifo - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_top is
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
end fifo_top;

architecture Behavioral of fifo_top is

    COMPONENT fifo_generator_0
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

    component uart_tx is
        Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
             wen : in STD_LOGIC;
             sout : out STD_LOGIC;
             busy : out STD_LOGIC;
             clr : in STD_LOGIC;
             clk : in STD_LOGIC);
    end component ;

    component mcdecoder is
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
    end component ;
    
    signal wr_en_fifo, rd_en_fifo, dot, dash, lg, wg, valid, busy, full_fifo, empty_fifo: std_logic := '0';
    signal wen, dvalid, dvalid_mc, wen_uart: std_logic := '1';
    signal dout_fifo: std_logic_vector(7 downto 0) := x"00";
    
begin
    -- Prevent underflow and overflow
    wr_en_fifo <= wr_en and dvalid and not busy and not full_fifo;
    rd_en_fifo <= rd_en and not empty_fifo and wen;
    dout <= dout_fifo ;

    MCDECODER_MAP: mcdecoder 
        PORT MAP (
            clk => clk,
            clr => srst,
            dot => dot,
            dash => dash,
            wg => wg,
            lg => lg,
            valid => valid,
            dvalid => dvalid_mc
         );

    UART_TX_MAP: uart_tx 
    PORT MAP (
        clk => clk,
        clr => srst ,
        d => dout_fifo,
        wen => wen_uart
    );
    
    FIFOGEN_MAP : fifo_generator_0
        PORT MAP (
            clk => clk,
            srst => srst,
            din => din,
            wr_en => wr_en_fifo,
            rd_en => rd_en_fifo,
            dout => dout_fifo,
            full => full_fifo,
            empty => empty_fifo,
            almost_empty => almost_empty,
            data_count => data_count 
        );


end Behavioral;
