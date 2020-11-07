library IEEE;
use IEEE.std_logic_1164.all;
entity eSolaCevir is
Port(s,y:in std_logic;
A:in std_logic_vector(7 downto 0);
F:out std_logic_vector(7 downto 0));
end eSolaCevir;

architecture behv of eSolaCevir is
Signal Y8:std_logic_vector(7 downto 0):="ZZZZZZZZ";
Begin
F<=Y8; --es zamanli atama

Process(s,y) Begin
If(y='1') then
Y8<=A;
Elsif(s'event and s='1') then
  Y8<=Y8(6 downto 0)&Y8(7);
End If;
end process;
end behv;