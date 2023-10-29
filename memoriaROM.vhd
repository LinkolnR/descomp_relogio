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
tmp(0) := x"9" & "00" & '0' & x"0E";	-- JSR .setup          	# Chama a função setup, para limpar os endereços
tmp(1) := x"6" & "00" & '0' & x"03";	-- JMP .LOOP_HEX
tmp(2) := x"9" & "00" & '0' & x"97";	-- JSR .troca_hex PASSA_HEX:          # começo do LOOP para HEX0
tmp(3) := x"9" & "00" & '0' & x"3A";	-- JSR .logica_seleciona LOOP_HEX:
tmp(4) := x"7" & "00" & '0' & x"02";	-- JEQ .PASSA_HEX       	# SE botão for pressionado realiza o salto, se não continua
tmp(5) := x"9" & "00" & '0' & x"42";	-- JSR .verifica_key1
tmp(6) := x"7" & "00" & '0' & x"08";	-- JEQ .relogio_principal
tmp(7) := x"6" & "00" & '0' & x"03";	-- JMP .LOOP_HEX      	# se botão não pressionado, volta para o LOOP de HEX0
tmp(8) := x"9" & "00" & '0' & x"94";	-- JSR .limpa_but relogio_principal:
tmp(9) := x"4" & "01" & '0' & x"01";	-- LDI R1 $1 loop_relogio:
tmp(10) := x"5" & "01" & '1' & x"01";	-- STA @LED8 R1
tmp(11) := x"1" & "00" & '0' & x"14";	-- LDA R0 @ VALOR_ATUAL0
tmp(12) := x"2" & "00" & '0' & x"01";	-- SOMA R0 @UM
tmp(13) := x"6" & "00" & '0' & x"09";	-- JMP .loop_relogio
tmp(14) := x"0" & "00" & '0' & x"00";	-- NOP setup:              # Definindo a função setup, roda sempre no início limpando os valores
tmp(15) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0           
tmp(16) := x"5" & "00" & '0' & x"00";	-- STA @ZERO R0
tmp(17) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(18) := x"5" & "00" & '1' & x"20";	-- STA @HEX0 R0
tmp(19) := x"5" & "00" & '1' & x"21";	-- STA @HEX1 R0
tmp(20) := x"5" & "00" & '1' & x"22";	-- STA @HEX2 R0
tmp(21) := x"5" & "00" & '1' & x"23";	-- STA @HEX3 R0
tmp(22) := x"5" & "00" & '1' & x"24";	-- STA @HEX4 R0
tmp(23) := x"5" & "00" & '1' & x"25";	-- STA @HEX5 R0
tmp(24) := x"5" & "00" & '1' & x"01";	-- STA @LED8 R0
tmp(25) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
tmp(26) := x"5" & "00" & '0' & x"0A";	-- STA @DESPERTADOR_HEX0 R0
tmp(27) := x"5" & "00" & '0' & x"0B";	-- STA @DESPERTADOR_HEX1 R0
tmp(28) := x"5" & "00" & '0' & x"0C";	-- STA @DESPERTADOR_HEX2 R0
tmp(29) := x"5" & "00" & '0' & x"0D";	-- STA @DESPERTADOR_HEX3 R0
tmp(30) := x"5" & "00" & '0' & x"0E";	-- STA @DESPERTADOR_HEX4 R0
tmp(31) := x"5" & "00" & '0' & x"0F";	-- STA @DESPERTADOR_HEX5 R0
tmp(32) := x"5" & "00" & '0' & x"14";	-- STA @VALOR_ATUAL0 R0
tmp(33) := x"5" & "00" & '0' & x"15";	-- STA @VALOR_ATUAL1 R0
tmp(34) := x"5" & "00" & '0' & x"16";	-- STA @VALOR_ATUAL2 R0
tmp(35) := x"5" & "00" & '0' & x"17";	-- STA @VALOR_ATUAL3 R0
tmp(36) := x"5" & "00" & '0' & x"18";	-- STA @VALOR_ATUAL4 R0
tmp(37) := x"5" & "00" & '0' & x"19";	-- STA @VALOR_ATUAL5 R0
tmp(38) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1
tmp(39) := x"5" & "00" & '0' & x"01";	-- STA @UM R0
tmp(40) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
tmp(41) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(42) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0
tmp(43) := x"4" & "00" & '0' & x"02";	-- LDI R0 $2
tmp(44) := x"5" & "00" & '0' & x"02";	-- STA @DOIS R0
tmp(45) := x"4" & "00" & '0' & x"03";	-- LDI R0 $3
tmp(46) := x"5" & "00" & '0' & x"03";	-- STA @TRES R0
tmp(47) := x"4" & "00" & '0' & x"04";	-- LDI R0 $4
tmp(48) := x"5" & "00" & '0' & x"04";	-- STA @QUATRO R0
tmp(49) := x"4" & "00" & '0' & x"05";	-- LDI R0 $5
tmp(50) := x"5" & "00" & '0' & x"05";	-- STA @CINCO R0
tmp(51) := x"4" & "00" & '0' & x"06";	-- LDI R0 $6
tmp(52) := x"5" & "00" & '0' & x"25";	-- STA @SEIS R0
tmp(53) := x"4" & "00" & '0' & x"0A";	-- LDI R0 $10
tmp(54) := x"5" & "00" & '0' & x"26";	-- STA @DEZ R0
tmp(55) := x"4" & "00" & '0' & x"20";	-- LDI R0 $32
tmp(56) := x"5" & "00" & '0' & x"09";	-- STA @LIMITE_LED R0
tmp(57) := x"A" & "00" & '0' & x"00";	-- RET
tmp(58) := x"9" & "00" & '0' & x"46";	-- JSR .escreveSW      	# Função que realiza a leitura e faz verificação em qual HEX está escrevendo e escreve no correto logica_seleciona:
tmp(59) := x"9" & "00" & '0' & x"D6";	-- JSR .verifica_SW9   	# Função que faz a verificação se o SW9 está ativo, se sim será 12H
tmp(60) := x"9" & "00" & '0' & x"3E";	-- JSR .verifica_key0  	# Função que faz a verificação se o botão KEY0 foi pressionado, se sim flag EQUAL = 1
tmp(61) := x"A" & "00" & '0' & x"00";	-- RET
tmp(62) := x"0" & "00" & '0' & x"00";	-- NOP verifica_key0:      # Definindo a função para verificar KEY0
tmp(63) := x"1" & "10" & '1' & x"60";	-- LDA R2 @KEY0
tmp(64) := x"8" & "10" & '0' & x"01";	-- CEQ R2 @UM
tmp(65) := x"A" & "00" & '0' & x"00";	-- RET
tmp(66) := x"0" & "00" & '0' & x"00";	-- NOP verifica_key1:      # Definindo a função para verificar KEY0
tmp(67) := x"1" & "11" & '1' & x"61";	-- LDA R3 @KEY1
tmp(68) := x"8" & "11" & '0' & x"01";	-- CEQ R3 @UM
tmp(69) := x"A" & "00" & '0' & x"00";	-- RET
tmp(70) := x"9" & "00" & '0' & x"A9";	-- JSR .VALIDA_ENTRADA escreveSW:
tmp(71) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(72) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(73) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(74) := x"7" & "00" & '0' & x"5A";	-- JEQ .HEX0 
tmp(75) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(76) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(77) := x"7" & "00" & '0' & x"61";	-- JEQ .HEX1
tmp(78) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(79) := x"8" & "00" & '0' & x"02";	-- CEQ R0 @DOIS
tmp(80) := x"7" & "00" & '0' & x"67";	-- JEQ .HEX2 
tmp(81) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(82) := x"8" & "00" & '0' & x"03";	-- CEQ R0 @TRES
tmp(83) := x"7" & "00" & '0' & x"6D";	-- JEQ .HEX3
tmp(84) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(85) := x"8" & "00" & '0' & x"04";	-- CEQ R0 @QUATRO
tmp(86) := x"7" & "00" & '0' & x"73";	-- JEQ .HEX4
tmp(87) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(88) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO
tmp(89) := x"7" & "00" & '0' & x"7F";	-- JEQ .HEX5
tmp(90) := x"1" & "00" & '0' & x"20";	-- LDA R0 @FLAG_9 HEX0:
tmp(91) := x"5" & "00" & '1' & x"25";	-- STA @HEX5 R0
tmp(92) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(93) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(94) := x"5" & "01" & '1' & x"20";	-- STA @HEX0 R1
tmp(95) := x"5" & "01" & '0' & x"14";	-- STA @VALOR_ATUAL0 R1 
tmp(96) := x"6" & "00" & '0' & x"8A";	-- JMP .FINAL 
tmp(97) := x"1" & "00" & '0' & x"21";	-- LDA R0 @FLAG_5 HEX1:
tmp(98) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(99) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(100) := x"5" & "01" & '1' & x"21";	-- STA @HEX1 R1 
tmp(101) := x"5" & "01" & '0' & x"15";	-- STA @VALOR_ATUAL1 R1 
tmp(102) := x"6" & "00" & '0' & x"8A";	-- JMP .FINAL 
tmp(103) := x"1" & "00" & '0' & x"20";	-- LDA R0 @FLAG_9 HEX2:
tmp(104) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(105) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(106) := x"5" & "01" & '1' & x"22";	-- STA @HEX2 R1 
tmp(107) := x"5" & "01" & '0' & x"16";	-- STA @VALOR_ATUAL2 R1 
tmp(108) := x"6" & "00" & '0' & x"8A";	-- JMP .FINAL 
tmp(109) := x"1" & "00" & '0' & x"21";	-- LDA R0 @FLAG_5 HEX3:
tmp(110) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(111) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(112) := x"5" & "01" & '1' & x"23";	-- STA @HEX3 R1 
tmp(113) := x"5" & "01" & '0' & x"17";	-- STA @VALOR_ATUAL3 R1 
tmp(114) := x"6" & "00" & '0' & x"8A";	-- JMP .FINAL 
tmp(115) := x"1" & "00" & '0' & x"1F";	-- LDA R0 @FLAG_12_OU_24 HEX4:
tmp(116) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(117) := x"7" & "00" & '0' & x"79";	-- JEQ .12_VERIFICA
tmp(118) := x"1" & "00" & '0' & x"24";	-- LDA R0 @FLAG_4
tmp(119) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(120) := x"7" & "00" & '0' & x"7C";	-- JEQ .CARREGA_HEX4
tmp(121) := x"1" & "00" & '0' & x"23";	-- LDA R0 @FLAG_2 12_VERIFICA:
tmp(122) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(123) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(124) := x"5" & "01" & '1' & x"24";	-- STA @HEX4 R1  CARREGA_HEX4:
tmp(125) := x"5" & "01" & '0' & x"18";	-- STA @VALOR_ATUAL4 R1 
tmp(126) := x"6" & "00" & '0' & x"8A";	-- JMP .FINAL 
tmp(127) := x"1" & "00" & '0' & x"1F";	-- LDA R0 @FLAG_12_OU_24 HEX5:
tmp(128) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(129) := x"7" & "00" & '0' & x"85";	-- JEQ .12_VERIFICA_5
tmp(130) := x"1" & "00" & '0' & x"23";	-- LDA R0 @FLAG_2
tmp(131) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(132) := x"7" & "00" & '0' & x"88";	-- JEQ .CARREGA_HEX5
tmp(133) := x"1" & "00" & '0' & x"22";	-- LDA R0 @FLAG_1 12_VERIFICA_5:
tmp(134) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(135) := x"7" & "00" & '0' & x"8A";	-- JEQ .FINAL
tmp(136) := x"5" & "01" & '1' & x"25";	-- STA @HEX5 R1  CARREGA_HEX5:
tmp(137) := x"5" & "01" & '0' & x"19";	-- STA @VALOR_ATUAL5 R1 
tmp(138) := x"A" & "00" & '0' & x"00";	-- RET  FINAL:
tmp(139) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL atualiza_atual:
tmp(140) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO
tmp(141) := x"7" & "00" & '0' & x"91";	-- JEQ .VOLTA_UM
tmp(142) := x"2" & "00" & '0' & x"01";	-- SOMA R0 @UM
tmp(143) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(144) := x"A" & "00" & '0' & x"00";	-- RET
tmp(145) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0 VOLTA_UM:
tmp(146) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(147) := x"A" & "00" & '0' & x"00";	-- RET
tmp(148) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0  limpa_but:
tmp(149) := x"5" & "00" & '1' & x"FE";	-- STA @LIMPA_KEY1 R0
tmp(150) := x"A" & "00" & '0' & x"00";	-- RET
tmp(151) := x"9" & "00" & '0' & x"8B";	-- JSR .atualiza_atual troca_hex:
tmp(152) := x"9" & "00" & '0' & x"9C";	-- JSR .ajusta_leds
tmp(153) := x"9" & "00" & '0' & x"A6";	-- JSR .muda_led
tmp(154) := x"9" & "00" & '0' & x"94";	-- JSR .limpa_but
tmp(155) := x"A" & "00" & '0' & x"00";	-- RET
tmp(156) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED ajusta_leds:
tmp(157) := x"8" & "00" & '0' & x"09";	-- CEQ R0 @LIMITE_LED
tmp(158) := x"7" & "00" & '0' & x"A3";	-- JEQ .VOLTA_LED
tmp(159) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
tmp(160) := x"2" & "00" & '0' & x"08";	-- SOMA R0 @AUX_LED
tmp(161) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(162) := x"A" & "00" & '0' & x"00";	-- RET
tmp(163) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 VOLTA_LED:
tmp(164) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(165) := x"A" & "00" & '0' & x"00";	-- RET
tmp(166) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED muda_led:
tmp(167) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
tmp(168) := x"A" & "00" & '0' & x"00";	-- RET
tmp(169) := x"4" & "11" & '0' & x"01";	-- LDI R3 $1 VALIDA_ENTRADA:
tmp(170) := x"1" & "01" & '0' & x"1F";	-- LDA R1 @FLAG_12_OU_24
tmp(171) := x"8" & "01" & '0' & x"01";	-- CEQ R1 @UM 
tmp(172) := x"7" & "00" & '0' & x"BA";	-- JEQ .12H            	# Salta se estiver no modo 12HORAS se não continua para 24horas
tmp(173) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(174) := x"C" & "01" & '0' & x"03";	-- CLT R1 @TRES
tmp(175) := x"D" & "00" & '0' & x"D0";	-- JLT .MENOR_TRES     	# modo 24 horas, verifica se o valor é menor que 3 (para validar a hora mais significativa)
tmp(176) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0           
tmp(177) := x"5" & "00" & '0' & x"23";	-- STA @FLAG_2 R0      	# desativa a escrita se a hora não é permitida
tmp(178) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(179) := x"C" & "01" & '0' & x"05";	-- CLT R1 @CINCO
tmp(180) := x"D" & "00" & '0' & x"B8";	-- JLT .MENOR_QUATRO   	# modo 24 horas, verifica se o valor é menor que 3 (para validar a segunda hora mais significativa)
tmp(181) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(182) := x"5" & "00" & '0' & x"24";	-- STA @FLAG_4 R0      	# desativa a escrita se a hora não é permitida
tmp(183) := x"6" & "00" & '0' & x"C4";	-- JMP .COMUM
tmp(184) := x"5" & "11" & '0' & x"24";	-- STA @FLAG_4 R3  MENOR_QUATRO:
tmp(185) := x"6" & "00" & '0' & x"D1";	-- JMP .MENOR_SEIS
tmp(186) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7 12H:            # Faz a verificação no caso de 12H
tmp(187) := x"C" & "01" & '0' & x"02";	-- CLT R1 @DOIS
tmp(188) := x"D" & "00" & '0' & x"CF";	-- JLT .MENOR_DOIS         	# verifica se é menor que 2
tmp(189) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(190) := x"5" & "00" & '0' & x"22";	-- STA @FLAG_1 R0
tmp(191) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(192) := x"C" & "01" & '0' & x"03";	-- CLT R1 @TRES
tmp(193) := x"D" & "00" & '0' & x"D0";	-- JLT .MENOR_TRES         	# verifica se é menor que 3
tmp(194) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(195) := x"5" & "00" & '0' & x"23";	-- STA @FLAG_2 R0
tmp(196) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7 COMUM:
tmp(197) := x"C" & "01" & '0' & x"25";	-- CLT R1 @SEIS
tmp(198) := x"D" & "00" & '0' & x"D1";	-- JLT .MENOR_SEIS         	# verifica se é menor que 6
tmp(199) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(200) := x"5" & "00" & '0' & x"21";	-- STA @FLAG_5 R0
tmp(201) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(202) := x"C" & "01" & '0' & x"26";	-- CLT R1 @DEZ
tmp(203) := x"D" & "00" & '0' & x"D2";	-- JLT .MENOR_DEZ         	# verifica se é menor que 6
tmp(204) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(205) := x"5" & "00" & '0' & x"20";	-- STA @FLAG_9 R0
tmp(206) := x"6" & "00" & '0' & x"D5";	-- JMP .FINAL_FUNC
tmp(207) := x"5" & "11" & '0' & x"22";	-- STA @FLAG_1 R3      	# ATIVA SÓ QUANDO MENOR QUE 2 MENOR_DOIS: 
tmp(208) := x"5" & "11" & '0' & x"23";	-- STA @FLAG_2 R3      	# ATIVA QUANDO FOR MENOR QUE 3 MENOR_TRES:
tmp(209) := x"5" & "11" & '0' & x"21";	-- STA @FLAG_5 R3   MENOR_SEIS:
tmp(210) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 MENOR_DEZ:
tmp(211) := x"5" & "11" & '0' & x"20";	-- STA @FLAG_9 R3  
tmp(212) := x"6" & "00" & '0' & x"D5";	-- JMP .FINAL_FUNC
tmp(213) := x"A" & "00" & '0' & x"00";	-- RET FINAL_FUNC:
tmp(214) := x"1" & "00" & '1' & x"42";	-- LDA R0 @SW9 verifica_SW9:
tmp(215) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(216) := x"7" & "00" & '0' & x"DD";	-- JEQ .SW_ATIVO
tmp(217) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0
tmp(218) := x"5" & "00" & '0' & x"1F";	-- STA @FLAG_12_OU_24 R0 
tmp(219) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
tmp(220) := x"A" & "00" & '0' & x"00";	-- RET
tmp(221) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 SW_ATIVO:
tmp(222) := x"5" & "00" & '0' & x"1F";	-- STA @FLAG_12_OU_24 R0 
tmp(223) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
tmp(224) := x"A" & "00" & '0' & x"00";	-- RET





		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  /*
		  tmp(0) := x"9" & "00" & '0' & x"06";	-- JSR .setup          	# Chama a função setup, para limpar os endereços
tmp(1) := x"6" & "00" & '0' & x"03";	-- JMP .LOOP_HEX
tmp(2) := x"9" & "00" & '0' & x"6B";	-- JSR .troca_hex PASSA_HEX:          # começo do LOOP para HEX0
tmp(3) := x"9" & "00" & '0' & x"2E";	-- JSR .logica_seleciona LOOP_HEX:
tmp(4) := x"7" & "00" & '0' & x"02";	-- JEQ .PASSA_HEX       	# SE botão for pressionado realiza o salto, se não continua
tmp(5) := x"6" & "00" & '0' & x"03";	-- JMP .LOOP_HEX      	# se botão não pressionado, volta para o LOOP de HEX0
tmp(6) := x"0" & "00" & '0' & x"00";	-- NOP setup:              # Definindo a função setup, roda sempre no início limpando os valores
tmp(7) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0           
tmp(8) := x"5" & "00" & '0' & x"00";	-- STA @ZERO R0
tmp(9) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(10) := x"5" & "00" & '1' & x"20";	-- STA @HEX0 R0
tmp(11) := x"5" & "00" & '1' & x"21";	-- STA @HEX1 R0
tmp(12) := x"5" & "00" & '1' & x"22";	-- STA @HEX2 R0
tmp(13) := x"5" & "00" & '1' & x"23";	-- STA @HEX3 R0
tmp(14) := x"5" & "00" & '1' & x"24";	-- STA @HEX4 R0
tmp(15) := x"5" & "00" & '1' & x"25";	-- STA @HEX5 R0
tmp(16) := x"5" & "00" & '1' & x"01";	-- STA @LED8 R0
tmp(17) := x"5" & "00" & '1' & x"02";	-- STA @LED9 R0
tmp(18) := x"5" & "00" & '0' & x"0A";	-- STA @DESPERTADOR_HEX0 R0
tmp(19) := x"5" & "00" & '0' & x"0B";	-- STA @DESPERTADOR_HEX1 R0
tmp(20) := x"5" & "00" & '0' & x"0C";	-- STA @DESPERTADOR_HEX2 R0
tmp(21) := x"5" & "00" & '0' & x"0D";	-- STA @DESPERTADOR_HEX3 R0
tmp(22) := x"5" & "00" & '0' & x"0E";	-- STA @DESPERTADOR_HEX4 R0
tmp(23) := x"5" & "00" & '0' & x"0F";	-- STA @DESPERTADOR_HEX5 R0
tmp(24) := x"5" & "00" & '0' & x"14";	-- STA @VALOR_ATUAL0 R0
tmp(25) := x"5" & "00" & '0' & x"15";	-- STA @VALOR_ATUAL1 R0
tmp(26) := x"5" & "00" & '0' & x"16";	-- STA @VALOR_ATUAL2 R0
tmp(27) := x"5" & "00" & '0' & x"17";	-- STA @VALOR_ATUAL3 R0
tmp(28) := x"5" & "00" & '0' & x"18";	-- STA @VALOR_ATUAL4 R0
tmp(29) := x"5" & "00" & '0' & x"19";	-- STA @VALOR_ATUAL5 R0
tmp(30) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1
tmp(31) := x"5" & "00" & '0' & x"01";	-- STA @UM R0
tmp(32) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
tmp(33) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(34) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0
tmp(35) := x"4" & "00" & '0' & x"02";	-- LDI R0 $2
tmp(36) := x"5" & "00" & '0' & x"02";	-- STA @DOIS R0
tmp(37) := x"4" & "00" & '0' & x"03";	-- LDI R0 $3
tmp(38) := x"5" & "00" & '0' & x"03";	-- STA @TRES R0
tmp(39) := x"4" & "00" & '0' & x"04";	-- LDI R0 $4
tmp(40) := x"5" & "00" & '0' & x"04";	-- STA @QUATRO R0
tmp(41) := x"4" & "00" & '0' & x"05";	-- LDI R0 $5
tmp(42) := x"5" & "00" & '0' & x"05";	-- STA @CINCO R0
tmp(43) := x"4" & "00" & '0' & x"20";	-- LDI R0 $32
tmp(44) := x"5" & "00" & '0' & x"09";	-- STA @LIMITE_LED R0
tmp(45) := x"A" & "00" & '0' & x"00";	-- RET
tmp(46) := x"9" & "00" & '0' & x"35";	-- JSR .escreveSW      	# Função que realiza a leitura e faz verificação em qual HEX está escrevendo e escreve no correto logica_seleciona:
tmp(47) := x"9" & "00" & '0' & x"31";	-- JSR .verifica_key0  	# Função que faz a verificação se o botão KEY0 foi pressionado, se sim flag EQUAL = 1
tmp(48) := x"A" & "00" & '0' & x"00";	-- RET
tmp(49) := x"0" & "00" & '0' & x"00";	-- NOP verifica_key0:      # Definindo a função para verificar KEY0
tmp(50) := x"1" & "10" & '1' & x"60";	-- LDA R2 @KEY0
tmp(51) := x"8" & "10" & '0' & x"01";	-- CEQ R2 @UM
tmp(52) := x"A" & "00" & '0' & x"00";	-- RET
tmp(53) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7 escreveSW:
tmp(54) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(55) := x"8" & "00" & '0' & x"00";	-- CEQ R0 @ZERO
tmp(56) := x"7" & "00" & '0' & x"48";	-- JEQ .HEX0 
tmp(57) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(58) := x"8" & "00" & '0' & x"01";	-- CEQ R0 @UM
tmp(59) := x"7" & "00" & '0' & x"4B";	-- JEQ .HEX1
tmp(60) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(61) := x"8" & "00" & '0' & x"02";	-- CEQ R0 @DOIS
tmp(62) := x"7" & "00" & '0' & x"4E";	-- JEQ .HEX2 
tmp(63) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(64) := x"8" & "00" & '0' & x"03";	-- CEQ R0 @TRES
tmp(65) := x"7" & "00" & '0' & x"51";	-- JEQ .HEX3
tmp(66) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(67) := x"8" & "00" & '0' & x"04";	-- CEQ R0 @QUATRO
tmp(68) := x"7" & "00" & '0' & x"54";	-- JEQ .HEX4
tmp(69) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL
tmp(70) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO
tmp(71) := x"7" & "00" & '0' & x"57";	-- JEQ .HEX5
tmp(72) := x"5" & "01" & '1' & x"20";	-- STA @HEX0 R1 HEX0:
tmp(73) := x"5" & "01" & '0' & x"14";	-- STA @VALOR_ATUAL0 R1 
tmp(74) := x"6" & "00" & '0' & x"59";	-- JMP .FINAL 
tmp(75) := x"5" & "01" & '1' & x"21";	-- STA @HEX1 R1  HEX1:
tmp(76) := x"5" & "01" & '0' & x"15";	-- STA @VALOR_ATUAL1 R1 
tmp(77) := x"6" & "00" & '0' & x"59";	-- JMP .FINAL 
tmp(78) := x"5" & "01" & '1' & x"22";	-- STA @HEX2 R1  HEX2:
tmp(79) := x"5" & "01" & '0' & x"16";	-- STA @VALOR_ATUAL2 R1 
tmp(80) := x"6" & "00" & '0' & x"59";	-- JMP .FINAL 
tmp(81) := x"5" & "01" & '1' & x"23";	-- STA @HEX3 R1  HEX3:
tmp(82) := x"5" & "01" & '0' & x"17";	-- STA @VALOR_ATUAL3 R1 
tmp(83) := x"6" & "00" & '0' & x"59";	-- JMP .FINAL 
tmp(84) := x"5" & "01" & '1' & x"24";	-- STA @HEX4 R1  HEX4:
tmp(85) := x"5" & "01" & '0' & x"18";	-- STA @VALOR_ATUAL4 R1 
tmp(86) := x"6" & "00" & '0' & x"59";	-- JMP .FINAL 
tmp(87) := x"5" & "01" & '1' & x"25";	-- STA @HEX5 R1  HEX5:
tmp(88) := x"5" & "01" & '0' & x"19";	-- STA @VALOR_ATUAL5 R1 
tmp(89) := x"A" & "00" & '0' & x"00";	-- RET  FINAL:
tmp(90) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL atualiza_atual:
tmp(91) := x"8" & "00" & '0' & x"05";	-- CEQ R0 @CINCO
tmp(92) := x"7" & "00" & '0' & x"60";	-- JEQ .VOLTA_UM
tmp(93) := x"2" & "00" & '0' & x"01";	-- SOMA R0 @UM
tmp(94) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(95) := x"A" & "00" & '0' & x"00";	-- RET
tmp(96) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0 VOLTA_UM:
tmp(97) := x"5" & "00" & '0' & x"06";	-- STA @ATUAL R0
tmp(98) := x"A" & "00" & '0' & x"00";	-- RET
tmp(99) := x"1" & "00" & '0' & x"06";	-- LDA R0 @ATUAL COMP_ATUAL:
tmp(100) := x"8" & "00" & '0' & x"07";	-- CEQ R0 @CONT
tmp(101) := x"9" & "00" & '0' & x"73";	-- JSR .atualiza_cont
tmp(102) := x"1" & "01" & '1' & x"40";	-- LDA R1 @SW0a7
tmp(103) := x"A" & "00" & '0' & x"00";	-- RET
tmp(104) := x"5" & "00" & '1' & x"FF";	-- STA @LIMPA_KEY0 R0  limpa_but:
tmp(105) := x"5" & "00" & '1' & x"FE";	-- STA @LIMPA_KEY1 R0
tmp(106) := x"A" & "00" & '0' & x"00";	-- RET
tmp(107) := x"9" & "00" & '0' & x"5A";	-- JSR .atualiza_atual troca_hex:
tmp(108) := x"9" & "00" & '0' & x"77";	-- JSR .ajusta_leds
tmp(109) := x"9" & "00" & '0' & x"81";	-- JSR .muda_led
tmp(110) := x"9" & "00" & '0' & x"68";	-- JSR .limpa_but
tmp(111) := x"A" & "00" & '0' & x"00";	-- RET
tmp(112) := x"4" & "00" & '0' & x"00";	-- LDI R0 $0 def_cont:
tmp(113) := x"5" & "00" & '0' & x"07";	-- STA @CONT R0
tmp(114) := x"A" & "00" & '0' & x"00";	-- RET
tmp(115) := x"1" & "00" & '0' & x"01";	-- LDA R0 @UM atualiza_cont:
tmp(116) := x"2" & "00" & '0' & x"01";	-- SOMA R0 @UM
tmp(117) := x"5" & "00" & '0' & x"07";	-- STA @CONT R0
tmp(118) := x"A" & "00" & '0' & x"00";	-- RET
tmp(119) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED ajusta_leds:
tmp(120) := x"8" & "00" & '0' & x"09";	-- CEQ R0 @LIMITE_LED
tmp(121) := x"7" & "00" & '0' & x"7E";	-- JEQ .VOLTA_LED
tmp(122) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED
tmp(123) := x"2" & "00" & '0' & x"08";	-- SOMA R0 @AUX_LED
tmp(124) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(125) := x"A" & "00" & '0' & x"00";	-- RET
tmp(126) := x"4" & "00" & '0' & x"01";	-- LDI R0 $1 VOLTA_LED:
tmp(127) := x"5" & "00" & '0' & x"08";	-- STA @AUX_LED R0
tmp(128) := x"A" & "00" & '0' & x"00";	-- RET
tmp(129) := x"1" & "00" & '0' & x"08";	-- LDA R0 @AUX_LED muda_led:
tmp(130) := x"5" & "00" & '1' & x"00";	-- STA @LED0A7 R0
tmp(131) := x"A" & "00" & '0' & x"00";	-- RET
*/











        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;