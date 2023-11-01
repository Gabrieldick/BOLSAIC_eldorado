----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2023 02:39:46 PM
-- Design Name: 
-- Module Name: Top_func - Behavioral
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

entity Top_func is
    Port (
        --Master INPUTS
        
        MCLK_M		: in	std_logic;
        nRST_M		: in	std_logic;
        SRST		: in	std_logic; 						-- synchronious reset
        TIC		: in	std_logic;							-- i2c rate (bit rate x3)
        DIN_M		: in	std_logic_vector(7 downto 0);		-- data to send
        RD_M		: in	std_logic;							-- read command
        WE_M		: in	std_logic;							-- write command

        --Master OUTPUTS

        DOUT_M		: out	std_logic_vector(7 downto 0);	-- received data
        NACK		: out	std_logic;						-- nack from slave
        QUEUED		: out	std_logic;						-- operation (write or read cycle) is queued
        DATA_VALID		: out	std_logic;					-- new data available on DOUT
        STOP		: out	std_logic;
        STATUS		: out	std_logic_vector(2 downto 0);	-- state machine state
        
        
        --Slave INPUTS

        MCLK_S		: in	std_logic;
		nRST_S		: in	std_logic;
		DATA_IN_S		: in	std_logic_vector(7 downto 0);

        --Slave OUTPUTS

		ADDRESS		: out	std_logic_vector(7 downto 0);
		DATA_OUT_S	: out	std_logic_vector(7 downto 0);
		WR_S			: out	std_logic;
		RD_S			: out	std_logic;
        READ_DONE   : out   std_logic
    );
end Top_func;

architecture Behavioral of Top_func is

    component I2CMASTER
		generic(
			DEVICE		: std_logic_vector(7 downto 0)
		);
		port(
			MCLK		: in	std_logic;
			nRST		: in	std_logic;
			SRST		: in	std_logic;
			TIC		: in	std_logic;
			DIN		: in	std_logic_vector(7 downto 0);
			DOUT		: out	std_logic_vector(7 downto 0);
			RD		: in	std_logic;
			WE		: in	std_logic;
			NACK		: out	std_logic;
			QUEUED		: out	std_logic;
			DATA_VALID		: out	std_logic;
			STATUS		: out	std_logic_vector(2 downto 0);
			STOP		: out   std_logic;
			SCL_IN		: in	std_logic;
			SCL_OUT		: out	std_logic;
			SDA_IN		: in	std_logic;
			SDA_OUT		: out	std_logic
		);
	end component;

    component I2CSLAVE
		generic(
			DEVICE		: std_logic_vector(7 downto 0)
		);
		port(
			MCLK		: in	std_logic;
			nRST		: in	std_logic;
			SDA_IN		: in	std_logic;
			SCL_IN		: in	std_logic;
			SDA_OUT		: out	std_logic;
			SCL_OUT		: out	std_logic;
			ADDRESS		: out	std_logic_vector(7 downto 0);
			DATA_OUT	: out	std_logic_vector(7 downto 0);
			DATA_IN		: in	std_logic_vector(7 downto 0);
			WR			: out	std_logic;
			RD			: out	std_logic;
			READ_DONE   : out   std_logic
		);
	end component;

    --master to slave--
    signal SCL_MtoS : std_logic;
    signal SDA_MtoS : std_logic;
    --slave to master--
    signal SCL_StoM : std_logic;
    signal SDA_StoM : std_logic;

begin

    -- PORT MAP --
	
    
    I2CMASTER_module : I2CMASTER
		generic map (
			DEVICE 		=> x"38"
		)
		port map (
			MCLK		=> MCLK_M,
			nRST		=> nRST_M,
			SRST		=> SRST,
			TIC		=> TIC,
			DIN		=> DIN_M,
			DOUT		=> DOUT_M,
			RD		=> RD_M,
			WE		=> WE_M,
			NACK		=> NACK,
			QUEUED		=> QUEUED,
			DATA_VALID	=> DATA_VALID,
			STOP		=> STOP,
			STATUS		=> STATUS,
			SCL_IN		=> SCL_StoM,
			SCL_OUT		=> SCL_MtoS,
			SDA_IN		=> SDA_StoM,
			SDA_OUT		=> SDA_MtoS
		);
        
    I2CSLAVE_module : I2CSLAVE
        generic map (
			DEVICE 		=> x"38"
		)
        port map (
            MCLK		=> MCLK_S,
            nRST		=> nRST_S,
            SDA_IN		=> SDA_MtoS,
            SCL_IN		=> SCL_MtoS,
            SDA_OUT		=> SDA_StoM,
            SCL_OUT		=> SCL_StoM,
            ADDRESS		=> ADDRESS,
            DATA_OUT	=> DATA_OUT_S,
            DATA_IN		=> DATA_IN_S,
            WR			=> WR_S,
            RD			=> RD_S,
            READ_DONE   => READ_DONE
        );

end Behavioral;

