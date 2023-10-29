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












        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;