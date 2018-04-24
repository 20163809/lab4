library ieee;
use ieee.std_logic_1164.all;
 
entity and_1 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end and_1;

architecture dataflow of and_1 is
begin
	o1 <= i1 and i2;
end dataflow;

library ieee;
use ieee.std_logic_1164.all;

entity and_2 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end and_2;

architecture dataflow of and_2 is
begin
	o1 <= i1 and i2;
end dataflow;

library ieee;
use ieee.std_logic_1164.all;

entity and_3 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end and_3;

architecture dataflow of and_3 is
begin
	o1 <= i1 and i2;
end dataflow;

library ieee;
use ieee.std_logic_1164.all;

entity papildomaIR4 is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
	C    : in  std_logic;
    D    : in  std_logic;
    F : out std_logic
    );
end papildomaIR4;
 
architecture structural of papildomaIR4 is
	signal  A_B, C_D: std_logic;
component and_1 is port (
	i1, i2: in std_logic;
	o1: out std_logic
	);
end component;

component and_2 is port (
	i1, i2: in std_logic;
	o1: out std_logic
	);
end component;

component and_3 is port (
	i1, i2: in std_logic;
	o1: out std_logic
	);
end component;

begin
  C1: and_1 port map (i1 => A, i2 => B, o1 => A_B);
  C2: and_2 port map (i1 => C, i2 => D, o1 => C_D);
  C3: and_3 port map (i1 => A_B, i2 => C_D, o1 => F);
end structural;