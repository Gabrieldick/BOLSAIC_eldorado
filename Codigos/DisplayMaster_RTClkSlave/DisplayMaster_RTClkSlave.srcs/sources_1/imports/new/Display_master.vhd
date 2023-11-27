----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2023 16:11:06
-- Design Name: 
-- Module Name: Display_master - Behavioral
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

entity Display_master is
  port (
    Clk              : in    STD_LOGIC;
    Rst              : in    STD_LOGIC;
    RD               : in    STD_LOGIC;
    WE               : in    STD_LOGIC;
    SDA              : inout std_logic;
    SCL              : inout std_logic;
    DIN              : in    std_logic_vector(7 downto 0);
    Dout_teste       : out   std_logic_vector(7 downto 0);
    QUEUED           : out   std_logic;
    DATA_VALID_teste : out   std_logic;
    --display outputs
	Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);-- 4 Anode signals
    LED_out          : out   STD_LOGIC_VECTOR(6 downto 0)
  );

end entity;

architecture Behavioral of Display_master is

  --7SegDisplay
  component hex_controller
    port (
      Input   : in  std_logic_vector(3 downto 0);
      LED_out : out std_logic_vector(6 downto 0)
    );
  end component;

  component I2CMASTER
    generic (
      DEVICE : std_logic_vector(7 downto 0)
    );
    port (
      MCLK       : in  std_logic;
      nRST       : in  std_logic;
      SRST       : in  std_logic;
      TIC        : in  std_logic;
      DIN        : in  std_logic_vector(7 downto 0);
      DOUT       : out std_logic_vector(7 downto 0);
      RD         : in  std_logic;
      WE         : in  std_logic;
      NACK       : out std_logic;
      QUEUED     : out std_logic;
      DATA_VALID : out std_logic;
      STATUS     : out std_logic_vector(2 downto 0);
      STOP       : out std_logic;
      SCL_IN     : in  std_logic;
      SCL_OUT    : out std_logic;
      SDA_IN     : in  std_logic;
      SDA_OUT    : out std_logic
    );
  end component;

  --
  -- SIGNALS --
  signal TIC        : std_logic;
  signal SRST       : std_logic;
  signal DOUT       : std_logic_vector(7 downto 0);
  signal Data_OUT   : std_logic_vector(7 downto 0);
  signal DATA_VALID : std_logic;
  signal NACK       : std_logic;
  signal STOP       : std_logic;
  signal STATUS     : std_logic_vector(2 downto 0);
  signal SCL_IN     : std_logic;
  signal SCL_OUT    : std_logic;
  signal SDA_IN     : std_logic;
  signal SDA_OUT    : std_logic;

  signal LED_BCD         : STD_LOGIC_VECTOR(3 downto 0);
  signal refresh_counter : STD_LOGIC_VECTOR(19 downto 0);
  -- creating 10.5ms refresh period
  signal LED_activating_counter : std_logic_vector(1 downto 0);
  -- the other 2-bit for creating 4 LED-activating signals
  -- count         0    ->  1  ->  2  ->  3
  -- activates    LED1    LED2   LED3   LED4
  signal counter : std_logic_vector(7 downto 0);
  --signal counter 	: std_logic_vector(10 downto 0);
  signal nRST : std_logic;

begin

  I_I2CMASTER_0: I2CMASTER
    generic map (
      DEVICE => x"68"
    )
    port map (
      MCLK       => Clk,
      nRST       => nRST,
      SRST       => SRST,
      TIC        => TIC,
      DIN        => DIN,
      DOUT       => DOUT,
      RD         => RD,
      WE         => WE,
      NACK       => NACK,
      QUEUED     => QUEUED,
      DATA_VALID => DATA_VALID,
      STOP       => STOP,
      STATUS     => STATUS,
      SCL_IN     => SCL_IN,
      SCL_OUT    => SCL_OUT,
      SDA_IN     => SDA_IN,
      SDA_OUT    => SDA_OUT
    );
  -- 1o 7segdisplay
  Display1: hex_controller
    port map (
      Input   => LED_BCD,
      LED_out => LED_out
    );

  nRST <= not (Rst);
  TIC  <= counter(7) and counter(5); -- 2.56 + 0.64 uS (~300 khz ) for ~100 kbit
  --TIC <= counter(10) and counter(8);

  GEN: process (Clk, nRST)
  begin
    if (nRST = '0') then
      counter <= (others => '0');
    elsif (Clk'event and Clk = '1') then
      if (TIC = '1') then
        counter <= (others => '0');
      else
        counter <= std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1, 8));
        --counter <= std_logic_vector(to_unsigned(to_integer(unsigned( counter )) + 1,11));
      end if;
    end if;
  end process;

  process (Clk, nRST)
  begin
    if nRST = '0' then
      Data_OUT <= x"00";
    elsif rising_edge(clk) then
      if (DATA_VALID = '1') then
        Data_OUT <= DOUT;
      end if;
    end if;
  end process;
  DATA_VALID_teste <= DATA_VALID;
  Dout_teste       <= Data_OUT;
  --  open drain PAD pull up 1.5K needed
  SCL    <= 'H' when SCL_OUT = '1' else '0';
  SCL_IN <= to_UX01(SCL);
  SDA    <= 'H' when SDA_OUT = '1' else '0';
  SDA_IN <= to_UX01(SDA);

  -- 7-segment display controller

  -- generate refresh period of 10.5ms
  process (clk, rst)
  begin
    if (rst = '1') then
      refresh_counter <= (others => '0');
    elsif (rising_edge(clk)) then
      refresh_counter <= std_logic_vector(to_unsigned(to_integer(unsigned(refresh_counter)) + 1, 20));
      
    end if;
  end process;
  LED_activating_counter <= refresh_counter(19 downto 18);

  -- 4-to-1 MUX to generate anode activating signals for 4 LEDs 
  process (LED_activating_counter, Data_OUT)
  begin
    case LED_activating_counter is
      when "00" =>
        Anode_Activate <= "0111";
        -- activate LED1 and Deactivate LED2, LED3, LED4
        LED_BCD <= Data_OUT(7 downto 4);
        -- the first hex digit of the 16-bit number
      when "01" =>
        Anode_Activate <= "1011";
        -- activate LED2 and Deactivate LED1, LED3, LED4
        LED_BCD <= Data_OUT(3 downto 0);
        -- the second hex digit of the 16-bit number
      when "10" =>
        Anode_Activate <= "1101";
        -- activate LED3 and Deactivate LED2, LED1, LED4
        LED_BCD <= Data_OUT(7 downto 4);
        -- the third hex digit of the 16-bit number
      when "11" =>
        Anode_Activate <= "1110";
        -- activate LED4 and Deactivate LED2, LED3, LED1
        LED_BCD <= Data_OUT(3 downto 0);
        -- the fourth hex digit of the 16-bit number    
      when others =>
        Anode_Activate <= "1110";
        -- activate LED4 and Deactivate LED2, LED3, LED1
        LED_BCD <= Data_OUT(3 downto 0);
        -- the fourth hex digit of the 16-bit number  
    end case;
  end process;

end architecture;
