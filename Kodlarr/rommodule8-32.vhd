

--conv_integer->Std_logic_vector'u tam sayiya donusturmek icin
--ornegin->conv_integer(Adr)  "1001"->9

--integer to bitstring(!)
--bitstring to integer(!)

--Tam sayiyi vector'e donusturmek icin->Vektor<=conv_std_logic_vector(25,5) -> 25'i 5 bitle ifade et ->11001

--ieee.numeric_std.all paketi icinde de tamsayi_deg<=to_integer(signed(vector))
--                                      tamsayi_deg<=to_integer(unsigned(vector))

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 Entity eROM is 
port(
s:in std_logic;
r:in std_logic;
oku:in std_logic;
Adr:in std_logic_vector(4 downto 0);
F:out std_logic_vector(7 downto 0));
end eROM;

Architecture Behv of eROM is

TYPE ROMdizi is array(0 to 31) of std_logic_vector(7 downto 0); --32 hucreli her bir hucresi 8 bit olan bir dizi tanimlar

Constant ROMbellek:ROMdizi:=(
0=>"01000001", --A
1=>"01000010", --B	
2=>"01000011", --C
3=>"01000100", --D
4=>"01000101", --E
5=>"01000110", --F
6=>"01000111", --G
7=>"01001000", --H
8=>"01001001", --I
9=>"01001010", --J
10=>"01001011", --K
OTHERS=>"11111111");
Begin
Process(s,r,oku)
Begin
If(r='1') then
f<="ZZZZZZZZ";
ElsIf(s'event and s='1') then
if(oku='1') then
f<=ROMbellek(conv_integer(Adr));
else 
f<="ZZZZZZZZ";
end if;
end if;
end Process;
end behv;