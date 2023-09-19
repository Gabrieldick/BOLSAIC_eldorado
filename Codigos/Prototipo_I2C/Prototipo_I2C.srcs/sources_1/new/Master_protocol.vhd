----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2023 21:34:40
-- Design Name: 
-- Module Name: Master_protocol - Behavioral
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Master_protocol is
  port
  (
    Data       : in std_logic_vector (7 downto 0);
    Slave_addr : in std_logic_vector (6 downto 0);
    clk        : in std_logic;
    rst        : in std_logic;
    SCL        : out std_logic;
    r_w        : inout std_logic;
    SDA        : inout std_logic);
end Master_protocol;

architecture Behavioral of Master_protocol is

  type state_SCL is (disabled, transmiting_clk, start_msg, stop_msg);

  signal SCL_state  : state_SCL;
  signal SDA_enable : std_logic;
  signal Inc_SDA    : std_logic;
  signal Start_prot : std_logic;
  signal Stop_prot  : std_logic;
  signal rst_SDA_bit  : std_logic;
  signal Send_data      : std_logic;
  signal Internal_clock : std_logic;
  signal SDA_bit        : std_logic_vector (2 downto 0) := "000";

begin

  Clock_Divider_inst : entity Clk_gen
  port map (
      clk => clk,
      divide_by => divide_by,
      divided_clk => Internal_clock
  );

  process (clk, rst_SDA_bit, inc_SDA) -- Reg that counts what Bit of data i'm sending or receiving
  begin
    if rst = '1' then
      SDA_bit <= "000";
    elsif rising_edge(clk) then
      if inc_SDA = '1'then
        SDA_bit <= std_logic_vector(unsigned(SDA_bit) + "00000001");
      end if;
    end if;
  end process;

  process (clk)
  begin
    if rising_edge(clk) then

    end if;
  end process;

  process (clk, rst, SDA_bit) -- Reg that sets bit of data that SDA recieves
  begin
    if rst = '1' then
      SDA <= '1';
    elsif rising_edge(clk) then
      if Start_prot = '1' then
        SCL <= '1';
        SDA <= '0';

      elsif Stop_prot = '1' then
        SCL <= '1';
        SDA <= '1';

      elsif Send_data = '1' then

        case SDA_bit is
          when "000" =>
            SDA_data <= Data(0);
          when "001" =>
            SDA_data <= Data(1);
          when "010" =>
            SDA_data <= Data(2);
          when "011" =>
            SDA_data <= Data(3);
          when "100" =>
            SDA_data <= Data(4);
          when "101" =>
            SDA_data <= Data(5);
          when "110" =>
            SDA_data <= Data(6);
          when "111" =>
            SDA_data <= Data(7);
          when others =>
            null;
        end case;

      end if;

    end if;
  end process;
end Behavioral;

/*
Recebo clock do master
adapto clock e seto SCL pra 1
Abaixo SDA
continuo pulsando SCL recebendo clock_modified sempre mudando SDA quando SCL descer
após ultimo envio no final leio SDA para saber o ACK
na descida de SCL seto SDA para 0
Seto SCL para 1 e subo SDA

Tenho que controlar o SCL de diferentes formas no stop/start, na execução e no idle
Tenho que mudar SDA apenas na descida do SCL
Tenho que implementar a FSM que controlará este módulo
* /