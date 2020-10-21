Library IEEE;
use IEEE.std_logic_1164.all;

Entity eslikbitikodlama is
Port(a:in std_logic_vector(7 downto 0);
T_eslik,C_eslik:out std_logic);

end eslikbitikodlama ;

architecture behv of eslikbitikodlama is
signal kablo3:std_logic;
Begin
kablo3<=a(0) xor a(1) xor a(2) xor a(3) xor a(4) xor a(5) xor a(6) xor a(7);
C_eslik<='0' when kablo3='0' else '1';
T_eslik<='1' when kablo3='1' else '0';

end behv; 