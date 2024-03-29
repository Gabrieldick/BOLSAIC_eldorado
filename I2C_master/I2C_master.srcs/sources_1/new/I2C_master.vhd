----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gabriel Machado Dick em adaptação ao módulo original de Philippe Thirion Disponível em: https://github.com/tirfil/vhdI2CMaster 
-- 
-- Create Date: 17.11.2023 18:11:29
-- Design Name: 
-- Module Name: I2C_master - Behavioral
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

entity I2C_master is
  port (clk        : in    STD_LOGIC;
        rst        : in    STD_LOGIC;
        SDA        : inout STD_LOGIC;
        SCL        : inout STD_LOGIC;
        DEVICE     : in    std_logic_vector(7 downto 0);
        SRST       : in    std_logic;                    -- synchronious reset
        TIC        : in    std_logic;                    -- i2c rate (bit rate x3)
        DIN        : in    std_logic_vector(7 downto 0); -- data to send
        DOUT       : out   std_logic_vector(7 downto 0); -- received data
        RD         : in    std_logic;                    -- read command
        WE         : in    std_logic;                    -- write command
        NACK       : out   std_logic;                    -- nack from slave
        QUEUED     : out   std_logic;                    -- operation (write or read cycle) is queued
        DATA_VALID : out   std_logic;                    -- new data available on DOUT
        STOP       : out   std_logic;
        STATUS     : out   std_logic_vector(2 downto 0)  -- state machine state
       );
end entity;

architecture Behavioral of I2C_master is
  type tstate is (S_IDLE, S_START, S_SENDBIT, S_WESCLUP, S_WESCLDOWN, S_CHECKACK, S_CHECKACKUP, S_CHECKACKDOWN, S_WRITE, S_PRESTOP, S_STOP, S_READ,
                  S_RECVBIT, S_RDSCLUP, S_RDSCLDOWN, S_SENDACK, S_SENDACKUP, S_SENDACKDOWN, S_RESTART);
  signal state        : tstate;
  signal next_state   : tstate;
  signal nRST         : std_logic;
  signal counter      : std_logic_vector(3 downto 0);
  signal next_counter : std_logic_vector(3 downto 0);
  signal shift        : std_logic_vector(7 downto 0);
  signal nackdet      : std_logic;

  signal sda_in_q, sda_in_qq : std_logic;
  -- SIGNALS --
  signal SDA_IN  : std_logic;
  signal SCL_IN  : std_logic;
  signal SDA_OUT : std_logic;
  signal SCL_OUT : std_logic;
  signal q       : std_logic_vector(7 downto 0);
  signal BUFFER8 : std_logic_vector(7 downto 0);

