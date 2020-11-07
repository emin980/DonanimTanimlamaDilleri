library IEEE;
use IEEE.std_logic_1164.all;
entity paralelseriaktarma is
Port(s,y:in std_logic;
A:in std_logic_vector(7 downto 0);
F:out std_logic);
end paralelseriaktarma;

architecture behv of paralelseriaktarma is
Signal Y8:std_logic_vector(7 downto 0);
Begin

Process(s,y) Begin
If(y='1') then
Y8<=A;
Elsif(s'event and s='1') then
  f<=Y8(7);
  y8<=y8(6 downto 0)&'0';
End If;
end process;
end behv;