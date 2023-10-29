library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop is
    port (DIN : in std_logic;
       DOUT : out std_logic;
       ENABLE : in std_logic;
       CLK,RST : in std_logic
        );
end entity;

architecture comportamento of FlipFlop is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= '0';    -- Código reconfigurável.
        else
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
    end process;
end architecture;