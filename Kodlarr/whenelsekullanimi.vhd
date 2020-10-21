Library IEEE;
use IEEE.std_logic_1164.all;

Entity whenelsekullanimi is
Port(a,b,s: in std_logic;
f:out std_logic);
end whenelsekullanimi;

architecture behv of whenelsekullanimi is
Begin
f<=a when s='0' else
   b when s='1' else
   'Z';
end Behv;