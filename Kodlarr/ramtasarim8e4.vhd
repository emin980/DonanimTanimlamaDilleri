
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
Entity eRAM is 
generic(en:integer:=4;
boy:integer:=8;
adrs:integer:=3);
port(s:in std_logic;
o_y:in std_logic;
Adr:in std_logic_vector(adrs-1 downto 0);
A:in std_logic_vector(en-1 downto 0);
F:out std_logic_vector(en-1 downto 0));
end eRAM;

Architecture Behv of eRAM is
--Dizi kullanarak tip tanimlamasi
TYPE RAMdizi is array (0 to boy-1) of std_logic_vector(en-1 downto 0);

signal Rambellek:RAMdizi;

Begin
bOku:process(s,o_y)
begin
if (s'event and s='1') then
if o_y='0' then
f<=Rambellek(conv_integer(adrs));
end if;
end if;
end process;

bYaz:process(s,o_y)
begin
if(s'event and s='1') then
if o_y='1' then
Rambellek(conv_integer(adrs)) <=A;
end if;
end if;
end process;
end behv;


