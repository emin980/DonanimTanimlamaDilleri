Library IEEE;
use IEEE.std_logic_1164.all;

Entity encoderdevresi is
Port(a:in std_logic_vector(3 downto 1);
f:out std_logic_vector(1 downto 0));
end encoderdevresi;

architecture behv of encoderdevresi is
begin
f<="00" when a="0001" else
"01" when a="0010" else
"10" when a="0100" else
"11" when a="1000" else
"ZZ";

end behv;

