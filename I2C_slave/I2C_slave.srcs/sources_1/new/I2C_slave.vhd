----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gabriel Machado Dick em adaptação ao módulo original de Philippe Thirion Disponível em: https://github.com/tirfil/vhdI2CSlave
-- 
-- 
-- Create Date: 17.11.2023 18:11:29
-- Design Name: 
-- Module Name: I2C_slave - Behavioral
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

entity I2C_slave is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           SDA : inout STD_LOGIC;
           SCL : inout STD_LOGIC;
		   DEVICE 		: in std_logic_vector(7 downto 0);
			ADDRESS		: out	std_logic_vector(7 downto 0);
			DATA_OUT	: out	std_logic_vector(7 downto 0);
			DATA_IN		: in	std_logic_vector(7 downto 0);
			WR			: out	std_logic;
			RD			: out	std_logic;
        	READ_DONE   : out   std_logic
		   );
end I2C_slave;

architecture Behavioral of I2C_slave is
		type tstate is ( S_IDLE, S_START, S_SHIFTIN, S_RW, S_SENDACK, S_SENDACK2, S_SENDNACK,
		S_ADDRESS, S_WRITE, S_SHIFTOUT, S_READ, S_WAITACK
	);

	type toperation is (OP_READ, OP_WRITE);
	
	signal state : tstate;
	signal next_state : tstate;
	signal operation : toperation;
	signal nRST		:	std_logic;
	signal rising_scl, falling_scl : std_logic;
	signal address_i : std_logic_vector(7 downto 0);
	signal next_address : std_logic_vector(7 downto 0);
	signal counter : integer range 0 to 7;
	signal start_cond : std_logic;
	signal stop_cond  : std_logic;
	signal sda_q, sda_qq, sda_qqq : std_logic;
	signal scl_q, scl_qq, scl_qqq : std_logic;
	signal shiftreg : std_logic_vector(7 downto 0);
	signal sda_aux: std_logic;
	signal address_incr : std_logic;
	signal rd_d : std_logic;
    signal read_data_done : std_logic;
	-- SIGNALS --
	signal	SDA_IN		: 	std_logic;
	signal	SCL_IN		: 	std_logic;
	signal	SDA_OUT		: 	std_logic;
	signal	SCL_OUT		: 	std_logic;
	signal q			: std_logic_vector(7 downto 0);
	signal BUFFER8		: std_logic_vector(7 downto 0);




begin
		
nRST <= not(rst);		


------ RTCLK begin ----
--process (clk, rst)
--    variable seconds_counter : STD_LOGIC_VECTOR(5 downto 0)  := "000000";               -- Varia�vel do contador de segundos
--    variable minutes_counter : STD_LOGIC_VECTOR(5 downto 0)  := "000000";               -- Vari�vel do contador de minutos
--    variable hours_counter   : STD_LOGIC_VECTOR(19 downto 0) := "00000000000000000000"; -- Vari�vel do contador de horas
--    variable count           : integer                       := 0;
--    variable temp            : STD_LOGIC                     := '0';
--  begin
--    if rst = '1' then
--      -- Reseta todos as vari�veis
--      seconds_counter := "000000";
--      minutes_counter := "000000";
--      hours_counter := "00000000000000000000";
--      count := 0;
--      temp := '0';
--    elsif rising_edge(clk) then
--      count := count + 1;
--      --temp := '0';
--      if count = 99999999 then
--        temp := not temp;
--        count := 0;

--        -- Incrementa os contadores seguindo a l�gica de um rel�gio        
--        if seconds_counter /= "111011" then
--          seconds_counter := std_logic_vector(unsigned(seconds_counter) + 1);
--        else
--          seconds_counter := "000000";
--          if minutes_counter /= "111011" then
--            minutes_counter := std_logic_vector(unsigned(minutes_counter) + 1);
--          else
--            minutes_counter := "000000";
--            if hours_counter /= "11111111111111111111" then
--              hours_counter := std_logic_vector(unsigned(hours_counter) + 1);
--            else
--              hours_counter := "00000000000000000000";
--            end if;
--          end if;
--        end if;
--      end if;
--      clkout <= temp;
--    end if;
--    sec <= seconds_counter;
--    min <= minutes_counter;
--    hour <= hours_counter;
--  end process;

