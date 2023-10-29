library ieee;
use ieee.std_logic_1164.all;

entity displayHEX	 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 4;
				larguraEnderecos : natural := 9
  );
  port   (
    CLK : in std_logic;
	 --entrada do registrador
	 Data_IN: in std_logic_vector(larguraDados-1 downto 0);
	 ENABLE: in std_logic;
	 --saída da displayHEX
	 Entrada_HEX: out std_logic_vector(6 downto 0)
);
end entity;


architecture arquitetura of displayHEX is

	signal entrada_decoder: std_logic_vector(larguraDados-1 downto 0);
	signal entrada_displayHEX: std_logic_vector(6 downto 0);
	


begin


REG_HEX0 : entity work.registradorGenerico generic map (larguraDados => 4)
          port map (	DIN => Data_IN,
							DOUT => entrada_decoder,
							ENABLE => ENABLE,
							CLK => CLK, RST => '0');
			 
			 
DECODER_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_decoder,
                 saida7seg => entrada_displayHEX);
					  
					  
Entrada_HEX <= entrada_displayHEX;					  
end architecture;