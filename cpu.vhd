library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
				larguraEnderecos : natural := 9;
				instrucao : natural := 15
  );
  port   (
    CLK : in std_logic;
	 --entrada da cpu
	 Instruction_IN: in std_logic_vector(instrucao-1 downto 0); 
	 Data_IN: in std_logic_vector(larguraDados-1 downto 0);
	 RESET_PC: in std_logic;
	 --saída da cpu
	 ROM_Address: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Data_OUT: out std_logic_vector(larguraDados-1 downto 0);
	 Rd: out std_logic;
	 Wr: out std_logic;
	 Saida_PC_topLevel: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Data_Address: out std_logic_vector(larguraEnderecos-1 downto 0)
);
end entity;

architecture arquitetura of cpu is

	-- Signals para o banco de registradores :
	signal endereco_registrador: std_logic_vector(1 downto 0);
	signal habilita_registradores: std_logic;
	signal entrada_ula_A: std_logic_vector(larguraDados-1 downto 0);

	-- Signal para flag equal
	signal habilita_escrita_equal: std_logic;
	
	-- Signals para a ULA:
	signal saida_ula: std_logic_vector(larguraDados-1 downto 0);
	signal seta_flag_zero: std_logic;
	signal seletorUla: std_logic_vector(2 downto 0);
	
	-- Signals para o MUX
	signal entrada0_mux: std_logic_vector(larguraDados-1 downto 0);
	signal entrada1_mux: std_logic_vector(larguraDados-1 downto 0);
	signal entrada_ula_B: std_logic_vector(larguraDados-1 downto 0);
	signal seletor_mux: std_logic;
	
	-- Signals para o MUX de enderecos
	signal entrada_PC: std_logic_vector(larguraEnderecos-1 downto 0);
	signal seletor_mux_enderecos: std_logic_vector(1 downto 0);
	signal entrada0_mux_enderecos: std_logic_vector(larguraEnderecos-1 downto 0);
	signal entrada1_mux_enderecos: std_logic_vector(larguraEnderecos-1 downto 0);
	signal entrada2_mux_enderecos: std_logic_vector(larguraEnderecos-1 downto 0);
	
	-- Signal PC
	signal endereco_rom: std_logic_vector(larguraEnderecos-1 downto 0);
	signal proxPC: std_logic_vector(larguraEnderecos-1 downto 0);
	
	-- Signal Registrador Retorno
	signal saida_reg_endereco: std_logic_vector(larguraEnderecos-1 downto 0);
	signal habilita_escrita_retorno: std_logic;
	
	-- Signals para lógica de desvio
	signal JMP,JEQ,JSR,RET,flag_equal: std_logic;
	
	-- Signal para decoder
	signal opcode: std_logic_vector(3 downto 0);
	signal palavra_de_controle: std_logic_vector(18 downto 0);

	-- signal logica de desvio
	signal seletor_desvio: std_logic_vector(1 downto 0);
	
	-- signal subrotinas aninhadas
  signal saida_ula_end: std_logic_vector(2 downto 0);
  signal Saida_mux_end: std_logic_vector(2 downto 0);
  signal SelMUX_end,Operacao_ULA_end,leitura_end,escrita_end: std_logic;
  signal endereco_retorno: std_logic_vector(8 downto 0);
  signal Saida_END : std_logic_vector(2 downto 0);
 
  --signal fliflop clt
  signal set_clt: std_logic;
  signal flag_clt: std_logic;
  signal habilita_escrita_clt: std_logic;
  signal JLT: std_logic;
	
	
	begin
	
	bancoRegistradores : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados)
          port map ( clk => CLK,
							endereco => endereco_registrador,
							dadoEscrita => saida_ula,
							habilitaEscrita => habilita_registradores,
							saida  => entrada_ula_A);
							
							
	ULA : entity work.ULA  generic map(larguraDados => larguraDados)
	
          port map (	entradaA => entrada_ula_A,
							entradaB =>  entrada_ula_B,
							saida => saida_ula,
							seletor => seletorUla,
							saida_flag => seta_flag_zero,
							saida_clt => set_clt);
							
	FlipFlop : entity work.FlipFlop   
          port map (	DIN => seta_flag_zero,
							DOUT => flag_equal,
							ENABLE => habilita_escrita_equal,
							CLK => CLK,
							RST => '0');
		
	FlipFlopCLT : entity work.FlipFlop   
          port map (	DIN => set_clt,
							DOUT => flag_clt,
							ENABLE => habilita_escrita_clt,
							CLK => CLK,
							RST => '0');
							
							
	MUX_CPU :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( 	entradaA_MUX => entrada0_mux,
							entradaB_MUX =>  entrada1_mux,
							seletor_MUX => seletor_mux,
							saida_MUX => entrada_ula_B);
							
							
	MUX_ENDERECO :  entity work.muxGenerico4x1 generic map (larguraDados => larguraEnderecos)
        port map( 	entradaA_MUX => entrada0_mux_enderecos,
							entradaB_MUX =>  entrada1_mux_enderecos,
							entradaC_MUX =>  entrada2_mux_enderecos,
							entradaD_MUX => "000000000",
							seletor_MUX => seletor_mux_enderecos,
							saida_MUX => entrada_PC);
							
	
	PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (	DIN => entrada_PC,
							DOUT => endereco_rom,
							ENABLE => '1',
							CLK => CLK,
							RST => (not RESET_PC));
							
	incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( 	entrada => endereco_rom,
							saida => proxPC);
							
							
							
	-- Montando subrotinas aninhadas ===========================================
	
	RAM_END : entity work.memoriaRAM   generic map (dataWidth => 9, addrWidth => 3)
			port map (	addr => Saida_mux_end,
							wr => escrita_end,
							rd => leitura_end,
							habilita =>  '1', 
							dado_in => proxPC,
							dado_out => endereco_retorno,
							clk => CLK);
							
	MUX_END :  entity work.muxGenerico2x1  generic map (larguraDados => 3)
			port map( entradaA_MUX => Saida_END,
                  entradaB_MUX =>  saida_ula_end,
                  seletor_MUX => SelMUX_end,
                  saida_MUX => Saida_mux_end);
						
	ULA_END: entity work.ULASomaSubEND  generic map(larguraDados => 3)
			port map (	entradaA => Saida_END,
							entradaB => "00" & '1',
							saida => saida_ula_end, 
							seletor => Operacao_ULA_end);
							
	REG_retorno : entity work.registradorGenerico   generic map (larguraDados => 3)
			port map (	DIN => saida_ula_end,
							DOUT => Saida_END,
							ENABLE => habilita_escrita_retorno,
							CLK => CLK, RST => '0');
							
							
	-- ==================================
								
	LogicaDesvio1 : entity work.LogicaDesvio1
			port map(	jeq => JEQ,
							jmp => JMP,
							jsr => JSR,
							ret => RET,
							flag => flag_equal,
							jlt => JLT,
							flag_lt =>flag_clt, 
							saida => seletor_desvio);
							
	DECODER : entity work.decoderInstrucao
			port map(	opcode => opcode, 
							saida => palavra_de_controle);
							
							
