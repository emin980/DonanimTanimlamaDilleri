--Verilen iki degeri karsilastirip sonuclari bastiran devre
Library IEEE;
use IEEE.std_logic_1164.all;

Entity karsilastirmadevresi is
Generic(n:natural:=4);
Port(A,B:in std_logic_vector(n-1 downto 0);
x,y,z:out std_logic_vector);
end karsilastirmadevresi;

architecture behv of karsilastirmadevresi is
begin
x<="1" when A=B else "0";
y<="1" when A>B else "0";
z<="1" when A<B else "0";
end behv;