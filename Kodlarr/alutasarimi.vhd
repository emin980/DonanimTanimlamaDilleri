--2 aritmetik 2 mantik birimi tasarlayacagiz.
Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

Entity alutasarimi is
Generic(n:natural:=4);
Port(A,B: in std_logic_vector(n-1 downto 0);
kmt:in std_logic_vector(1 downto 0);
F:out std_logic_vector(1 downto 0));
end alutasarimi;

architecture behv of alutasarimi is
begin
With kmt Select 
F<=A+B when "00",
A-B when "01",
A and B when "10",
A or B when "11",
"ZZ" when others;
end behv;