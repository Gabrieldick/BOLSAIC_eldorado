library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.STD_LOGIC_ARITH.all;
  use IEEE.STD_LOGIC_UNSIGNED.all;

entity TopFunc_TB is
end entity;

architecture Behavioral of TopFunc_TB is
    -- Signals for testbench
    signal MCLK_TB       : std_logic := '0';
        signal clk       : std_logic := '0';

    signal SCLK_TB       : std_logic := '0';
    signal RST_TB        : std_logic := '0';
    signal DIN          : std_logic_vector(7 downto 0) := "00000000";
    signal RD       : std_logic := '0';
    signal WE        : std_logic := '0';
    signal RUNNING_M    : std_logic := '1';
    signal RUNNING_S    : std_logic := '1';
    signal QUEUED               : std_logic;
    Signal SCL              : std_logic;
    Signal SDA          : std_logic;
    signal Data_Valid : std_logic;
    


  -- Clock period definitions
  constant CLK_PERIOD : time := 10 ns; -- Adjust as needed


  signal Anode_Activate: STD_LOGIC_VECTOR(3 downto 0);
  signal LED_out: STD_LOGIC_VECTOR(6 downto 0);

begin
  -- Instantiate the design under test
  uut: entity work.TopFunc
    port map (
    clk => clk,
      MCLK              => MCLK_TB,
      RST               => RST_TB,
      RD                => RD,
      WE                => WE,
      DIN               => DIN,
      QUEUED            => QUEUED,
      SDA_S             => SDA,
      SCL_S             => SCL,
      SDA_M             => SDA,
      SCL_M             => SCL,
      Anode_Activate    => Anode_Activate,
      LED_out           => LED_out,
      Data_valid        => DATA_VALID,
      SCLK              => SCLK_TB
    );

 CLOCK_general: process --3,33Ghz
  begin
    while (RUNNING_M = '1') loop
      clk <= not clk;
      wait for CLK_PERIOD/2;
    end loop;
    wait;
  end process;
  
  CLOCK_master: process --3,33Ghz
  begin
    while (RUNNING_M = '1') loop
      MCLK_TB <= not MCLK_TB;
      wait for CLK_PERIOD/2;
    end loop;
    wait;
  end process;

  CLOCK_slave: process --100Mhz
  begin
    while (RUNNING_S = '1') loop
      SCLK_TB <= not SCLK_TB;
      wait for CLK_PERIOD/2;
    end loop;
    wait;
  end process;

  GO: process
  begin
    wait for 1 ns;
    RST_TB <= '1';
    --DIN <= (others=>'0');
    --		DIN <= x"F7"; --Registrador que pretendo escrever
    --		RD <= '0';
    --		WE <= '1';
    wait for 1000 ns;
    RST_TB <= '0';
    --		WE <= '1';
    --		DIN <= x"F3";
    --		wait until QUEUED'event and QUEUED = '0';
    WE <= '0';
    RD <= '1';
    wait until DATA_VALID'event and DATA_VALID = '0';
    wait;
  end process;

end architecture;
