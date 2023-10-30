library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  -- Total de bits das entradas e saidas
  generic ( 	larguraDados : natural := 8;
					larguraEnderecos : natural := 9;
					instrucao : natural := 15;
					simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N: in std_logic;
    SW: in std_logic_vector(9 downto 0);
	 PalavraControle: out std_logic_vector(instrucao-1 downto 0);
	 ProgramCounter: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR : out std_logic_vector(9 downto 0);
	 HEX0 : out std_logic_vector(6 downto 0);
	 HEX1 : out std_logic_vector(6 downto 0);
	 HEX2 : out std_logic_vector(6 downto 0);
	 HEX3 : out std_logic_vector(6 downto 0);
	 HEX4 : out std_logic_vector(6 downto 0);
	 HEX5 : out std_logic_vector(6 downto 0)
	 
  );
end entity;

architecture arquitetura of relogio is

	-- signals gerais
	signal CLK: std_logic;

	-- Signal rom
	signal instrucao_rom: std_logic_vector(instrucao-1 downto 0);
	
	-- Signal CPU
	signal CPU_rom_address: std_logic_vector(larguraEnderecos-1 downto 0);
	signal CPU_ram_address: std_logic_vector(larguraEnderecos-1 downto 0);
	signal CPU_saida_dados: std_logic_vector(larguraDados-1 downto 0);
	signal rd_ram, wr_ram: std_logic;
	signal saida_da_ula: std_logic_vector(larguraDados-1 downto 0);
	signal entrada_dados_cpu: std_logic_vector(larguraDados-1 downto 0);

	
	-- signal decoder de blocos da RAM
	signal entrada_bloco_ram: std_logic_vector(2 downto 0);
	signal saida_bloco_ram: std_logic_vector(larguraDados-1 downto 0);
	
	-- signal decoder de bloco de enderecos
	signal entrada_bloco_enderecos: std_logic_vector(2 downto 0);
	signal saida_bloco_enderecos: std_logic_vector(larguraDados-1 downto 0);
	
	-- signal para o LED9
	signal entrada_flip_flop_9: std_logic;
	signal habilita_ff_led9: std_logic;
	signal saida_led9: std_logic;
	
	-- signal para o LED8
	signal entrada_flip_flop_8: std_logic;
	signal habilita_ff_led8: std_logic;
	signal saida_led8: std_logic;
	
	-- signal para o LED0a7
	signal entrada_reg_leds: std_logic_vector(larguraDados-1 downto 0);
	signal habilita_reg_leds: std_logic;
	signal saida_leds_0a7: std_logic_vector(larguraDados-1 downto 0);
	
	-- signal para o display HEX 
	signal entrada_hex0: std_logic_vector(6 downto 0);
	signal entrada_hex1: std_logic_vector(6 downto 0);
	signal entrada_hex2: std_logic_vector(6 downto 0);
	signal entrada_hex3: std_logic_vector(6 downto 0);
	signal entrada_hex4: std_logic_vector(6 downto 0);		
	signal entrada_hex5: std_logic_vector(6 downto 0);
	signal entrada_reg_hex: std_logic_vector(3 downto 0);
	signal habilita_hex0: std_logic;
	signal habilita_hex1: std_logic;
	signal habilita_hex2: std_logic;
	signal habilita_hex3: std_logic;
	signal habilita_hex4: std_logic;
	signal habilita_hex5: std_logic;
	signal base_habilita_hex: std_logic;
	
	-- signal para os SW
	signal habilita_SW0a7: std_logic;
	signal habilita_SW8: std_logic;
	signal habilita_SW9: std_logic;
   signal base_habilita_SW: std_logic;
	
	-- signal para os KEYS
	signal limpa_leitura_key0: std_logic;
	signal limpa_leitura_key1: std_logic;
	signal base_habilita_key: std_logic;
	signal habilita_key0: std_logic;
	signal habilita_key1: std_logic;
	signal habilita_key2: std_logic;
	signal habilita_key3: std_logic;
	signal habilita_fpga_reset: std_logic;
	
	-- signal para as bases de tempo 
	signal habilita_base_tempo,habilita_base_tempo_rapido : std_logic; 
	signal limpa_leitura_tempo,limpa_leitura_tempo_rapido : std_logic;
	signal saida_tempo, saida_tempo_rapido: std_logic;

	
