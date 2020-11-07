library IEEE;
use IEEE.std_logic_1164.all;
entity eKarsilastirIfElse is
Port(X,Y:in std_logic_vector(7 downto 0);
e,b,k:out std_logic);
end eKarsilastirIfElse;

architecture behv of eKarsilastirIfElse is
Begin

Process(X,Y)

Begin
If(X<Y) then
k<='1';
e<='0';
b<='0';
elsif(X=Y) then
k<='0';
e<='1';
b<='0';
else
k<='0';
e<='0';
b<='1';

end If;
end Process;
end Behv;
