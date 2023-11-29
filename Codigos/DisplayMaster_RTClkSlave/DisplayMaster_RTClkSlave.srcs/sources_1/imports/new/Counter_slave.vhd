----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2023 18:11:29
-- Design Name: 
-- Module Name: Counter_slave - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_slave is
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           SDA : inout STD_LOGIC;
           SCL : inout STD_LOGIC);
end Counter_slave;

architecture Behavioral of Counter_slave is

component I2CSLAVE
		generic( DEVICE: std_logic_vector(7 downto 0));
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
			RD			: out	std_logic
		);
	end component;

component RealTimeClock
	Port ( 	
			clk : in STD_LOGIC;          -- Entrada do clock
			rst : in STD_LOGIC;          -- Sinal de reset
			clkout: out STD_LOGIC;                   -- Saída do clock
			sec : out STD_LOGIC_VECTOR(5 downto 0);  -- Segundos
			min : out STD_LOGIC_VECTOR(5 downto 0);  -- Minutos
			hour : out STD_LOGIC_VECTOR(19 downto 0) -- Horas
		);
	end component;
	
	-- SIGNALS --
	signal SDA_IN		: std_logic;
	signal SCL_IN		: std_logic;
	signal SDA_OUT		: std_logic;
	signal SCL_OUT		: std_logic;
	signal ADDRESS		: std_logic_vector(7 downto 0);
	signal DATA_OUT		: std_logic_vector(7 downto 0);
	signal DATA_IN		: std_logic_vector(7 downto 0);
	signal WR			: std_logic;
	signal RD			: std_logic;
	
	signal q			: std_logic_vector(7 downto 0);
	signal BUFFER8		: std_logic_vector(7 downto 0);
	signal nRST 		: std_logic;



	signal sec		: std_logic_vector(5 downto 0);
	signal min		: std_logic_vector(5 downto 0);
	signal hour		: std_logic_vector(19 downto 0);


begin

I_I2CITF : I2CSLAVE
		generic map (DEVICE => x"68")
		port map (
			MCLK		=> Clk,
			nRST		=> nRST,
			SDA_IN		=> SDA_IN,
			SCL_IN		=> SCL_IN,
			SDA_OUT		=> SDA_OUT,
			SCL_OUT		=> SCL_OUT,
			ADDRESS		=> ADDRESS,
			DATA_OUT	=> DATA_OUT,
			DATA_IN		=> DATA_IN,
			WR			=> WR,
			RD			=> RD
		); 
		
RTClk : RealTimeClock
		port map (
			clk 		=> Clk,
			rst 		=> Rst,
			sec 		=> sec,
			min 		=> min,
			hour		=> hour
		); 
		
nRST <= not(Rst);		

		
--Counter: process(CLK, RST)
--    begin
--        if RST = '1' then
--            DATA_IN <= (others => '0');
--        elsif rising_edge(CLK) then
--            DATA_IN <= std_logic_vector(to_unsigned(to_integer(unsigned( DATA_IN )) + 1, 8));
--        end if;
--    end process;


    DATA_IN <= "00" & sec;
--  open drain PAD pull up 1.5K needed
	SCL <= 'Z' when SCL_OUT='1' else '0';
	SCL_IN <= to_UX01(SCL);
	SDA <= 'Z' when SDA_OUT='1' else '0';
	SDA_IN <= to_UX01(SDA);
	
end Behavioral;
