		library ieee;
use ieee.std_logic_1164.all;

entity decoderInstrucao is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(18 downto 0)
  );
end entity;

architecture comportamento of decoderInstrucao is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant AND_OP  : std_logic_vector(3 downto 0) := "1011";
  constant CLT  : std_logic_vector(3 downto 0) := "1100";
  constant JLT  : std_logic_vector(3 downto 0) := "1101";
  
    -- Aliases para os bits de saída 
  alias Operacao_ULA_end is saida(18);
  alias SelMUX_end is saida(17);
  alias leitura_end is saida(16);
  alias escrita_end is saida(15);
  alias habEscritaRetorno is saida(14);
  alias JLT_bit is saida(13);
  alias JMP_bit is saida(12);
  alias RET_bit is saida(11);
  alias JSR_bit is saida(10);
  alias JEQ_bit is saida(9);
  alias SelMUX_bit is saida(8);
  alias Habilita_A_bit is saida(7);
  alias Operacao_ULA is saida(6 downto 4);
  alias habFlagClt_bit is saida(3);
  alias HabFlagIgual_bit is saida(2);
  alias HabLeituraMEM_bit is saida(1);
  alias HabEscritaMEM_bit is saida(0);

  begin  
saida <= "0000000000000000000" when opcode = NOP else
         "0000000000010100010" when opcode = LDA else
         "0000000000010010010" when opcode = SOMA else
         "0000000000010000010" when opcode = SUB else
			"0000000000110100000" when opcode = LDI else
			"0000000000000100001" when opcode = STA else
			"0000001000000000000" when opcode = JMP else
			"0000000001000000000" when opcode = JEQ else
			"0000000000000000110" when opcode = CEQ else
			"1001100010000000000" when opcode = JSR else
			"0110100100000000000" when opcode = RET else
			"0000000000010110010" when opcode = AND_OP else
			"0000000000000001010" when opcode = CLT else
			"0000010000000000000" when opcode = JLT else
         "0000000000000000000";  -- NOP para os opcodes Indefinidos
end architecture;

