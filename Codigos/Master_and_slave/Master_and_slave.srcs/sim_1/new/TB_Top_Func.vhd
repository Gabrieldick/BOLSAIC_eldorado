-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Top_func_tb is
end;

architecture bench of Top_func_tb is

  component Top_func
      Port (
          
          MCLK_M		: in	std_logic;
          nRST_M		: in	std_logic;
          SRST		: in	std_logic;
          TIC		: in	std_logic;
          DIN_M		: in	std_logic_vector(7 downto 0);
          RD_M		: in	std_logic;
          WE_M		: in	std_logic;
          
          DOUT_M		: out	std_logic_vector(7 downto 0);
          NACK		: out	std_logic;
          QUEUED		: out	std_logic;
          DATA_VALID		: out	std_logic;
          STOP		: out	std_logic;
          STATUS		: out	std_logic_vector(2 downto 0);
          
          
          
          MCLK_S		: in	std_logic;
  		nRST_S		: in	std_logic;
  		DATA_IN_S		: in	std_logic_vector(7 downto 0);
  		
  		
  		ADDRESS		: out	std_logic_vector(7 downto 0);
  		DATA_OUT_S	: out	std_logic_vector(7 downto 0);
  		WR_S			: out	std_logic;
  		RD_S			: out	std_logic;
          READ_DONE   : out   std_logic
      );
  end component;

  signal MCLK_M: std_logic;
  signal nRST_M: std_logic;
  signal SRST: std_logic;
  signal TIC: std_logic;
  signal DIN_M: std_logic_vector(7 downto 0);
  signal RD_M: std_logic;
  signal WE_M: std_logic;
  signal DOUT_M: std_logic_vector(7 downto 0);
  signal NACK: std_logic;
  signal QUEUED: std_logic;
  signal DATA_VALID: std_logic;
  signal STOP: std_logic;
  signal STATUS: std_logic_vector(2 downto 0);
  signal MCLK_S: std_logic;
  signal nRST_S: std_logic;
  signal DATA_IN_S: std_logic_vector(7 downto 0);
  signal ADDRESS: std_logic_vector(7 downto 0);
  signal DATA_OUT_S: std_logic_vector(7 downto 0);
  signal WR_S: std_logic;
  signal RD_S: std_logic;
  signal READ_DONE: std_logic ;
  
  signal RUNNING_M	: std_logic := '1';
  signal RUNNING_S	: std_logic := '1';
  signal counter 	: std_logic_vector(7 downto 0);

begin

  uut: Top_func port map ( MCLK_M     => MCLK_M,
                           nRST_M     => nRST_M,
                           SRST       => SRST,
                           TIC        => TIC,
                           DIN_M      => DIN_M,
                           RD_M       => RD_M,
                           WE_M       => WE_M,
                           DOUT_M     => DOUT_M,
                           NACK       => NACK,
                           QUEUED     => QUEUED,
                           DATA_VALID => DATA_VALID,
                           STOP       => STOP,
                           STATUS     => STATUS,
                           MCLK_S     => MCLK_S,
                           nRST_S     => nRST_S,
                           DATA_IN_S  => DATA_IN_S,
                           ADDRESS    => ADDRESS,
                           DATA_OUT_S => DATA_OUT_S,
                           WR_S       => WR_S,
                           RD_S       => RD_S,
                           READ_DONE  => READ_DONE );

    CLOCK_master: process
	begin
		while (RUNNING_M = '1') loop
			MCLK_M <= '1';
			wait for 10 ns;
			MCLK_M <= '0';
			wait for 10 ns;
		end loop;
		wait;
	end process CLOCK_master;


    CLOCK_slave: process
	begin
		while (RUNNING_S = '1') loop
			MCLK_S <= '1';
			wait for 10 ns;
			MCLK_S <= '0';
			wait for 10 ns;
		end loop;
		wait;
	end process CLOCK_slave;
	
	TIC <= counter(7) and counter(5); -- 2.56 + 0.64 uS (~300 khz ) for ~100 kbit

	GEN: process(MCLK_M, nRST_M)
	begin
		if (nRST_M = '0') then
			counter <= (others=>'0');
		elsif (MCLK_M'event and MCLK_M='1') then
			if (TIC = '1') then
				counter <= (others=>'0');
			else
				counter <= std_logic_vector(to_unsigned(to_integer(unsigned( counter )) + 1, 8));
			end if;
		end if;
	end process GEN;
	
  GO: process
	begin
	    DATA_IN_S <= x"AA";
		wait for 1 ns;
		nRST_S <= '0';
		nRST_M <= '0';
		SRST <= '0';
		--DIN <= (others=>'0');
		DIN_M <= x"EE";
		RD_M <= '0';
		WE_M <= '1';
		wait for 1000 ns;
		nRST_M <= '1';
		nRST_S <= '1';
		wait until QUEUED'event and QUEUED = '0';
		WE_M <= '1';
		DIN_M <= x"AA";
		wait until QUEUED'event and QUEUED = '0';
		WE_M <= '0';
		RD_M <= '1';
		wait until QUEUED'event and QUEUED = '0';
		WE_M <= '0';
		RD_M <= '1';
		wait until DATA_VALID'event and DATA_VALID = '0';
		wait until QUEUED'event and QUEUED = '0';
		WE_M <= '0';
		RD_M <= '0';	
		wait until DATA_VALID'event and DATA_VALID = '0';	
		wait for 100 uS;
		RUNNING_M <= '0';
		RUNNING_S <= '0';
		wait;
	end process GO;


end;