
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TopFunc is
    Port ( 
    --Display master signals
        MCLK		: in	std_logic;
		RST		: in	std_logic;
		RD : in STD_LOGIC;
        WE : in STD_LOGIC;
        Dout_teste_master: out std_logic_vector(7 downto 0);
        DATA_VALID : out std_logic;
		QUEUED : out std_logic;
        DIN: in std_logic_vector(7 downto 0);
        
	--Counter Slave signals
	    Dout_teste_slave: out std_logic_vector(7 downto 0);
		SCLK		: in	std_logic
		);
		
end TopFunc;

architecture Behavioral of TopFunc is

--Display Master
    component Display_master
    port(
          Clk : in STD_LOGIC;
          Rst : in STD_LOGIC;
          RD : in STD_LOGIC;
          WE : in STD_LOGIC;
          SDA		: inout	std_logic;
		  SCL		: inout	std_logic;
		  DIN: in std_logic_vector(7 downto 0);
		  Dout_teste: out std_logic_vector(7 downto 0);
		  DATA_VALID_teste : out std_logic;
		  QUEUED : out std_logic;
		  --display 1 outputs
          output10 : out std_logic; 
		  output11 : out std_logic;
		  output12 : out std_logic;
		  output13 : out std_logic;
		  output14 : out std_logic;
		  output15 : out std_logic;
		  output16 : out std_logic;
		  --display 0 outputs
		  output00 : out std_logic; 
		  output01 : out std_logic;
		  output02 : out std_logic;
		  output03 : out std_logic;
		  output04 : out std_logic;
		  output05 : out std_logic;
		  output06 : out std_logic
        );
    end component;


--Display Master
    component Counter_slave
    port(
          Clk : in STD_LOGIC;
          Rst : in STD_LOGIC;
          SDA : inout STD_LOGIC;
          Dout_teste: out std_logic_vector(7 downto 0);
          SCL : inout STD_LOGIC
        );
    end component;
    
    
-- SIGNALS --
	signal SCL		: std_logic;
	signal SDA		: std_logic;

begin

Display_master_1 : Display_master
port map(
          Clk 		=> MCLK,
          Rst 		=> RST,
          RD 		=> RD,
          WE 		=> WE,
          DIN     => DIN,
          QUEUED	=> QUEUED,
          SDA		=> SDA,
		  SCL		=> SCL,
		  Dout_teste=> Dout_teste_master,
		  DATA_VALID_teste => DATA_VALID
        );

Counter_slave_1 : Counter_slave
port map(
          Clk 		=> SCLK,
          Rst 		=> RST,
          SDA		=> SDA,
		  SCL		=> SCL,
		  Dout_teste=> Dout_teste_slave
        );


end Behavioral;
