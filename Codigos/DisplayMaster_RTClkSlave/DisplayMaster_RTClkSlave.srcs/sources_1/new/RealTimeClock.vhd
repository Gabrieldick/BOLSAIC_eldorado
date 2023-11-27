----------------------------------------------------------------------------------
-- Company: UFRGS
-- Engineer: Arthur Dossena
-- 
-- Create Date: 25.10.2023 21:14:37
-- Design Name: 
-- Module Name: RealTimeClock - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RealTimeClock is
    Port ( clk : in STD_LOGIC;          -- Entrada do clock
           rst : in STD_LOGIC;          -- Sinal de reset
           clkout: out STD_LOGIC;                   -- Saída do clock
           sec : out STD_LOGIC_VECTOR(5 downto 0);  -- Segundos
           min : out STD_LOGIC_VECTOR(5 downto 0);  -- Minutos
           hour : out STD_LOGIC_VECTOR(19 downto 0) -- Horas
           );
end RealTimeClock;

architecture Behavioral of RealTimeClock is
    --signal seconds: STD_LOGIC_VECTOR(5 downto 0) := "000000";  -- Contador de segundos
    --signal minutes : STD_LOGIC_VECTOR(5 downto 0) := "000000";  -- Contador de minutos
    --signal hours : STD_LOGIC_VECTOR(19 downto 0) := "00000000000000000000";     -- Contador de horas
begin
    process(clk, rst)
        variable seconds_counter : STD_LOGIC_VECTOR(5 downto 0) := "000000";  -- Variaável do contador de segundos
        variable minutes_counter : STD_LOGIC_VECTOR(5 downto 0) := "000000";  -- Variável do contador de minutos
        variable hours_counter : STD_LOGIC_VECTOR(19 downto 0) := "00000000000000000000";     -- Variável do contador de horas
        variable count: integer := 0;
        variable temp: STD_LOGIC := '0';
    begin
        if rst = '1' then
            -- Reseta todos as variáveis
            seconds_counter := "000000";
            minutes_counter := "000000";
            hours_counter := "00000000000000000000";
            count := 0;
            temp := '0';
        elsif rising_edge(clk) then
            count := count+1;
            --temp := '0';
            if count = 99999999 then
                temp := not temp;
                count := 0;
                
                -- Incrementa os contadores seguindo a lógica de um relógio        
                if seconds_counter /= "111011" then
                    seconds_counter := std_logic_vector(unsigned(seconds_counter)+1);
                else
                    seconds_counter := "000000";
                    if minutes_counter /= "111011" then
                        minutes_counter := std_logic_vector(unsigned(minutes_counter)+1);
                    else
                        minutes_counter := "000000";
                        if hours_counter /= "11111111111111111111" then
                            hours_counter := std_logic_vector(unsigned(hours_counter)+1);
                        else
                            hours_counter := "00000000000000000000";
                        end if;
                    end if;
                end if;
            end if;
            clkout <= temp;
        end if;
        sec <= seconds_counter;
        min <= minutes_counter;
        hour <= hours_counter;
    end process;

    --sec <= seconds;
    --min <= minutes;
    --hour <= hours;

end Behavioral;