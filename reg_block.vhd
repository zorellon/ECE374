-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Tue Jan 31 18:40:07 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY reg_block IS 
	PORT
	(
		enable :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		data_in :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		data_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END reg_block;

ARCHITECTURE bdf_type OF reg_block IS 

COMPONENT reg_32
	PORT(enable : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : reg_32
PORT MAP(enable => enable,
		 clr => clr,
		 clk => clk,
		 data_in => data_in,
		 data_out => data_out);


END bdf_type;