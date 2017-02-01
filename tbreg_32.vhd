library ieee;
use ieee.std_logic_1164.ALL;

entity tbreg_32 is
end;

architecture tb of tbreg_32 is
	component reg_32
		port(data_in: in std_logic_vector(31 downto 0);
			  data_out: out std_logic_vector(31 downto 0);
			  enable,clr,clk :in std_logic);
	end component reg_32;
	
	signal s1 : std_logic_vector(31 downto 0);
   signal s2 : std_logic_vector(31 downto 0);
	signal sclr,sclk,senable : std_logic;
	
	begin
		DUT : reg_32
			PORT MAP (data_in=>s1,data_out=>s2,enable=>senable,clr=>sclr,clk=>sclk);

		myproc : process
		begin
			wait for 0 ns;
			sclr<='0';
			sclk<='0';
			senable<='0';
			s1<=b"0000_0000_0000_0000_0000_0000_0000_0000";
			wait for 10 ns;
			sclk<='1';
			wait for 10 ns;
			sclk<='0';
			s1<=b"0000_1111_0000_0000_0000_0000_0000_1111";
			wait for 10 ns;
			sclk<='1';
			senable<='1';
			wait for 10 ns;
			sclk<='0';
			senable<='0';
			wait for 10 ns;
			sclr<='0';
			wait;
		end process myproc;
end tb;