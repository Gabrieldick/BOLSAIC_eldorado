----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2023 21:34:40
-- Design Name: 
-- Module Name: Master_control - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Master_control is
  port
  (
    SCL     : in std_logic;
    SDA     : in std_logic;
    clk     : in std_logic;
    rst     : in std_logic;
    SDA_bit : in std_logic_vector (2 downto 0);
    lda_SDA : out std_logic);
end Master_control;

architecture Behavioral of Master_control is
  type tipoestado is (Idle, Startprep, Start, Stopprep, Stop, SendADD, SendData, ReceiveACK);
  signal state      : tipoestado;
  signal next_state : tipoestado;

begin
    process (clk, reset)
    begin
        if rst = '1' then
            state <= Idle;
        elsif rising_edge(clk) then
            state <= next_state;         
        end if;
    end process;

    process (state)
    begin
        
    end process;
end Behavioral;