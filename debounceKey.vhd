library ieee;
use ieee.std_logic_1164.all;

entity debounceKey	 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
				larguraEnderecos : natural := 9
  );
  port   (
    --entrada do edgeDetector
	 CLK : in std_logic;
	 entrada: in std_logic;
	 limpa_key: in std_logic;
	 habilita_key: in std_logic;

	 Saida: out std_logic_vector(larguraDados-1 downto 0)
);
end entity;


architecture arquitetura of debounceKey is

	signal saida_flip_flop,clock_k: std_logic;
	signal saida_buffer: std_logic_vector(larguraDados-1 downto 0);


begin


	detectorkey: work.edgeDetector(bordaSubida)
			 port map (clk => CLK, entrada => (not entrada), saida => clock_k);

	FlipFlopKey : entity work.flipFlop 
					port map (	DIN => '1',
									DOUT => saida_flip_flop,
									ENABLE => '1',
									CLK => clock_k,
									RST => limpa_key);
								
	BufferKEY:  entity work.buffer_3_state_8portas 
			  port map( entrada => "0000000" & saida_flip_flop,
							habilita =>  habilita_key,
							saida => saida_buffer);
					  
					  
Saida <= saida_buffer;					  
end architecture;