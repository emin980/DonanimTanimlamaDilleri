Library IEEE;
Use IEEE.std_logic_1164.all;
Entity withselect is
Port(a,b:in std_logic;
s:in std_logic;
f:out std_logic);
End withselect;

Architecture Behv of withselect is
Begin
With s Select 
f<=a when '0',
   b when '1',	
   'Z' when others;
end Behv;		