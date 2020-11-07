library IEEE;
use IEEE.std_logic_1164.all;
entity eSolaKaydir is
Port(s,y:in std_logic;
A:in std_logic_vector(7 downto 0);
F:out std_logic_vector(7 downto 0));
end eSolaKaydir;

architecture behv of eSolaKaydir is
Signal Y8:std_logic_vector(7 downto 0):="ZZZZZZZZ";
Begin
f<=Y8; --es zamanli atama

Process(s,y) Begin
If(y='1') then
Y8<=A;
Elsif(s'event and s='1') then
  Y8<=Y8(6 downto 0)&'0';
End If;
end pr
end behv;