library ieee;
use ieee.std_logic_1164.all;

entity ckt_1 is port (
 i_sel : in std_logic;
 i_bit0 : in std_logic;
 i_bit1 : in std_logic;
 o_mult : out std_logic);
end ckt_1;

--AND1
library ieee;
use ieee.std_logic_1164.all;

entity and_1 is port (
i1, i2 : in std_logic;
o1: out std_logic);
end and_1;

architecture dataflow of and_1 is
begin
	o1 <= not i1 and i2;
end dataflow;

--AND2
library ieee;
use ieee.std_logic_1164.all;

entity and_2 is port (
i1, i2 : in std_logic;
o1: out std_logic);
end and_2;

architecture dataflow of and_2 is
begin
	o1 <= not i1 and i2;
end dataflow;

--OR1
library ieee;
use ieee.std_logic_1164.all;

entity or_1 is port (
i1, i2 : in std_logic;
o1: out std_logic);
end or_1;

architecture dataflow of or_1 is
begin
	o1 <=  i1 or i2;
end dataflow;

--ARCHITECTURE
architecture structural of ckt_1 is
signal A_B, C_D : std_logic;
component and_1 is port (
i1, i2 : in std_logic;
o1 : out std_logic);
end component;

component and_2 is port (
i1, i2 : in std_logic;
o1 : out std_logic);
end component;

component or_1 is port (
i1, i2 : in std_logic;
o1 : out std_logic);
end component;

begin
C1: and_1 port map (i1 => i_sel, i2 => i_bit1, o1 => A_B);
C2: and_2 port map (i1 => i_sel, i2 => i_bit1, o1 => C_D);
C3: or_1 port map (i1 => A_B, i2 => C_D, o1 => o_mult);
end structural;