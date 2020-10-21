Library IEEE;
Use IEEE.std_logic_1164.all;
Entity eDegil is
Port(A:in std_logic;
C:out std_logic);
End eDegil;

Architecture Behv of eDegil is
Begin
c<=not(A);
End Behv;