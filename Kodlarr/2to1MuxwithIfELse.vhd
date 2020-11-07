library IEEE;
use IEEE.std_logic_1164.all;
entity a2to1MuxwithIFelse is
Port(A1,A2,s:in std_logic;
F:out std_logic);
end a2to1MuxwithIFelse;

architecture behv of a2to1MuxwithIFelse is
Begin
Process(A1,A2,s)
Begin 
If s='0' then
F<=A1;
ElsIf s='1' then
F<=A2;
else
f<='Z';
end If;
end Process;
end behv;