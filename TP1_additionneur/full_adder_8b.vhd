-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"
-- CREATED		"Thu Apr 20 09:15:16 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder_8b IS 
	PORT
	(
		cin :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout :  OUT  STD_LOGIC;
		s :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END full_adder_8b;

ARCHITECTURE bdf_type OF full_adder_8b IS 

COMPONENT full_adder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 s : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	s_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst : full_adder
PORT MAP(a => a(0),
		 b => b(0),
		 cin => cin,
		 s => s_ALTERA_SYNTHESIZED(0),
		 cout => SYNTHESIZED_WIRE_0);


b2v_inst3 : full_adder
PORT MAP(a => a(1),
		 b => b(1),
		 cin => SYNTHESIZED_WIRE_0,
		 s => s_ALTERA_SYNTHESIZED(1),
		 cout => SYNTHESIZED_WIRE_1);


b2v_inst4 : full_adder
PORT MAP(a => a(2),
		 b => b(2),
		 cin => SYNTHESIZED_WIRE_1,
		 s => s_ALTERA_SYNTHESIZED(2),
		 cout => SYNTHESIZED_WIRE_2);


b2v_inst5 : full_adder
PORT MAP(a => a(3),
		 b => b(3),
		 cin => SYNTHESIZED_WIRE_2,
		 s => s_ALTERA_SYNTHESIZED(3),
		 cout => SYNTHESIZED_WIRE_3);


b2v_inst6 : full_adder
PORT MAP(a => a(4),
		 b => b(4),
		 cin => SYNTHESIZED_WIRE_3,
		 s => s_ALTERA_SYNTHESIZED(4),
		 cout => SYNTHESIZED_WIRE_4);


b2v_inst7 : full_adder
PORT MAP(a => a(5),
		 b => b(5),
		 cin => SYNTHESIZED_WIRE_4,
		 s => s_ALTERA_SYNTHESIZED(5),
		 cout => SYNTHESIZED_WIRE_5);


b2v_inst8 : full_adder
PORT MAP(a => a(6),
		 b => b(6),
		 cin => SYNTHESIZED_WIRE_5,
		 s => s_ALTERA_SYNTHESIZED(6),
		 cout => SYNTHESIZED_WIRE_6);


b2v_inst9 : full_adder
PORT MAP(a => a(7),
		 b => b(7),
		 cin => SYNTHESIZED_WIRE_6,
		 s => s_ALTERA_SYNTHESIZED(7),
		 cout => Cout);

s <= s_ALTERA_SYNTHESIZED;

END bdf_type;