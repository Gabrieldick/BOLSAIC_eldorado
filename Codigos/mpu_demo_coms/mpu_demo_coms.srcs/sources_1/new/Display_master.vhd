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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Display_master is
    Port (
          Clk : in STD_LOGIC;
          Rst : in STD_LOGIC;
          RD : in STD_LOGIC;
          WE : in STD_LOGIC;
          SDA		: inout	std_logic;
		  SCL		: inout	std_logic;
		  DIN: in std_logic_vector(7 downto 0);
		  Dout_teste: out std_logic_vector(7 downto 0);
		  QUEUED : out std_logic; 
		  DATA_VALID_teste : out std_logic;
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
		  
    
end Display_master;

architecture Behavioral of Display_master is

--7SegDisplay
    component hex_controller
    port(
            B0 : in std_logic;
            B1 : in std_logic;
            B2 : in std_logic;
            B3 : in std_logic;
            output0 : out std_logic;
            output1 : out std_logic;
            output2 : out std_logic;
            output3 : out std_logic;
            output4 : out std_logic;
            output5 : out std_logic;
            output6 : out std_logic
        );
    end component;
    
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

--
-- SIGNALS --

	signal TIC		: std_logic;
	signal SRST		: std_logic;
	signal DOUT		: std_logic_vector(7 downto 0);
	signal Data_OUT		: std_logic_vector(7 downto 0);
	signal DATA_VALID		: std_logic;
	signal NACK		: std_logic;
	signal STOP		: std_logic;
	signal ADR		: std_logic_vector(3 downto 0);
	signal DATA		: std_logic_vector(7 downto 0);
	signal LOAD		: std_logic;
	signal COMPLETED		: std_logic;
	signal RESCAN		: std_logic;
	signal STATUS		: std_logic_vector(2 downto 0);
	signal SCL_IN		: std_logic;
	signal SCL_OUT		: std_logic;
	signal SDA_IN		: std_logic;
	signal SDA_OUT		: std_logic;
    
	signal counter 	: std_logic_vector(7 downto 0);
	--signal counter 	: std_logic_vector(10 downto 0);

	signal nRST 		: std_logic; 		

begin

I_I2CMASTER_0 : I2CMASTER
		generic map (
			DEVICE 		=> x"68"
		)
		port map (
			MCLK		=> Clk,
			nRST		=> nRST,
			SRST		=> SRST,
			TIC		=> TIC,
			DIN		=> DIN,
			DOUT		=> DOUT,
			RD		=> RD,
			WE		=> WE,
			NACK		=> NACK,
			QUEUED		=> QUEUED,
			DATA_VALID	=> DATA_VALID,
			STOP		=> STOP,
			STATUS		=> STATUS,
			SCL_IN		=> SCL_IN,
			SCL_OUT		=> SCL_OUT,
			SDA_IN		=> SDA_IN,
			SDA_OUT		=> SDA_OUT
		);
-- 1o 7segdisplay
Display1 : hex_controller
port map(
            B0 => Data_OUT(0),
            B1 => Data_OUT(1),
            B2 => Data_OUT(2),
            B3 => Data_OUT(3),
            output0 => output00, 
            output1 => output01,
            output2 => output02,
            output3 => output03,
            output4 => output04,
            output5 => output05,
            output6 => output06
        );

Display2 : hex_controller
port map(
            B0 => Data_OUT(4),
            B1 => Data_OUT(5),
            B2 => Data_OUT(6),
            B3 => Data_OUT(7),
            output0 => output10, 
            output1 => output11,
            output2 => output12,
            output3 => output13,
            output4 => output14,
            output5 => output15,
            output6 => output16
        );

nRST <= not(Rst);
TIC <= counter(7) and counter(5); -- 2.56 + 0.64 uS (~300 khz ) for ~100 kbit
	--TIC <= counter(10) and counter(8);

	GEN: process(Clk, nRST)
	begin
		if (nRST = '0') then
			counter <= (others=>'0');
		elsif (Clk'event and Clk='1') then
			if (TIC = '1') then
				counter <= (others=>'0');
			else
				counter <= std_logic_vector(to_unsigned(to_integer(unsigned( counter )) + 1, 8));
				--counter <= std_logic_vector(to_unsigned(to_integer(unsigned( counter )) + 1,11));
			end if;
		end if;
	end process GEN;

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
	Dout_teste <= Data_OUT;
	--  open drain PAD pull up 1.5K needed
	SCL <= 'H' when SCL_OUT='1' else '0';
	SCL_IN <= to_UX01(SCL);
	SDA <= 'H' when SDA_OUT='1' else '0';
	SDA_IN <= to_UX01(SDA);
end Behavioral;