-- Variaveis decoder
opcode <= Instruction_IN(14 downto 11);

-- Variaveis para subrotina aninhadas 
Operacao_ULA_end<= palavra_de_controle(18); 
SelMUX_end <= palavra_de_controle(17);
leitura_end <= palavra_de_controle(16);
escrita_end <= palavra_de_controle(15);
habilita_escrita_retorno <= palavra_de_controle(14);

-- Pontos de controle do decoder
JLT <= palavra_de_controle(13);
JMP <= palavra_de_controle(12);
RET <= palavra_de_controle(11);
JSR <= palavra_de_controle(10);
JEQ <= palavra_de_controle(9);
	
-- Variaveis do MUX	
entrada0_mux <= Data_IN;
entrada1_mux <= Instruction_IN(7 downto 0);
seletor_mux <= palavra_de_controle(8);

-- Variaveis do MUX para enderecos
seletor_mux_enderecos <= seletor_desvio;
entrada0_mux_enderecos <= proxPC;
entrada1_mux_enderecos <= Instruction_IN(8 downto 0); 
entrada2_mux_enderecos <= endereco_retorno;

-- Variaveis do banco de registradores
endereco_registrador <= Instruction_IN(10 downto 9);
habilita_registradores <= palavra_de_controle(7);

-- Variaveis ULA
seletorUla <= palavra_de_controle(6 downto 4);

-- Variaveis flip flop flag equal
habilita_escrita_equal <= palavra_de_controle(2);

-- Variaveis flip flop flag clt
habilita_escrita_clt <= palavra_de_controle(3);


-- Saidas da CPU
Data_Address <= Instruction_IN(8 downto 0);
Rd <= palavra_de_controle(1);
Wr <= palavra_de_controle(0);
ROM_Address <= endereco_rom;
Data_OUT <= entrada_ula_A;
end architecture;