begin

  nRST <= not (rst);

  next_counter <= std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1, 4));

  RESY: process (clk, nRST)
  begin
    if (nRST = '0') then
      sda_in_q <= '1';
      sda_in_qq <= '1';
    elsif (clk'event and clk = '1') then
      sda_in_q <= SDA_IN;
      sda_in_qq <= sda_in_q;
    end if;
  end process;

  OTO: process (clk, nRST)
  begin
    if (nRST = '0') then
      STATUS <= "000";
      state <= S_IDLE;
      SCL_OUT <= '1';
      SDA_OUT <= '1';
      NACK <= '0';
      QUEUED <= '0';
      DATA_VALID <= '0';
      DOUT <= (others => '0');
      counter <= (others => '0');
      nackdet <= '0';
      shift <= (others => '0');
      STOP <= '0';
    elsif (clk'event and clk = '1') then
      if (SRST = '1') then
        state <= S_IDLE;
      elsif (state = S_IDLE) then
        STATUS <= "000";
        SCL_OUT <= '1';
        SDA_OUT <= '1';
        NACK <= '0';
        QUEUED <= '0';
        DATA_VALID <= '0';
        DOUT <= (others => '1');
        counter <= (others => '0');
        STOP <= '0';
        state <= S_IDLE;
        if (TIC = '1') then
          if (WE = '1' or RD = '1') then
            state <= S_START;
          end if;
        end if;
      elsif (state = S_START) then
        STATUS <= "001";
        SCL_OUT <= '1';
        SDA_OUT <= '0'; -- start bit
        NACK <= '0';
        QUEUED <= '0';
        STOP <= '0';
        DATA_VALID <= '0';
        if (TIC = '1') then
          SCL_OUT <= '0';
          counter <= "0000";
          shift(7 downto 1) <= DEVICE(6 downto 0);
          if (WE = '1') then
            shift(0) <= '0';
            next_state <= S_WRITE;
          else
            shift(0) <= '1'; -- RD='1'
            next_state <= S_READ;
          end if;
          state <= S_SENDBIT;
        end if;
      elsif (state = S_SENDBIT) then
        if (TIC = '1') then
          STATUS <= "010";
          SCL_OUT <= '0';
          SDA_OUT <= shift(7);
          shift(7 downto 1) <= shift(6 downto 0);
          counter <= next_counter;
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          state <= S_WESCLUP;
        end if;
      elsif (state = S_WESCLUP) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '1';
          state <= S_WESCLDOWN;
        end if;
      elsif (state = S_WESCLDOWN) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '0';
          if (counter(3) = '1') then
            state <= S_CHECKACK;
          else
            state <= S_SENDBIT;
          end if;
        end if;
      elsif (state = S_CHECKACK) then
        if (TIC = '1') then
          STATUS <= "011";
          SDA_OUT <= '1';
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '0';
          state <= S_CHECKACKUP;
        end if;
      elsif (state = S_CHECKACKUP) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          SCL_OUT <= '1';
          if (sda_in_qq = '1') then
            nackdet <= '1';
          else
            nackdet <= '0';
          end if;
          state <= S_CHECKACKDOWN;
        end if;
      elsif (state = S_CHECKACKDOWN) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '0';
          state <= next_state; -- S_WRITE or S_READ
        end if;
      elsif (state = S_WRITE) then
        if (nackdet = '1') then
          NACK <= '1';
          SCL_OUT <= '0';
          if (TIC = '1') then
            nackdet <= '0';
            SDA_OUT <= '0';
            state <= S_PRESTOP;
          end if;
        else
          if (WE = '1') then
            shift <= DIN;
            counter <= "0000";
            QUEUED <= '1';
            DATA_VALID <= '0';
            state <= S_SENDBIT;
          elsif (RD = '1') then
            SCL_OUT <= '0';
            SDA_OUT <= '1';
            if (TIC = '1') then
              state <= S_RESTART; -- for restart
            end if;
          else
            SCL_OUT <= '0';
            if (TIC = '1') then
              SDA_OUT <= '0';
              state <= S_PRESTOP;
            end if;
          end if;
        end if;
      elsif (state = S_RESTART) then
        if (TIC = '1') then
          state <= S_IDLE;
        end if;
      elsif (state = S_READ) then
        if (nackdet = '1') then
          NACK <= '1';
          SCL_OUT <= '0';
          if (TIC = '1') then
            nackdet <= '0';
            SDA_OUT <= '0';
            state <= S_PRESTOP;
          end if;
        else
          if (RD = '1') then
            shift <= (others => '0');
            counter <= "0000";
            QUEUED <= '1';
            state <= S_RECVBIT;
          elsif (WE = '1') then
            SCL_OUT <= '0';
            SDA_OUT <= '1';
            if (TIC = '1') then
              state <= S_IDLE; -- for restart
            end if;
          else
            SCL_OUT <= '0';
            -- SDA_OUT <= '0';
            if (TIC = '1') then
              SDA_OUT <= '0';
              state <= S_PRESTOP;
            end if;
          end if;
        end if;
      elsif (state = S_RECVBIT) then
        if (TIC = '1') then
          STATUS <= "101";
          SDA_OUT <= '1';
          SCL_OUT <= '0';
          counter <= next_counter;
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          state <= S_RDSCLUP;
        end if;
      elsif (state = S_RDSCLUP) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '1';
          shift(7 downto 1) <= shift(6 downto 0);
          shift(0) <= sda_in_qq;
          state <= S_RDSCLDOWN;
        end if;
      elsif (state = S_RDSCLDOWN) then
        if (TIC = '1') then
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '0';
          if (counter(3) = '1') then
            state <= S_SENDACK;
          else
            state <= S_RECVBIT;
          end if;
        end if;
      elsif (state = S_SENDACK) then
        if (TIC = '1') then
          STATUS <= "110";
          if (RD = '1') then
            SDA_OUT <= '0';
          else
            SDA_OUT <= '1'; -- last read 
          end if;
          DOUT <= shift;
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '1';
          SCL_OUT <= '0';
          state <= S_SENDACKUP;
        end if;
      elsif (state = S_SENDACKUP) then
        if (TIC = '1') then
          -- SDA_OUT <= '0';
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '1';
          state <= S_SENDACKDOWN;
        end if;
      elsif (state = S_SENDACKDOWN) then
        if (TIC = '1') then
          -- SDA_OUT <= '0';
          NACK <= '0';
          QUEUED <= '0';
          STOP <= '0';
          DATA_VALID <= '0';
          SCL_OUT <= '0';
          state <= S_READ;
        end if;
      elsif (state = S_PRESTOP) then
        if (TIC = '1') then
          STATUS <= "111";
          STOP <= '1';
          SCL_OUT <= '1';
          SDA_OUT <= '0';
          NACK <= '0';
          state <= S_STOP;
        end if;
      elsif (state = S_STOP) then
        if (TIC = '1') then
          SCL_OUT <= '1';
          SDA_OUT <= '1';
          state <= S_IDLE;
        end if;
      end if;
    end if;
  end process;

  --  open drain PAD pull up 1.5K needed
  SCL    <= 'Z' when SCL_OUT = '1' else '0';
  SCL_IN <= to_UX01(SCL);
  SDA    <= 'Z' when SDA_OUT = '1' else '0';
  SDA_IN <= to_UX01(SDA);

end architecture;