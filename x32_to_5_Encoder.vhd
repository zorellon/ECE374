library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity x32_to_5_Encoder is
port(
		R0out : in STD_LOGIC;
		R1out : in STD_LOGIC;
		R2out : in STD_LOGIC;
		R3out : in STD_LOGIC;
		R4out : in STD_LOGIC;
		R5out : in STD_LOGIC;
		R6out : in STD_LOGIC;
		R7out : in STD_LOGIC;
		R8out : in STD_LOGIC;
		R9out : in STD_LOGIC;
		R10out : in STD_LOGIC;
		R11out : in STD_LOGIC;
		R12out : in STD_LOGIC;
		R13out : in STD_LOGIC;
		R14out : in STD_LOGIC;
		R15out : in STD_LOGIC;
		HIout : in STD_LOGIC;
		LOout : in STD_LOGIC;
		Zhighout : in STD_LOGIC;
		Zlowout : in STD_LOGIC;
		PCout : in STD_LOGIC;
		MDRout : in STD_LOGIC;
		InPortout : in STD_LOGIC;
		CSignExt : in STD_LOGIC;

      Sout : out STD_LOGIC_VECTOR(4 downto 0)
);
end x32_to_5_Encoder;

architecture encoder_architecture of x32_to_5_Encoder is
begin


Sout <=  "00001" when R0out = '1' else
			"00010" when R0out = '1' else
			"00011" when R1out = '1' else
			"00100" when R2out = '1' else
			"00101" when R3out = '1' else
			"00110" when R4out = '1' else
			"00111" when R5out = '1' else
			"01000" when R6out = '1' else
			"01001" when R7out = '1' else
			"01011" when R8out = '1'  else
			"01011" when R9out = '1'  else
			"01100" when R10out = '1'  else
			"01101" when R11out = '1'  else
			"01110" when R12out = '1'  else
			"01111" when R13out = '1' else
			"10000" when R15out = '1' else
			"10001" when HIout = '1' else
			"10010" when LOout = '1' else
			"10011" when Zhighout = '1' else
			"10100" when Zlowout = '1' else
			"10101" when PCout= '1' else
			"10110" when MDRout = '1' else
			"10111" when InPortout = '1' else
			"11000" when CSignExt = '1' else
			"00000" ;
end encoder_architecture;