library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; --Yeni Kutuphane
use IEEE.std_logic_arith.all; --Yeni Kutuphane
entity esayici is
Port(s,r:in std_logic;
f: out std_logic_vector(7 downto 0));
end esayici;

architecture behv of esayici is
Begin
pSayici:Process(s)
Variable Sayac:
	std_logic_vector(7 downto 0):="00000000";

begin
If(s'event and s='1') then
If r='1' Then
Sayac:="00000000";
Else 
Sayac:=Sayac+1;
f<=sayac;
end if;
end if;
end process;
end behv;