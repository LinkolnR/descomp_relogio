library ieee;
use ieee.std_logic_1164.all;

entity LogicaDesvio1 is
  port ( jmp : in std_logic;
			ret: in std_logic;	
			jsr : in std_logic;
			jeq: in std_logic;
			flag: in std_logic;
			jlt: in std_logic;
			flag_lt: in std_logic;
			saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of LogicaDesvio1 is

  begin
saida(0) <= jmp or (jeq and flag) or jsr or (jlt and flag_lt);  -- NOP para os opcodes Indefinidos
saida(1) <= ret;	
end architecture;