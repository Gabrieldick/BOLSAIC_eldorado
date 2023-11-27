
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2023 15:56:31
-- Design Name: 
-- Module Name: TopFunc - Behavioral
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

entity TopFunc is
  port (
    --Display master signals
    MCLK              : in    std_logic;
    RST               : in    std_logic;
    RD                : in    STD_LOGIC;
    WE                : in    STD_LOGIC;
    Dout_teste_master : out   std_logic_vector(7 downto 0);
    SDA_M             : inout std_logic;
    SCL_M             : inout std_logic;
    DATA_VALID        : out   std_logic;
    QUEUED            : out   std_logic;
    DIN               : in    std_logic_vector(7 downto 0);
    --display outputs
    Anode_Activate    : out   STD_LOGIC_VECTOR(3 downto 0); -- 4 Anode signals
    LED_out           : out   STD_LOGIC_VECTOR(6 downto 0);

    --Counter Slave signals
    Dout_teste_slave  : out   std_logic_vector(7 downto 0);
    SDA_S             : inout std_logic;
    SCL_S             : inout std_logic;
    SCLK              : in    std_logic
  );

end entity;

architecture Behavioral of TopFunc is

  --Display Master
  component Display_master
    port (
      Clk              : in    STD_LOGIC;
      Rst              : in    STD_LOGIC;
      RD               : in    STD_LOGIC;
      WE               : in    STD_LOGIC;
      SDA              : inout std_logic;
      SCL              : inout std_logic;
      DIN              : in    std_logic_vector(7 downto 0);
      Dout_teste       : out   std_logic_vector(7 downto 0);
      DATA_VALID_teste : out   std_logic;
      QUEUED           : out   std_logic;
      --display outputs
      Anode_Activate   : out   STD_LOGIC_VECTOR(3 downto 0); -- 4 Anode signals
      LED_out          : out   STD_LOGIC_VECTOR(6 downto 0)
    );
  end component;

  --Display Master
  component Counter_slave
    port (
      Clk        : in    STD_LOGIC;
      Rst        : in    STD_LOGIC;
      SDA        : inout STD_LOGIC;
      Dout_teste : out   std_logic_vector(7 downto 0);
      SCL        : inout STD_LOGIC
    );
  end component;

begin

  Display_master_1: Display_master
    port map (
      Clk              => MCLK,
      Rst              => RST,
      RD               => RD,
      WE               => WE,
      DIN              => DIN,
      QUEUED           => QUEUED,
      SDA              => SDA_M,
      SCL              => SCL_M,
      Dout_teste       => Dout_teste_master,
      DATA_VALID_teste => DATA_VALID,
      Anode_Activate   => Anode_Activate,
      LED_out          => LED_out
    );

  Counter_slave_1: Counter_slave
    port map (
      Clk        => SCLK,
      Rst        => RST,
      SDA        => SDA_S,
      SCL        => SCL_S,
      Dout_teste => Dout_teste_slave
    );

end architecture;

