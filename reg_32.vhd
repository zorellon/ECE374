LIBRARY ieee;
use ieee.std_logic_1164.ALL;

ENTITY reg_32 is 
	port(data_in : in std_logic_vector(31 downto 0);
		  data_out : out std_logic_vector(31 downto 0);
		  enable,clr,clk :in std_logic);
end reg_32;

architecture reg_arch of reg_32 is
	begin
	Clk_reg_32: process(clk)
	begin
	 if rising_edge(clk) then
		if clr='1' then
			data_out<="00000000000000000000000000000000";
		end if;
		if enable='1' then
			data_out<=data_in;
		end if;
	 end if;
	end process;
end reg_arch; 