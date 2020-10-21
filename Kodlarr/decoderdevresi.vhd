Library IEEE;
use IEEE.std_logic_1164.all;

Entity decoderdevresi is
Port(a:in std_logic_vector(1 downto 0);
f:out std_logic_vector(3 downto 0));
end decoderdevresi;

architecture behv of decoderdevresi is
begin
f<="0001" when a="00" else
"0010" when a="01" else
"0100" when a="10" else
"1000" when a="11" else
"ZZ";

end behv;

