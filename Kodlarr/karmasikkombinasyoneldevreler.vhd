Library IEEE;
Use IEEE.std_logic_1164.all;
Entity karmasikKombinasyonel is
Port(a,b,c,d:in std_logic;
f:out std_logic);
End karmasikKombinasyonel;

Architecture Behv of karmasikKombinasyonel is
signal kablo1,kablo2:std_logic;
Begin 
kablo1<=a or b;
kablo2<=c nor d;
f<=kablo1 or kablo2;
End Behv;
