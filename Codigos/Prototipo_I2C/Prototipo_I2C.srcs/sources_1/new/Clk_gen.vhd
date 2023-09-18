----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2023 14:00:45
-- Design Name: 
-- Module Name: Clk_gen - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Clk_gen is
    Port ( clk : in  STD_LOGIC;
           divide_by : in  STD_LOGIC_VECTOR(3 downto 0);
           divided_clk : out  STD_LOGIC);
end Clk_gen;

architecture Behavioral of Clk_gen is
    signal counter : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal toggle : STD_LOGIC := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if counter = divide_by then
                toggle <= not toggle;  -- Inverter a cada 'divide_by' ciclos
                counter <= (others => '0');  -- Reiniciar o contador
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    divided_clk <= toggle;
end Behavioral;
