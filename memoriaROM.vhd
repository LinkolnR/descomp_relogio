library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := x"9" & "00" & '0' & x"24";	-- JSR .setup          	        # Chama a função setup, para limpar os endereços
        tmp(1) := x"6" & "00" & '0' & x"07";	-- JMP .LOOP_HEX                # Salta para a LOOP de seleção do tempo
        tmp(2) := x"9" & "00" & '0' & x"B2";	-- JSR .troca_hex PASSA_HEX:          # Salta para a função de alterar o 
        tmp(3) := x"6" & "00" & '0' & x"07";	-- JMP .LOOP_HEX                # Salta para a LOOP de seleção do tempo
        tmp(4) := x"9" & "00" & '0' & x"AF";	-- JSR .limpa_but VOLTA_SET_RELOGIO:        #Label de retorno para selecionar a hora e chamada da função para limpar a leitura dos botões
        tmp(5) := x"9" & "00" & '1' & x"7B";	-- JSR .setar_hora                          # Chamada da subrotina para selecionar as horas
        tmp(6) := x"9" & "00" & '1' & x"54";	-- JSR .ajusta_leds                         # Chamada da subrotina para ajustar os leds para a nova selecao
        tmp(7) := x"9" & "00" & '0' & x"49";	-- JSR .logica_seleciona LOOP_HEX:          # Chamada da subrotina para a lógica de selecao do tempo com os SW
        tmp(8) := x"7" & "00" & '0' & x"02";	-- JEQ .PASSA_HEX       	                # SE botão KEY0 for pressionado realiza o salto para alterar o display que está sendo configurador, se não continua
        tmp(9) := x"9" & "00" & '0' & x"51";	-- JSR .verifica_key1                       # Chamada da subrotina para verificar se a KEY1 foi pressionada
        tmp(10) := x"7" & "00" & '0' & x"0C";	-- JEQ .relogio_principal                   # Realiza o salto para o relógio funcionando com as bases de tempo
        tmp(11) := x"6" & "00" & '0' & x"07";	-- JMP .LOOP_HEX      	                    # se botão não pressionado, volta para o LOOP de configuração da hora
        tmp(12) := x"9" & "00" & '0' & x"AF";	-- JSR .limpa_but relogio_principal:        # Entra no Loop do relógio principal ,Chamda de subrotinas para limpeza dos botões e dos leds
        tmp(13) := x"9" & "00" & '1' & x"78";	-- JSR .limpa_led
        tmp(14) := x"9" & "00" & '0' & x"4D";	-- JSR .verifica_key0 loop_relogio:         # Verifica se o botão KEY0 foi pressionado para voltar para a configuração do relógio
        tmp(15) := x"7" & "00" & '0' & x"04";	-- JEQ .VOLTA_SET_RELOGIO                   
        tmp(16) := x"9" & "00" & '0' & x"C2";	-- JSR .verifica_carry                      # Chamada da subrotina para verificar se tem carry on
        tmp(17) := x"1" & "10" & '1' & x"62";	-- LDA R2 @KEY2                             # verifica se o botão KEY2 está sendo pressioando para definir a base de tempo rápida
        tmp(18) := x"8" & "10" & '0' & x"00";	-- CEQ R2 @ZERO                             
        tmp(19) := x"7" & "00" & '0' & x"19";	-- JEQ .TEMPO_RAPIDO                        # Caso o botão esteja pressionado ele salta para a base de tempo rápida
        tmp(20) := x"4" & "11" & '0' & x"00";	-- LDI R3 $0                                # Se o botão não estiver pressionado, desligamos os leds que são utilizados para sinalizar que estamos na base de tempo rápida
        tmp(21) := x"5" & "11" & '1' & x"00";	-- STA @LED0A7 R3                           # Carrega zero nos leds
        tmp(22) := x"1" & "00" & '1' & x"65";	-- LDA R0 @BASE_TEMPO        		        # Realiza a leitura da base de tempo de um segundo
        tmp(23) := x"5" & "00" & '1' & x"FD";	-- STA @LIMPA_BASE_TEMPO R0                 # Realiza a limpeza da saida da base de tempo de um segundo
        tmp(24) := x"6" & "00" & '0' & x"1D";	-- JMP .VERIFICA_TEMPO                      # Realiza o salto para a verificação da base de tempo
        tmp(25) := x"4" & "11" & '0' & x"40";	-- LDI R3 $64 TEMPO_RAPIDO:                 # Carrega o valor 64 nos leds para acender o LED6 para sinalizar que está na base de tempo rápida
        tmp(26) := x"5" & "11" & '1' & x"00";	-- STA @LED0A7 R3                           
        tmp(27) := x"1" & "00" & '1' & x"66";	-- LDA R0 @BASE_TEMPO_RAP        		    # Realiza a leitura da base de tempo rápida
        tmp(28) := x"5" & "00" & '1' & x"FC";	-- STA @LIMPA_BASE_TEMPO_RAP R0             # Realiza a limpeza da saida da base de tempo rápida
        tmp(29) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM                  	            # Verifica se a base de tempo que será utilizada VERIFICA_TEMPO:
        tmp(30) := x"7" & "00" & '0' & x"20";	-- JEQ .INCREMENTA                      	# Se for vai para a rotina de incremento
        tmp(31) := x"6" & "00" & '0' & x"0E";	-- JMP .loop_relogio                        # se não volta para a rotina de rotina do relógio
        tmp(32) := x"1" & "01" & '0' & x"14";	-- LDA R1 @VALOR_ATUAL0 INCREMENTA:         # Realiza a leitura do que está em HEX0, segundos
        tmp(33) := x"2" & "01" & '0' & x"01";	-- SOMA R1 @UM                              # Realiza a soma de 1 com o conteúdo dos segundos HEX0 +1
        tmp(34) := x"5" & "01" & '0' & x"14";	-- STA @VALOR_ATUAL0 R1                     # Carrega o valor HEX0+1 para o endereço de memoria Valor Atual para ser analisado se vai ter carry ou não
        tmp(35) := x"6" & "00" & '0' & x"0E";	-- JMP .loop_relogio                        # Volta para o loop principal do relógio
        -- ==================== Começando a Sub Rotina de setup, limpando , zerando alguns endereços e carregando valores em alguns endereços ====================
        --
        tmp(36) := x"0" & "00" & '0' & x"00";	-- NOP setup:              # Definindo a função setup, roda sempre no início limpando os valores
        -- ==================== Carregando zero em R0 e limpando os LEDS e os display de sete seguimento 
        tmp(37) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0           
        tmp(38) := x"5" & "00" & '0' & x"00";	-- STA @ZERO R0
        tmp(39) := x"5" & "00" & '1' & x"20";	-- STA @HEX0 R0
        tmp(40) := x"5" & "00" & '1' & x"21";	-- STA @HEX1 R0
        tmp(41) := x"5" & "00" & '1' & x"22";	-- STA @HEX2 R0
        tmp(42) := x"5" & "00" & '1' & x"23";	-- STA @HEX3 R0
        tmp(43) := x"5" & "00" & '1' & x"24";	-- STA @HEX4 R0
        tmp(44) := x"5" & "00" & '1' & x"25";	-- STA @HEX5 R0
        tmp(45) := x"5" & "00" & '1' & x"01";	-- STA @LED8 R0
        tmp(46) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
        tmp(47) := x"5" & "00" & '0' & x"14";	-- STA @VALOR_ATUAL0 R0
        tmp(48) := x"5" & "00" & '0' & x"15";	-- STA @VALOR_ATUAL1 R0
        tmp(49) := x"5" & "00" & '0' & x"16";	-- STA @VALOR_ATUAL2 R0
        tmp(50) := x"5" & "00" & '0' & x"17";	-- STA @VALOR_ATUAL3 R0
        tmp(51) := x"5" & "00" & '0' & x"18";	-- STA @VALOR_ATUAL4 R0
        tmp(52) := x"5" & "00" & '0' & x"19";	-- STA @VALOR_ATUAL5 R0
        -- ==================== Escrevendo em alguns endereços "variáveis" que serão úteis ao longo do código
        tmp(53) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1
        tmp(54) := x"5" & "00" & '0' & x"01";	-- STA @UM R0
        tmp(55) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(56) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0
        tmp(57) := x"4" & "00" & '0' & x"02";	-- LDI R0 $2
        tmp(58) := x"5" & "00" & '0' & x"02";	-- STA @DOIS R0
        tmp(59) := x"4" & "00" & '0' & x"03";	-- LDI R0 $3
        tmp(60) := x"5" & "00" & '0' & x"03";	-- STA @TRES R0
        tmp(61) := x"4" & "00" & '0' & x"04";	-- LDI R0 $4
        tmp(62) := x"5" & "00" & '0' & x"04";	-- STA @QUATRO R0
        tmp(63) := x"4" & "00" & '0' & x"05";	-- LDI R0 $5
        tmp(64) := x"5" & "00" & '0' & x"05";	-- STA @CINCO R0
        tmp(65) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
        tmp(66) := x"4" & "00" & '0' & x"06";	-- LDI R0 $6
        tmp(67) := x"5" & "00" & '0' & x"25";	-- STA @SEIS R0
        tmp(68) := x"4" & "00" & '0' & x"0A";	-- LDI R0 $10
        tmp(69) := x"5" & "00" & '0' & x"26";	-- STA @DEZ R0
        tmp(70) := x"4" & "00" & '0' & x"20";	-- LDI R0 $32
        tmp(71) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(72) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== FINAL DA SUBROTINA SETUP
        -- ==================== INÍCIO DA SUBROTINA logica_seleciona
        tmp(73) := x"9" & "00" & '0' & x"55";	-- JSR .escreveSW logica_seleciona: # Função que realiza a leitura e faz verificação em qual HEX está escrevendo e escreve no correto 
        tmp(74) := x"9" & "00" & '0' & x"B6";	-- JSR .verifica_SW9   	            # Função que faz a verificação se o SW9 está ativo, se sim será o padrão de 12Horas AM/PM
        tmp(75) := x"9" & "00" & '0' & x"4D";	-- JSR .verifica_key0  	            # Função que faz a verificação se o botão KEY0 foi pressionado, se sim flag EQUAL = 1
        tmp(76) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA verifica_key0, realiza a leitura de KEY0 e faz uma comparação para ver se foi pressionado ou não
        tmp(77) := x"0" & "00" & '0' & x"00";	-- NOP verifica_key0:      # Definindo a função para verificar KEY0
        tmp(78) := x"1" & "10" & '1' & x"60";	-- LDA R2 @KEY0
        tmp(79) := x"8" & "10" & '0' & x"01";	-- CEQ R2 @UM
        tmp(80) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA verifica_key1, realiza a leitura de KEY1 e faz uma comparação para ver se foi pressionado ou não
        tmp(81) := x"0" & "00" & '0' & x"00";	-- NOP verifica_key1:      # Definindo a função para verificar KEY1
        tmp(82) := x"1" & "11" & '1' & x"61";	-- LDA R3 @KEY1
        tmp(83) := x"8" & "11" & '0' & x"01";	-- CEQ R3 @UM
        tmp(84) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA escreveSW, verifica em qual HEX deve escrever e faz as devidas comparações para impedir que valores invalidos sejam colocados na configuração
        tmp(85) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7 escreveSW:     # Realiza a leitura das entradas dos SW e guarda em R1 para ser utilizado na função
        tmp(86) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED, esse endereço guarda em qual HEX que iremos escrever
        tmp(87) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO                # Realiza a comparação com 5, para ver se vamos escrever no HEX5
        tmp(88) := x"7" & "00" & '0' & x"99";	-- JEQ .HEX5                    # se igual, pula para o linha com label HEX5
        tmp(89) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED          
        tmp(90) := x"8" & "00" & '0' & x"04";	-- CEQ R0 @QUATRO               # Realiza a comparação com 4, para ver se vamos escrever no HEX4
        tmp(91) := x"7" & "00" & '0' & x"80";	-- JEQ .HEX4
        tmp(92) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED
        tmp(93) := x"8" & "00" & '0' & x"03";	-- CEQ R0 @TRES                 # Realiza a comparação com 3, para ver se vamos escrever no HEX3
        tmp(94) := x"7" & "00" & '0' & x"7A";	-- JEQ .HEX3 
        tmp(95) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED
        tmp(96) := x"8" & "00" & '0' & x"02";	-- CEQ R0 @DOIS                 # Realiza a comparação com 2, para ver se vamos escrever no HEX2
        tmp(97) := x"7" & "00" & '0' & x"74";	-- JEQ .HEX2
        tmp(98) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED
        tmp(99) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM                   # Realiza a comparação com 1, para ver se vamos escrever no HEX1
        tmp(100) := x"7" & "00" & '0' & x"6E";	-- JEQ .HEX1
        tmp(101) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED              # Realiza a leitura do endereço de AUX_LED
        tmp(102) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO                 # Realiza a comparação com 0, para ver se vamos escrever no HEX0
        tmp(103) := x"7" & "00" & '0' & x"68";	-- JEQ .HEX0
        tmp(104) := x"C" & "01" & '0' & x"26";	-- CLT R1 @DEZ HEX0:            # Verifica se o valor das chaves é menor que 10, para ser válido
        tmp(105) := x"D" & "00" & '0' & x"6B";	-- JLT .CARREGA_HEX0            # Se for, salta para escrever esse valor
        tmp(106) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                   # se não, vai para o fim na função
        tmp(107) := x"5" & "01" & '1' & x"20";	-- STA @HEX0 R1 CARREGA_HEX0:   # Escrevendo o valor na função 
        tmp(108) := x"5" & "01" & '0' & x"14";	-- STA @VALOR_ATUAL0 R1         # Atualizando o valor atual do display0
        tmp(109) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                   # pula para o final
        tmp(110) := x"C" & "01" & '0' & x"25";	-- CLT R1 @SEIS  HEX1:          # Verifica se o valor das chaves é menor que 6, para ser válido
        tmp(111) := x"D" & "00" & '0' & x"71";	-- JLT .CARREGA_HEX1            # Se for, salta para escrever esse valor
        tmp(112) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                   # se não, vai para o fim na função
        tmp(113) := x"5" & "01" & '1' & x"21";	-- STA @HEX1 R1  CARREGA_HEX1:  # Escrevendo o valor na função
        tmp(114) := x"5" & "01" & '0' & x"15";	-- STA @VALOR_ATUAL1 R1         # Atualizando o valor atual do display1
        tmp(115) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                   # pula para o final
        --  Mesma lógica do HEX0, se for menor que 10 escreve se não não escreve
        tmp(116) := x"C" & "01" & '0' & x"26";	-- CLT R1 @DEZ HEX2:
        tmp(117) := x"D" & "00" & '0' & x"77";	-- JLT .CARREGA_HEX2
        tmp(118) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL
        tmp(119) := x"5" & "01" & '1' & x"22";	-- STA @HEX2 R1  CARREGA_HEX2:
        tmp(120) := x"5" & "01" & '0' & x"16";	-- STA @VALOR_ATUAL2 R1 
        tmp(121) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL 
        -- Mesma lógica do HEX1, se for menor que 6 escreve se não escreve 
        tmp(122) := x"C" & "01" & '0' & x"25";	-- CLT R1 @SEIS HEX3:
        tmp(123) := x"D" & "00" & '0' & x"7D";	-- JLT .CARREGA_HEX3
        tmp(124) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL
        tmp(125) := x"5" & "01" & '1' & x"23";	-- STA @HEX3 R1  CARREGA_HEX3:
        tmp(126) := x"5" & "01" & '0' & x"17";	-- STA @VALOR_ATUAL3 R1 
        tmp(127) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL 
        tmp(128) := x"1" & "00" & '0' & x"1F";	-- LDA R0 @FLAG_12_OU_24 HEX4:          # Aqui faz a leitura de uma flag 12 ou 24 para saber se estamos utilizando a base 24 ou de 12
        tmp(129) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM                           # faz a verificação se estamos usando o padrão de 12H  FLAG = 1
        tmp(130) := x"7" & "00" & '0' & x"8D";	-- JEQ .12_VERIFICA                     # Se flag=1 pula para a verificação das 12 
        tmp(131) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5                 # Estando na base 24, fazemos a verificação de qual valor está escrito em HEX5
        tmp(132) := x"8" & "10" & '0' & x"02";	-- CEQ R2 @DOIS                         # Verifica que o que está escrito em HEX5 é 2
        tmp(133) := x"7" & "00" & '0' & x"89";	-- JEQ .HEX5_DOIS                       # se for 2  realiza o salto para outra verificação
        tmp(134) := x"C" & "01" & '0' & x"26";	-- CLT R1 @DEZ                          # verifica se o é menor que 10
        tmp(135) := x"D" & "00" & '0' & x"96";	-- JLT .CARREGA_HEX4                    # se for escreve no display em HEX4
        tmp(136) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                           # pula para o final
        tmp(137) := x"C" & "01" & '0' & x"04";	-- CLT R1 @QUATRO  HEX5_DOIS:           # caso esteja escrito 2 em HEX5, verifica se a entrada é menor que 4
        tmp(138) := x"D" & "00" & '0' & x"96";	-- JLT .CARREGA_HEX4                    # se for escreve em HEX4
        tmp(139) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                           # Salta para o final da função
        tmp(140) := x"7" & "00" & '0' & x"96";	-- JEQ .CARREGA_HEX4
        tmp(141) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5 12_VERIFICA:    # Se estivermos no padrão 12H , verifica se em HEX5 está 0
        tmp(142) := x"8" & "10" & '0' & x"00";	-- CEQ R2 @ZERO                         # se for igual a zero
        tmp(143) := x"7" & "00" & '0' & x"93";	-- JEQ .12_HEX5_ZERO                    # se for zero salta
        tmp(144) := x"C" & "01" & '0' & x"03";	-- CLT R1 @TRES                         # verifica se é menor que 3, se for escreve em HEX4
        tmp(145) := x"D" & "00" & '0' & x"96";	-- JLT .CARREGA_HEX4
        tmp(146) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                           # Salta para o final
        tmp(147) := x"C" & "01" & '0' & x"26";	-- CLT R1 @DEZ 12_HEX5_ZERO:            # se for zero no HEX5, verifica se a entrada é menor que 10 e escreve em HEX4
        tmp(148) := x"D" & "00" & '0' & x"96";	-- JLT .CARREGA_HEX4
        tmp(149) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL
        tmp(150) := x"5" & "01" & '1' & x"24";	-- STA @HEX4 R1  CARREGA_HEX4:
        tmp(151) := x"5" & "01" & '0' & x"18";	-- STA @VALOR_ATUAL4 R1                 # atualiza o valor que está escrita em HEX4
        tmp(152) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL 
        tmp(153) := x"1" & "00" & '0' & x"1F";	-- LDA R0 @FLAG_12_OU_24  HEX5:     # Verifica se está no modo 12H ou 24H 
        tmp(154) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM                      	# Se estiver no modo de 12H ele salta
        tmp(155) := x"7" & "00" & '0' & x"9F";	-- JEQ .12_VERIFICA_5              	# Salta se 12H estiver ativado
        tmp(156) := x"C" & "01" & '0' & x"03";	-- CLT R1 @TRES                    	# Se estiver no modo 24H verifica a flag para ver se é menor que 3
        tmp(157) := x"D" & "00" & '0' & x"A2";	-- JLT .CARREGA_HEX5                # Se for menor que 3 carrega em HEX5
        tmp(158) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                       # Salta para o final
        tmp(159) := x"C" & "01" & '0' & x"02";	-- CLT R1 @DOIS                    	# Verifica a flag_1, que ativa se o valor dos SW for menor que 2 12_VERIFICA_5:
        tmp(160) := x"D" & "00" & '0' & x"A2";	-- JLT .CARREGA_HEX5                # Carrega em HEX5
        tmp(161) := x"6" & "00" & '0' & x"A4";	-- JMP .FINAL                       # Salta para o final
        tmp(162) := x"5" & "01" & '1' & x"25";	-- STA @HEX5 R1  CARREGA_HEX5:      # Escreve no HEX5
        tmp(163) := x"5" & "01" & '0' & x"19";	-- STA @VALOR_ATUAL5 R1             # atualiza o valor atual de HEX5
        tmp(164) := x"A" & "00" & '0' & x"00";	-- RET  FINAL:
        -- ==================== INÍCIO DA SUBROTINA de atualiza_atual, SubRotina que atualiza em qual HEX estamos escrevendo, vai de 5 a zero, e quando for zero volta para 5
        tmp(165) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED atualiza_atual:
        tmp(166) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
        tmp(167) := x"7" & "00" & '0' & x"AC";	-- JEQ .VOLTA_CINCO
        tmp(168) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(169) := x"3" & "00" & '0' & x"01";	-- SUB R0 @UM
        tmp(170) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
        tmp(171) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(172) := x"4" & "00" & '0' & x"05";	-- LDI R0 $5 VOLTA_CINCO:
        tmp(173) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
        tmp(174) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA limpa_but, subrotina para limpar a leitura dos botões KEY0 E KEY1
        tmp(175) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0  limpa_but:
        tmp(176) := x"5" & "00" & '1' & x"FE";	-- STA @LIMPA_KEY1 R0
        tmp(177) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA troca_hex, subrotina que chama a atualiza_atual (mudar em qual display esccrevemos), ajusta_leds(mudar em qual led está acesso) e limpa os botões
        tmp(178) := x"9" & "00" & '0' & x"A5";	-- JSR .atualiza_atual troca_hex:
        tmp(179) := x"9" & "00" & '1' & x"54";	-- JSR .ajusta_leds
        tmp(180) := x"9" & "00" & '0' & x"AF";	-- JSR .limpa_but
        tmp(181) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA verifica_SW9, verifica se SW9 está ativo para atualiza a flag de seguir o padrão 12 ou 24
        tmp(182) := x"1" & "00" & '1' & x"42";	-- LDA R0 @SW9 verifica_SW9:
        tmp(183) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
        tmp(184) := x"7" & "00" & '0' & x"BD";	-- JEQ .SW_ATIVO
        tmp(185) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
        tmp(186) := x"5" & "00" & '0' & x"1F";	-- STA @FLAG_12_OU_24 R0 
        tmp(187) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
        tmp(188) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(189) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 SW_ATIVO:
        tmp(190) := x"5" & "00" & '0' & x"1F";	-- STA @FLAG_12_OU_24 R0 
        tmp(191) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
        tmp(192) := x"9" & "00" & '1' & x"7E";	-- JSR .AM_PM
        tmp(193) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA verifica_carry, subrotina responsável por fazer o carry on., a lógica se repete ao longo da função
        tmp(194) := x"1" & "10" & '0' & x"14";	-- LDA R2 @VALOR_ATUAL0            	# LEITURA DE HEX0  verifica_carry:
        tmp(195) := x"8" & "10" & '0' & x"26";	-- CEQ R2 @DEZ                     	# VERIFICA SE É IGUAL A 10 PARA O CARRY
        tmp(196) := x"7" & "00" & '0' & x"C8";	-- JEQ .CARRY_DEZ_SEG              	# SALTA SE TIVER O CARRY
        tmp(197) := x"1" & "10" & '0' & x"14";	-- LDA R2 @VALOR_ATUAL0            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX0
        tmp(198) := x"5" & "10" & '1' & x"20";	-- STA @HEX0 R2
        tmp(199) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(200) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO                    	# COMO TEVE O CARRY, ESCREVE 0 EM SEGUNDO CARRY_DEZ_SEG:
        tmp(201) := x"5" & "10" & '1' & x"20";	-- STA @HEX0 R2
        tmp(202) := x"5" & "10" & '0' & x"14";	-- STA @VALOR_ATUAL0 R2        	    # ESCREVE 0 NOS SEGUNDOS QUANDO CARRY
        tmp(203) := x"1" & "10" & '0' & x"15";	-- LDA R2 @VALOR_ATUAL1        	    # LEITURA DO HEX1
        tmp(204) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(205) := x"5" & "10" & '0' & x"15";	-- STA @VALOR_ATUAL1 R2
        tmp(206) := x"8" & "10" & '0' & x"25";	-- CEQ R2 @SEIS                	    # VERIFICA SE NÃO VAI TER O CARRY
        tmp(207) := x"7" & "00" & '0' & x"D3";	-- JEQ .CARRY_MIN              	    # SALTA SE TIVER CARRY
        tmp(208) := x"1" & "10" & '0' & x"15";	-- LDA R2 @VALOR_ATUAL1             # SE NÃO ESCREVE O VALOR ATUAL EM HEX1
        tmp(209) := x"5" & "10" & '1' & x"21";	-- STA @HEX1 R2
        tmp(210) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(211) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO                	    # COMO TEVE CARRY ESCREVE 0 EM HEX1 CARRY_MIN:
        tmp(212) := x"5" & "10" & '1' & x"21";	-- STA @HEX1 R2
        tmp(213) := x"5" & "10" & '0' & x"15";	-- STA @VALOR_ATUAL1 R2 
        tmp(214) := x"1" & "10" & '0' & x"16";	-- LDA R2 @VALOR_ATUAL2        	    # LEITURA DO HEX2 PARA VER SE VAI TER CARRY
        tmp(215) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(216) := x"5" & "10" & '0' & x"16";	-- STA @VALOR_ATUAL2 R2
        tmp(217) := x"8" & "10" & '0' & x"26";	-- CEQ R2 @DEZ
        tmp(218) := x"7" & "00" & '0' & x"DE";	-- JEQ .CARRY_DEZ_MIN          	    # SE TIVER CARRY REALIZA O SALTO
        tmp(219) := x"1" & "10" & '0' & x"16";	-- LDA R2 @VALOR_ATUAL2            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX2
        tmp(220) := x"5" & "10" & '1' & x"22";	-- STA @HEX2 R2
        tmp(221) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(222) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO               	    # COMO TEVE CARRY ESCREVE 0 EM HEX2 CARRY_DEZ_MIN:
        tmp(223) := x"5" & "10" & '1' & x"22";	-- STA @HEX2 R2
        tmp(224) := x"5" & "10" & '0' & x"16";	-- STA @VALOR_ATUAL2 R2 
        tmp(225) := x"1" & "10" & '0' & x"17";	-- LDA R2 @VALOR_ATUAL3
        tmp(226) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(227) := x"5" & "10" & '0' & x"17";	-- STA @VALOR_ATUAL3 R2
        tmp(228) := x"8" & "10" & '0' & x"25";	-- CEQ R2 @SEIS
        tmp(229) := x"7" & "00" & '0' & x"E9";	-- JEQ .CARRY_HORA
        tmp(230) := x"1" & "10" & '0' & x"17";	-- LDA R2 @VALOR_ATUAL3            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX3
        tmp(231) := x"5" & "10" & '1' & x"23";	-- STA @HEX3 R2
        tmp(232) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(233) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO CARRY_HORA:
        tmp(234) := x"5" & "10" & '1' & x"23";	-- STA @HEX3 R2
        tmp(235) := x"5" & "10" & '0' & x"17";	-- STA @VALOR_ATUAL3 R2 
        tmp(236) := x"1" & "11" & '0' & x"1F";	-- LDA R3 @FLAG_12_OU_24
        tmp(237) := x"8" & "11" & '0' & x"01";	-- CEQ R3 @UM
        tmp(238) := x"7" & "00" & '1' & x"1D";	-- JEQ .HORA_12        	#SALTA SE O MODO DE 12 HORAS ESTIVER ATIVADO 
        tmp(239) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4        	# COMEÇA A VERIFICAÇÃO PARA 24HORAS
        tmp(240) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(241) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2
        tmp(242) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5        	# PEGA O VALOR DA HORA PARA SABER QUAL COMPARAÇÃO VOCÊ VAI FAZER
        tmp(243) := x"8" & "10" & '0' & x"02";	-- CEQ R2 @DOIS 
        tmp(244) := x"7" & "00" & '0' & x"FB";	-- JEQ .DEPOIS_DAS_20H
        tmp(245) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4
        tmp(246) := x"8" & "10" & '0' & x"26";	-- CEQ R2 @DEZ
        tmp(247) := x"7" & "00" & '1' & x"15";	-- JEQ .CARRY_HORA_24
        tmp(248) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX4
        tmp(249) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(250) := x"A" & "00" & '0' & x"00";	-- RET                           	# ROTINA ANTES DAS 20H
        tmp(251) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4 DEPOIS_DAS_20H:
        tmp(252) := x"8" & "10" & '0' & x"04";	-- CEQ R2 @QUATRO 
        tmp(253) := x"7" & "00" & '1' & x"07";	-- JEQ .RESET_24_HORA
        tmp(254) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4
        tmp(255) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2 
        tmp(256) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(257) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(258) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4            	#QUANDO ESTAMOS EM 20HORAS MAIS
        tmp(259) := x"8" & "10" & '0' & x"04";	-- CEQ R2 @QUATRO
        tmp(260) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX4 JEQ .RESET_24_HORA:
        tmp(261) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(262) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(263) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO RESET_24_HORA:     # Caso tenha chegado nas 24h, volta tudo para zero (meia noite)
        tmp(264) := x"5" & "10" & '0' & x"14";	-- STA @VALOR_ATUAL0 R2 
        tmp(265) := x"5" & "10" & '1' & x"20";	-- STA @HEX0 R2
        tmp(266) := x"5" & "10" & '0' & x"15";	-- STA @VALOR_ATUAL1 R2 
        tmp(267) := x"5" & "10" & '1' & x"21";	-- STA @HEX1 R2
        tmp(268) := x"5" & "10" & '0' & x"16";	-- STA @VALOR_ATUAL2 R2 
        tmp(269) := x"5" & "10" & '1' & x"22";	-- STA @HEX2 R2
        tmp(270) := x"5" & "10" & '0' & x"17";	-- STA @VALOR_ATUAL3 R2
        tmp(271) := x"5" & "10" & '1' & x"23";	-- STA @HEX3 R2
        tmp(272) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2
        tmp(273) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(274) := x"5" & "10" & '0' & x"19";	-- STA @VALOR_ATUAL5 R2
        tmp(275) := x"5" & "10" & '1' & x"25";	-- STA @HEX5 R2
        tmp(276) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(277) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO CARRY_HORA_24:      # ve se tem carry para o HEX4 e escreve 0
        tmp(278) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(279) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2 
        tmp(280) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5             # atualiza o HEX5 somando um
        tmp(281) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(282) := x"5" & "10" & '0' & x"19";	-- STA @VALOR_ATUAL5 R2             #carrega o valor de HEX5    
        tmp(283) := x"5" & "10" & '1' & x"25";	-- STA @ HEX5 R2
        tmp(284) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(285) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4        	# LEITURA DE HEX4 HORA_12:
        tmp(286) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(287) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2
        tmp(288) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5
        tmp(289) := x"8" & "10" & '0' & x"01";	-- CEQ R2 @UM
        tmp(290) := x"7" & "00" & '1' & x"29";	-- JEQ .10H_MAIS
        tmp(291) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4
        tmp(292) := x"8" & "10" & '0' & x"26";	-- CEQ R2 @DEZ
        tmp(293) := x"7" & "00" & '1' & x"33";	-- JEQ .CARRY_DEZ_HORA_12
        tmp(294) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4
        tmp(295) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(296) := x"A" & "00" & '0' & x"00";	-- RET 
        tmp(297) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4 10H_MAIS:
        tmp(298) := x"8" & "10" & '0' & x"03";	-- CEQ R2 @TRES
        tmp(299) := x"7" & "00" & '1' & x"3B";	-- JEQ .RESET_12H_TROCA_AM_PM
        tmp(300) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4
        tmp(301) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(302) := x"A" & "00" & '0' & x"00";	-- RET 
        tmp(303) := x"7" & "00" & '1' & x"33";	-- JEQ .CARRY_DEZ_HORA_12
        tmp(304) := x"1" & "10" & '0' & x"18";	-- LDA R2 @VALOR_ATUAL4            	# SE NÃO ESCREVE O VALOR ATUAL EM HEX4
        tmp(305) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(306) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(307) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO CARRY_DEZ_HORA_12:
        tmp(308) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2 
        tmp(309) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2
        tmp(310) := x"1" & "10" & '0' & x"19";	-- LDA R2 @VALOR_ATUAL5
        tmp(311) := x"2" & "10" & '0' & x"01";	-- SOMA R2 @UM
        tmp(312) := x"5" & "10" & '0' & x"19";	-- STA @VALOR_ATUAL5 R2
        tmp(313) := x"5" & "10" & '1' & x"25";	-- STA @HEX5 R2
        tmp(314) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(315) := x"1" & "10" & '0' & x"00";	-- LDA R2 @ZERO RESET_12H_TROCA_AM_PM:      # Faz o reset de quando trocar de AM para PM
        tmp(316) := x"5" & "10" & '0' & x"14";	-- STA @VALOR_ATUAL0 R2 
        tmp(317) := x"5" & "10" & '1' & x"20";	-- STA @HEX0 R2
        tmp(318) := x"5" & "10" & '0' & x"15";	-- STA @VALOR_ATUAL1 R2 
        tmp(319) := x"5" & "10" & '1' & x"21";	-- STA @HEX1 R2
        tmp(320) := x"5" & "10" & '0' & x"16";	-- STA @VALOR_ATUAL2 R2 
        tmp(321) := x"5" & "10" & '1' & x"22";	-- STA @HEX2 R2
        tmp(322) := x"5" & "10" & '0' & x"17";	-- STA @VALOR_ATUAL3 R2
        tmp(323) := x"5" & "10" & '1' & x"23";	-- STA @HEX3 R2
        tmp(324) := x"5" & "10" & '0' & x"19";	-- STA @VALOR_ATUAL5 R2
        tmp(325) := x"5" & "10" & '1' & x"25";	-- STA @HEX5 R2
        tmp(326) := x"1" & "10" & '0' & x"01";	-- LDA R2 @UM                               # carrega um em HEX4, pois  padrão de 12h começa em 01
        tmp(327) := x"5" & "10" & '0' & x"18";	-- STA @VALOR_ATUAL4 R2
        tmp(328) := x"5" & "10" & '1' & x"24";	-- STA @HEX4 R2
        tmp(329) := x"1" & "10" & '0' & x"07";	-- LDA R2 @TROCA_AM_PM                      # Realiza a troca do estado do LED8 quando troca de AM para PM
        tmp(330) := x"8" & "10" & '0' & x"00";	-- CEQ R2 @ZERO
        tmp(331) := x"7" & "00" & '1' & x"50";	-- JEQ .LED8_ZERO
        tmp(332) := x"1" & "10" & '0' & x"00";	-- LDA R2 $0
        tmp(333) := x"5" & "10" & '1' & x"01";	-- STA @LED8 R2
        tmp(334) := x"5" & "10" & '0' & x"07";	-- STA @TROCA_AM_PM R2
        tmp(335) := x"6" & "00" & '1' & x"53";	-- JMP .FIM_RESET_LED8
        tmp(336) := x"4" & "10" & '0' & x"01";	-- LDI R2 $1 LED8_ZERO:
        tmp(337) := x"5" & "10" & '1' & x"01";	-- STA @LED8 R2
        tmp(338) := x"5" & "10" & '0' & x"07";	-- STA @TROCA_AM_PM R2
        tmp(339) := x"A" & "00" & '0' & x"00";	-- RET FIM_RESET_LED8:
        -- ==================== INÍCIO DA SUBROTINA ajusta_leds
        tmp(340) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED ajusta_leds:
        tmp(341) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO        #verifica se via escrever em HEX5, para acender led5
        tmp(342) := x"7" & "00" & '1' & x"66";	-- JEQ .32_NO_LED   
        tmp(343) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(344) := x"8" & "00" & '0' & x"04";	-- CEQ R0 @QUATRO       #verifica se via escrever em HEX4, para acender led4
        tmp(345) := x"7" & "00" & '1' & x"69";	-- JEQ .16_NO_LED
        tmp(346) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(347) := x"8" & "00" & '0' & x"03";	-- CEQ R0 @TRES         #verifica se via escrever em HEX3, para acender led3
        tmp(348) := x"7" & "00" & '1' & x"6C";	-- JEQ .8_NO_LED
        tmp(349) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(350) := x"8" & "00" & '0' & x"02";	-- CEQ R0 @DOIS         #verifica se via escrever em HEX2, para acender led2
        tmp(351) := x"7" & "00" & '1' & x"6F";	-- JEQ .4_NO_LED
        tmp(352) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(353) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM           #verifica se via escrever em HEX1, para acender led1
        tmp(354) := x"7" & "00" & '1' & x"72";	-- JEQ .2_NO_LED
        tmp(355) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
        tmp(356) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO         #verifica se via escrever em HEX0, para acender led0
        tmp(357) := x"7" & "00" & '1' & x"75";	-- JEQ .1_NO_LED
        tmp(358) := x"4" & "00" & '0' & x"20";	-- LDI R0 $32 32_NO_LED:    #escreve 32 para acender led5
        tmp(359) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(360) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(361) := x"4" & "00" & '0' & x"10";	-- LDI R0 $16 16_NO_LED:    #escreve 16 para acender led4
        tmp(362) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(363) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(364) := x"4" & "00" & '0' & x"08";	-- LDI R0 $8 8_NO_LED:      #escreve 8 para acender led3
        tmp(365) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(366) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(367) := x"4" & "00" & '0' & x"04";	-- LDI R0 $4 4_NO_LED:      #escreve 4 para acender led2
        tmp(368) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(369) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(370) := x"4" & "00" & '0' & x"02";	-- LDI R0 $2 2_NO_LED:      #escreve 2 para acender led1
        tmp(371) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(372) := x"A" & "00" & '0' & x"00";	-- RET
        tmp(373) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 1_NO_LED:      #escreve 1 para acender led0    
        tmp(374) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(375) := x"A" & "00" & '0' & x"00";	-- RET 
        -- ==================== INÍCIO DA SUBROTINA limpa_led, função que apaga os leds
        tmp(376) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0 limpa_led:
        tmp(377) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
        tmp(378) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA setar_hora, função que volta o AUX_LED para 5 (início da configuração da hora)
        tmp(379) := x"4" & "00" & '0' & x"05";	-- LDI R0 $5 setar_hora:
        tmp(380) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
        tmp(381) := x"A" & "00" & '0' & x"00";	-- RET
        -- ==================== INÍCIO DA SUBROTINA AM_PM, Verifica se está AM (desativado) ou PM (ativado) utilizando a SW9 
        tmp(382) := x"1" & "00" & '1' & x"41";	-- LDA R0 @SW8 AM_PM:
        tmp(383) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM           # Se a chave for igual a um, salta e configura PM
        tmp(384) := x"7" & "00" & '1' & x"85";	-- JEQ .PM              # salta se chave igual a um
        tmp(385) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0            # se não, desliga o led8 para sinalizar que está no AM
        tmp(386) := x"5" & "00" & '1' & x"01";	-- STA @LED8 R0
        tmp(387) := x"5" & "00" & '0' & x"07";	-- STA @TROCA_AM_PM R0
        tmp(388) := x"6" & "00" & '1' & x"88";	-- JMP .FIM_AM_PM
        tmp(389) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 PM:        # Liga o Led 8 para sinalizar que estamos em PM
        tmp(390) := x"5" & "00" & '1' & x"01";	-- STA @LED8 R0
        tmp(391) := x"5" & "00" & '0' & x"07";	-- STA @TROCA_AM_PM R0
        tmp(392) := x"A" & "00" & '0' & x"00";	-- RET FIM_AM_PM:
       

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;