begin
/*
	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
*/
CLK <= CLOCK_50;


	ROM : entity work.memoriaROM   generic map (dataWidth => instrucao, addrWidth => larguraEnderecos)
				port map (	Endereco => CPU_ROM_Address,
								Dado => instrucao_rom);
								
	RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
			   port map (	addr => CPU_ram_address(5 downto 0),
								wr => wr_ram,
								rd => rd_ram,
								habilita => saida_bloco_ram(0), 
								dado_in => CPU_saida_dados,
								dado_out => entrada_dados_cpu,
								clk => CLK);


	CPU : entity work.cpu 
			  port map (	CLK => CLK,
								instruction_in => instrucao_rom,
								data_in => entrada_dados_cpu, 
								rom_address => CPU_rom_address,
								data_out => CPU_saida_dados,
								rd => rd_ram,
								wr => wr_ram,
								data_address => CPU_ram_address,
								RESET_PC => FPGA_RESET_N);
								
								
	DecoderBlocoRAM: entity work.decoder3X8
        port map( entrada => entrada_bloco_ram,
						saida => saida_bloco_ram);
			
	DecoderEnderecos: entity work.decoder3X8
        port map( entrada => entrada_bloco_enderecos,
						saida => saida_bloco_enderecos);
						
						
	FlipFlopLed9 : entity work.FlipFlop 
				port map (	DIN => entrada_flip_flop_9,
								DOUT => saida_led9,
								ENABLE => habilita_ff_led9,
								CLK => CLK, RST => '0');
					  
	FlipFlopLed8 : entity work.FlipFlop 
				port map (	DIN => entrada_flip_flop_8,
								DOUT => saida_led8,
								ENABLE => habilita_ff_led8,
								CLK => CLK, RST => '0');

	Registrador_LEDs : entity work.registradorGenerico generic map (larguraDados => 8)
				 port map (	DIN => entrada_reg_leds,
								DOUT => saida_leds_0a7,
								ENABLE => habilita_reg_leds,
								CLK => CLK, RST => '0');
								
	HEX_0 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex0,
								CLK => CLK,
								Entrada_HEX => entrada_hex0);
	HEX_1 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex1,
								CLK => CLK,
								Entrada_HEX => entrada_hex1);
	HEX_2 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex2,
								CLK => CLK,
								Entrada_HEX => entrada_hex2);
	HEX_3 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex3,
								CLK => CLK,
								Entrada_HEX => entrada_hex3);
	HEX_4 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex4,
								CLK => CLK,
								Entrada_HEX => entrada_hex4);
	HEX_5 : entity work.displayHEX
				 port map (	Data_IN => entrada_reg_hex,
								ENABLE => habilita_hex5,
								CLK => CLK,
								Entrada_HEX => entrada_hex5);
								
	BufferSW0a7:  entity work.buffer_3_state_8portas
        port map( entrada => SW(7 downto 0),
						habilita =>  habilita_SW0a7,
						saida => entrada_dados_cpu);
			
	BufferSW8:  entity work.buffer_3_state_1porta 
			  port map( entrada => SW(8),
							habilita =>  habilita_SW8,
							saida => entrada_dados_cpu(0));

	BufferSW9:  entity work.buffer_3_state_1porta 
			  port map( entrada => SW(9),
							habilita =>  habilita_SW9,
							saida => entrada_dados_cpu(0));
							
							
							
	BufferKEY2:  entity work.buffer_3_state_1porta 
				port map( entrada => KEY(2),
						habilita =>  habilita_key2,
						saida => entrada_dados_cpu(0));
						
	BufferKEY3:  entity work.buffer_3_state_1porta 
				port map( entrada => KEY(3),
							habilita =>  habilita_key3,
							saida => entrada_dados_cpu(0));
			
	BufferFpga:  entity work.buffer_3_state_1porta 
				port map( 	entrada => FPGA_RESET_N,
								habilita =>  habilita_fpga_reset,
								saida => entrada_dados_cpu(0));
						
						
	-- Tratamento especial KEY0 e KEY1
	KEY_0 : entity work.debounceKey
				port map( 	entrada => KEY(0),
								limpa_key => limpa_leitura_key0,
								habilita_key => habilita_key0,
								CLK => CLK,
								saida => entrada_dados_cpu);
				
	KEY_1 : entity work.debounceKey
				port map( 	entrada => KEY(1),
								limpa_key => limpa_leitura_key1,
								habilita_key => habilita_key1,
								CLK => CLK,
								saida => entrada_dados_cpu);
								
								
								
	-- Bases de tempo para o Relógio
	BaseTempo : entity work.divisorGenerico_e_Interface generic map (tempo => 25000000)  -- 25M vai dividir por 50M e temos a saida de um segundo
              port map (clk => CLK,
              habilitaLeitura => habilita_base_tempo,
              limpaLeitura => limpa_leitura_tempo,
              leituraUmSegundo => entrada_dados_cpu(0));
				  
				  
				 
					 
	BaseTempoRapida : entity work.divisorGenerico_e_Interface   generic map (tempo => 2500)  -- Uma base de tempo mais rápida
              port map (clk => CLK,
              habilitaLeitura => habilita_base_tempo_rapido,
              limpaLeitura => limpa_leitura_tempo_rapido,
              leituraUmSegundo => entrada_dados_cpu(0));



					  
					  
