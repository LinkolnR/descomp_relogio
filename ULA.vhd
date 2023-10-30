library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic ( 	larguraDados : natural := 8;
					larguraSelecao: natural := 3);
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR (larguraSelecao-1 downto 0);
      Saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		saida_clt: out std_logic;
		saida_flag : out std_logic
    );
end entity;

architecture comportamento of ULA is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal pass:    	 STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal op_and: std_logic_vector((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		pass      <= STD_LOGIC_VECTOR(unsigned(entradaB));
		op_and    <= entradaA and entradaB;
		
      Saida <= soma when (seletor = "001")else
		subtracao when (seletor = "000") else
		pass when (seletor = "010") else
		op_and when (seletor = "011") else
		"00000000";
		
		saida_flag <= not (Saida(7) or Saida(6) or Saida(5) or Saida(4) or Saida(3) or Saida(2) or Saida(1) or Saida(0));
		saida_clt <= '1' when (Saida(7) = '1') else '0';
end architecture;