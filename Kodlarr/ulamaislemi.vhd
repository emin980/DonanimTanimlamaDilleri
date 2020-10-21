--n bitlik bir sayinin sagina ve soluna istenen sayida bit ekleme islemine denir.
Library IEEE;
use IEEE.std_logic_1164.all;

Entity ulamaislemi is
Generic(n:natural:=4);
Port(A:in std_logic_vector(n-1 downto 0);
B:in std_logic_vector(n-3 downto 0);
f1,f2,f3:out std_logic_vector);
end ulamaislemi;

architecture behv of ulamaislemi is
begin
f1<="0" & A;
f2<=A & "0";
f3<=A & b;
end behv;