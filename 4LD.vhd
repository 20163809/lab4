library ieee;
use ieee.std_logic_1164.all;

entity pgr4 is
port (i_bit : in std_logic_vector(2 downto 0);
	  o_bit : out std_logic_vector(2 downto 0));
end pgr4;

architecture rtl of pgr4 is
begin
process (i_bit)
begin

	--PIRMAS BUDAS
	if(i_bit = "000") then o_bit <="011";
	if(i_bit = "010") then o_bit <="100";
	if(i_bit = "100") then o_bit <="101";
	if(i_bit = "110") then o_bit <="110";
	
	
	--ANTRAS BUDAS
	if(i_bit = "000") then o_bit_if <="011";
	elsif (i_bit = "010") then o_bit <= "100";
	elsif (i_bit = "100") then o_bit <= "101";
	elsif (i_bit = "110") then o_bit <= "110";
	else o_bit_if <= "000";
	end if;
	
	--TRECIAS BUDAS
	case (i_bit) is
	when "000" => o_bit <= "011";
	when "010" => o_bit <= "100";
	when "100" => o_bit <= "101";
	when "110" => o_bit <= "110";
	when others => o_bit <= "000";
	end case;
	
end process;
end rtl;