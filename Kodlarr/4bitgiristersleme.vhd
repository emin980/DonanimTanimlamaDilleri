Library IEEE;
Use IEEE.std_logic_1164.all;
Entity fourbittersle is
Port(A: in std_logic_vector(3 downto 0);
C: out std_logic_vector(3 downto 0));
End fourbittersle;

Architecture Behv of fourbittersle is
Begin
C<=not(A);
End Behv;