--  ---- RTCLK end ----

  	-- I2C begin --
	  ADDRESS <= address_i;
	
	  next_address <= (others=>'0') when (address_i = x"FF") else
		  std_logic_vector(to_unsigned(to_integer(unsigned( address_i )) + 1, 8));
	  
	  S_RSY: process(clk,nRST)
	  begin
		  if (nRST = '0') then
			  sda_q <= '1';
			  sda_qq <= '1';
			  sda_qqq <= '1';
			  scl_q <= '1';
			  scl_qq <= '1';
			  scl_qqq <= '1';
		  elsif (clk'event and clk='1') then
			  sda_q <= SDA_IN;
			  sda_qq <= sda_q;
			  sda_qqq <= sda_qq;
			  scl_q <= SCL_IN;
			  scl_qq <= scl_q;
			  scl_qqq <= scl_qq;
		  end if;
	  end process S_RSY;
  
	  rising_scl <= scl_qq and not scl_qqq;
	  falling_scl <= not scl_qq and scl_qqq;
		  
	  START_BIT: process(clk,nRST)
	  begin
		  if (nRST = '0') then
			  start_cond <= '0';
		  elsif (clk'event and clk='1') then
			  if (sda_qqq = '1' and sda_qq = '0' and scl_qq = '1') then
				  start_cond <= '1';
			  else	
				  start_cond <= '0';
			  end if;
		  end if;
	  end process START_BIT;
	  
	  STOP_BIT: process(clk,nRST)
	  begin
		  if (nRST = '0') then
			  stop_cond <= '0';
		  elsif (clk'event and clk='1') then
			  if (sda_qqq = '0' and sda_qq = '1' and scl_qq = '1') then
				  stop_cond <= '1';
			  else	
				  stop_cond <= '0';
			  end if;
		  end if;
	  end process STOP_BIT;
	  
	  sda_aux <= sda_qq;
	  
	  RD_DELAY: process(clk, nRST)
	  begin
		  if (nRST = '0') then
			  RD <= '0';
		  elsif (clk'event and clk='1') then
			  RD <= rd_d;
		  end if;
	  end process RD_DELAY;
  
	  OTO: process(clk, nRST)
	  begin
		  if (nRST = '0') then
			  state <= S_IDLE;
			  SDA_OUT <= '1';
			  SCL_OUT <= '1';
			  WR <= '0';
			  rd_d <= '0';
			  address_i <= (others=>'0');
			  DATA_OUT <= (others=>'0');
			  shiftreg <= (others=>'0');
			  read_data_done <= '0';
		  elsif (clk'event and clk='1') then
			  if (stop_cond = '1') then
				  state <= S_IDLE;
				  SDA_OUT <= '1';
				  SCL_OUT <= '1';
				  operation <= OP_READ;
				  WR <= '0';
				  rd_d <= '0';
				  address_incr <= '0';
			  elsif(start_cond = '1') then
				  state <= S_START;
				  SDA_OUT <= '1';
				  SCL_OUT <= '1';
				  operation <= OP_READ;
				  WR <= '0';
				  rd_d <= '0';
				  address_incr <= '0';
			  elsif(state = S_IDLE) then
				  state <= S_IDLE;
				  SDA_OUT <= '1';
				  SCL_OUT <= '1';
				  operation <= OP_READ;
				  WR <= '0';
				  rd_d <= '0';
				  address_incr <= '0';
			  elsif(state = S_START) then
				  shiftreg <= (others=>'0');
				  state <= S_SHIFTIN;
				  next_state <= S_RW;
				  counter <= 6;
			  elsif(state = S_SHIFTIN) then
				  if (rising_scl = '1') then
					  shiftreg(7 downto 1) <= shiftreg(6 downto 0);
					  shiftreg(0) <= sda_aux;
					  if (counter = 0) then
						  state <= next_state;
						  counter <= 7;
					  else
						  counter <= counter - 1;
					  end if;
				  end if;
			  elsif(state = S_RW) then
				  if (rising_scl = '1') then
					  if (shiftreg = DEVICE) then
						  state <= S_SENDACK;
						  if (sda_aux = '1') then
							  operation <= OP_READ;
							  -- next_state <= S_READ; -- no needed
							  rd_d <= '1';
						  else
							  operation <= OP_WRITE;
							  next_state <= S_ADDRESS;
							  address_incr <= '0';
						  end if;
					  else
						  state <= S_SENDNACK;
					  end if;
				  end if;
			  elsif(state = S_SENDACK) then
				  WR <= '0';
				  rd_d <= '0';
				  if (falling_scl = '1') then
					  SDA_OUT <= '0';
					  counter <= 7;
					  if (operation= OP_WRITE) then
						  state <= S_SENDACK2;
					  else -- OP_READ
						  state <= S_SHIFTOUT;
						  shiftreg <= DATA_IN;
						  read_data_done <= '1';
					  end if;
				  end if;
			  elsif(state = S_SENDACK2) then
				  if (falling_scl = '1') then
					  SDA_OUT <= '1';
					  state <= S_SHIFTIN;
					  shiftreg <= (others=>'0');
					  if (address_incr = '1') then
						  address_i <= next_address;
					  end if;
				  end if;
			  elsif(state = S_SENDNACK) then
				  if (falling_scl = '1') then
					  SDA_OUT <= '1';
					  state <= S_IDLE;
				  end if;
			  elsif(state = S_ADDRESS) then
				  address_i <= shiftreg;
				  next_state <= S_WRITE;
				  state <= S_SENDACK;
				  address_incr <= '0';
			  elsif(state = S_WRITE) then
				  DATA_OUT <= shiftreg;
				  next_state <= S_WRITE;
				  state <= S_SENDACK;
				  WR <= '1';
				  address_incr <= '1';
			  elsif(state = S_SHIFTOUT) then
				  read_data_done <= '0';
				  if (falling_scl = '1') then
					  SDA_OUT <= shiftreg(7);
					  shiftreg(7 downto 1) <= shiftreg(6 downto 0);
					  shiftreg(0) <= '1';
					  if (counter = 0) then
						  state <= S_READ;
						  address_i <= next_address;
						  rd_d <= '1';
					  else
						  counter <= counter - 1;
					  end if;
				  end if;
			  elsif(state = S_READ) then
				  rd_d <= '0';
				  if (falling_scl = '1') then
					  SDA_OUT <= '1';
					  state <= S_WAITACK;
				  end if;
			  elsif(state = S_WAITACK) then
				  if (rising_scl = '1') then
					  if (sda_aux = '0') then
						  state <= S_SHIFTOUT;
						  counter <= 7;
						  shiftreg <= DATA_IN;
						  read_data_done <= '1';
					  else
						  state <= S_IDLE;
					  end if;
				  end if;
			  end if;
		  end if;
	  end process OTO;
					  
	  READ_DONE <= read_data_done;

	  -- I2C end --

--		DATA_IN <= "00" & sec;     
--  open drain PAD pull up 1.5K needed
	SCL <= 'Z' when SCL_OUT='1' else '0';
	SCL_IN <= to_UX01(SCL);
	SDA <= 'Z' when SDA_OUT='1' else '0';
	SDA_IN <= to_UX01(SDA);
	
end Behavioral;