-- Variaveis bloco RAM
entrada_bloco_ram <= CPU_ram_address(8 downto 6);		

-- Variaveis bloco enderecos
entrada_bloco_enderecos <=  CPU_ram_address(2 downto 0);
	
-- Variaveis LED 9
entrada_flip_flop_9 <= CPU_saida_dados(0);
habilita_ff_led9 <= wr_ram and saida_bloco_ram(4) and saida_bloco_enderecos(2) and (not CPU_ram_address(5));
LEDR(9) <= saida_led9;

-- Variaveis LED 8
entrada_flip_flop_8 <= CPU_saida_dados(0);
habilita_ff_led8 <= wr_ram and saida_bloco_ram(4) and saida_bloco_enderecos(1) and (not CPU_ram_address(5));
LEDR(8) <= saida_led8;

-- Variaveis LED 0 a 7
entrada_reg_leds <= CPU_saida_dados(7 downto 0);
habilita_reg_leds <= wr_ram and saida_bloco_ram(4) and saida_bloco_enderecos(0) and (not CPU_ram_address(5));
LEDR(7 downto 0) <= saida_leds_0a7;

-- Variaveis para o display hex
entrada_reg_hex <= CPU_saida_dados(3 downto 0);
base_habilita_hex <= CPU_ram_address(5) and saida_bloco_ram(4) and wr_ram;
habilita_hex0 <= base_habilita_hex and saida_bloco_enderecos(0);
habilita_hex1 <= base_habilita_hex and saida_bloco_enderecos(1);
habilita_hex2 <= base_habilita_hex and saida_bloco_enderecos(2);
habilita_hex3 <= base_habilita_hex and saida_bloco_enderecos(3);
habilita_hex4 <= base_habilita_hex and saida_bloco_enderecos(4);
habilita_hex5 <= base_habilita_hex and saida_bloco_enderecos(5);

HEX0 <= entrada_hex0;
HEX1 <= entrada_hex1;
HEX2 <= entrada_hex2;
HEX3 <= entrada_hex3;
HEX4 <= entrada_hex4;
HEX5 <= entrada_hex5;

-- Variaveis para o SW
base_habilita_SW <= rd_ram and (not CPU_ram_address(5)) and saida_bloco_ram(5);
habilita_SW0a7 <= base_habilita_SW and saida_bloco_enderecos(0);
habilita_SW8 <= base_habilita_SW and saida_bloco_enderecos(1);
habilita_SW9 <= base_habilita_SW and saida_bloco_enderecos(2);

-- Variaveis para KEYs
-- 511 KEY0
limpa_leitura_key0 <= CPU_ram_address(8) and CPU_ram_address(7) and CPU_ram_address(6) and CPU_ram_address(5) and CPU_ram_address(4) and CPU_ram_address(3) and CPU_ram_address(2) and CPU_ram_address(1) and CPU_ram_address(0) and wr_ram;
-- 510 KEY1 
limpa_leitura_key1 <= CPU_ram_address(8) and CPU_ram_address(7) and CPU_ram_address(6) and CPU_ram_address(5) and CPU_ram_address(4) and CPU_ram_address(3) and CPU_ram_address(2) and CPU_ram_address(1) and (not CPU_ram_address(0)) and wr_ram;
-- habilita KEYS
base_habilita_key <= rd_ram and  CPU_ram_address(5) and saida_bloco_ram(5);
habilita_key0 <= base_habilita_key and saida_bloco_enderecos(0);
habilita_key1 <= base_habilita_key and saida_bloco_enderecos(1);
habilita_key2 <= base_habilita_key and saida_bloco_enderecos(2);
habilita_key3 <= base_habilita_key and saida_bloco_enderecos(3);
habilita_fpga_reset <= base_habilita_key and saida_bloco_enderecos(4);

-- Variaveis para as Bases de tempo
-- 509 BASE TEMPO
limpa_leitura_tempo <= CPU_ram_address(8) and CPU_ram_address(7) and CPU_ram_address(6) and CPU_ram_address(5) and CPU_ram_address(4) and CPU_ram_address(3) and CPU_ram_address(2) and (not CPU_ram_address(1)) and CPU_ram_address(0) and wr_ram;
-- 508 BASE TEMPO RAPIDO
limpa_leitura_tempo_rapido <= CPU_ram_address(8) and CPU_ram_address(7) and CPU_ram_address(6) and CPU_ram_address(5) and CPU_ram_address(4) and CPU_ram_address(3) and CPU_ram_address(2) and (not CPU_ram_address(1)) and (not CPU_ram_address(0)) and wr_ram;
-- habilita base tempo
habilita_base_tempo <= base_habilita_key and saida_bloco_enderecos(5); -- 357 
habilita_base_tempo_rapido <= base_habilita_key and saida_bloco_enderecos(6); -- 358

PalavraControle  <= instrucao_rom;
ProgramCounter   <= CPU_rom_address;
end architecture;