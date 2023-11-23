library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TopFunc_TB is
end TopFunc_TB;

architecture Behavioral of TopFunc_TB is
    -- Signals for testbench
    signal MCLK_TB       : std_logic := '0';
    signal SCLK_TB       : std_logic := '0';
    signal RST_TB        : std_logic := '0';
    signal DIN		: std_logic_vector(7 downto 0);
    signal RD       : std_logic := '0';
    signal WE        : std_logic := '0';
    signal RUNNING_M	: std_logic := '1';
    signal RUNNING_S	: std_logic := '1';
    signal QUEUED		: std_logic;
    signal Data_Valid : std_logic;
    

    signal Dout_teste_master_TB : std_logic_vector(7 downto 0) := (others => '0');
    signal Dout_teste_slave_TB  : std_logic_vector(7 downto 0) := (others => '0');

    -- Clock period definitions
    constant CLK_PERIOD     : time := 10 ns; -- Adjust as needed

begin
    -- Instantiate the design under test
    uut : entity work.TopFunc
        port map(
            MCLK                => MCLK_TB,
            RST                 => RST_TB,
            RD 		=> RD,
            WE 		=> WE,
            DIN     => DIN,
            QUEUED	=> QUEUED, 
            Data_valid => DATA_VALID,
            Dout_teste_master  => Dout_teste_master_TB,
            SCLK                => SCLK_TB,
            Dout_teste_slave   => Dout_teste_slave_TB
        );
    
    CLOCK_master: process --3,33Ghz
	begin
		while (RUNNING_M = '1') loop
			MCLK_TB <= '1';
			wait for 10000 ns;
			MCLK_TB <= '0';
			wait for 10000 ns;
		end loop;
		wait;
	end process CLOCK_master;


    CLOCK_slave: process --100Mhz
	begin
		while (RUNNING_S = '1') loop
			SCLK_TB <= '1';
			wait for 5 ns;
			SCLK_TB <= '0';
			wait for 5 ns;
		end loop;
		wait;
	end process CLOCK_slave;


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
	end process GO;

end Behavioral;
