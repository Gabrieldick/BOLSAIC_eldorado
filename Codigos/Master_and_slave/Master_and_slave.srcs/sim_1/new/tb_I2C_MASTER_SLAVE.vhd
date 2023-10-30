--###############################
--# Project Name : 
--# File         : 
--# Author       : 
--# Description  : 
--# Modification History
---- 2016/06/06 Add STOP
--###############################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_I2C_MASTER_SLAVE is
end tb_I2C_MASTER_SLAVE;

architecture testbench of tb_I2C_MASTER_SLAVE is
    -- Componentes
    component I2CMASTER
        port(
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

    component I2CSLAVE
		port(
			MCLK		: in	std_logic;
			nRST		: in	std_logic;
			SDA_IN		: in	std_logic;
			SCL_IN		: in	std_logic;
			SDA_OUT		: out	std_logic;
			SCL_OUT		: out	std_logic;
			ADDRESS		: out	std_logic_vector(7 downto 0);
			DATA_OUT		: out	std_logic_vector(7 downto 0);
			DATA_IN		: in	std_logic_vector(7 downto 0);
			WR		: out	std_logic;
			RD		: out	std_logic;
            READ_DONE   : out	std_logic
		);
	end component;

    -- SIGNALS SLAVE --
	signal nRST_S		: std_logic;
	signal ADDRESS		: std_logic_vector(7 downto 0);
	signal DATA_OUT		: std_logic_vector(7 downto 0);
	signal DATA_IN		: std_logic_vector(7 downto 0);
	signal WR		: std_logic;
	signal RD_S		: std_logic;
    signal READ_DONE    : std_logic;

--
	signal RUNNING_S	: std_logic := '1';
	signal result	: std_logic_vector(7 downto 0);
	
	-- Signals MASTER --
    signal MCLK       : std_logic;
    signal nRST_M       : std_logic;
    signal SRST       : std_logic;
    signal TIC        : std_logic;
    signal DIN        : std_logic_vector(7 downto 0);
    signal DOUT       : std_logic_vector(7 downto 0);
    signal RD_M         : std_logic;
    signal WE         : std_logic;
    signal NACK       : std_logic;
    signal QUEUED     : std_logic;
    signal DATA_VALID : std_logic;
    signal STATUS     : std_logic_vector(2 downto 0);
    signal STOP       : std_logic;
    signal RUNNING_M    : std_logic := '1';
    signal counter    : std_logic_vector(7 downto 0);
    
    --General Signal--
    --MtoS Leaves Master into Slave
    --StoM Leaves Slave into Master
    signal SDA_MtoS		: std_logic;
	signal SCL_MtoS		: std_logic;
	signal SDA_StoM		: std_logic;
	signal SCL_StoM		: std_logic;
	
begin
    -- Instanciando os componentes
    I_I2CMASTER_0 : I2CMASTER
        port map (
            MCLK       => MCLK,
            nRST       => nRST_M,
            SRST       => SRST,
            TIC        => TIC,
            DIN        => DIN,
            DOUT       => DOUT,
            RD         => RD_M,
            WE         => WE,
            NACK       => NACK,
            QUEUED     => QUEUED,
            DATA_VALID => DATA_VALID,
            STOP       => STOP,
            STATUS     => STATUS,
            SCL_IN     => SCL_StoM,
            SCL_OUT    => SCL_MtoS,
            SDA_IN     => SDA_StoM,
            SDA_OUT    => SDA_MtoS
        );

    I_I2CSLAVE_0 : I2CSLAVE
		port map (
			MCLK		=> MCLK,
			nRST		=> nRST_S,
			SCL_IN     => SCL_StoM,
            SCL_OUT    => SCL_MtoS,
            SDA_IN     => SDA_StoM,
            SDA_OUT    => SDA_MtoS,
			ADDRESS		=> ADDRESS,
			DATA_OUT		=> DATA_OUT,
			DATA_IN		=> DATA_IN,
			WR		=> WR,
			RD		=> RD_S,
            READ_DONE   => READ_DONE
		);

    -- Processo de clock
    process
    begin
        while (true) loop
            MCLK <= '0';
            wait for 5 ns;
            MCLK <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Generating Clock Ticks para a frequência de 300 kHz (~2.56 + 0.64 µs) para ~100 kbit
    TIC <= counter(7) and counter(5); -- Definindo a frequência para 300 kHz

    -- Processo para gerar os ticks do clock
   GEN: process(MCLK, nRST_M)
    begin
        if (nRST_M = '0') then
            counter <= (others => '0');
        elsif (MCLK'event and MCLK = '1') then
            if (TIC = '1') then
                counter <= (others => '0');
            else
                counter <= std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1, 8));
            end if;
        end if;
    end process GEN;

    PROCESS
    BEGIN
        -- Valores iniciais
        nRST_M <= '0';
        SRST <= '1'; -- Definido para inibir o reset do dispositivo
    
        -- Aguarda um tempo antes de iniciar a comunicação
        wait for 100 ns;
    
        -- Inicia a comunicação
    
        -- Definindo os valores iniciais para a comunicação
        nRST_M <= '1'; -- Habilita o dispositivo
        SRST <= '0'; -- Inicializa a comunicação
    
        -- Aguarda antes de iniciar a comunicação
        wait for 500 ns;
    
        -- Inicia a transmissão do Master para o Slave com endereço 38 e dado x"DD"
        SCL_Master <= '1';
        SDA_Master <= '1';
        wait for 100 ns;
        SDA_Master <= '0'; -- Start bit
        wait for 100 ns;
        SCL_Master <= '0';
        wait for 100 ns;
        -- Envia o endereço
        DIN_Master <= x"38"; -- Endereço do Slave
        wait for 100 ns;
        SCL_Master <= '1';
        wait for 100 ns;
        SCL_Master <= '0';
        wait for 100 ns;
        -- Envia o dado
        DIN_Master <= x"DD"; -- Dado a ser transmitido
        wait for 100 ns;
        SCL_Master <= '1';
        wait for 100 ns;
        SDA_Master <= '1'; -- Bit de Stop
        wait for 100 ns;
    
        -- Encerra a simulação
        wait for 10 ns;
        wait;
    END PROCESS;
    
end testbench;
