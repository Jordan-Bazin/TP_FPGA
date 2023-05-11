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
-- CREATED		"Tue Apr 25 08:49:43 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY priority_encoder8 IS 
	PORT
	(
		I :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Y :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END priority_encoder8;

ARCHITECTURE bdf_type OF priority_encoder8 IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT mux_1
	PORT(data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF mux_1: COMPONENT IS true;
ATTRIBUTE noopt OF mux_1: COMPONENT IS true;

COMPONENT priority_encoder4
	PORT(I0 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I3 : IN STD_LOGIC;
		 S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	Sel :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	V :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	Y_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 



b2v_inst : priority_encoder4
PORT MAP(I0 => I(0),
		 I1 => I(1),
		 I2 => I(2),
		 I3 => I(3),
		 S => SYNTHESIZED_WIRE_0);


b2v_inst1 : priority_encoder4
PORT MAP(I0 => I(4),
		 I1 => I(5),
		 I2 => I(6),
		 I3 => I(7),
		 S => SYNTHESIZED_WIRE_1);




Sel(1) <= I(0) OR I(2) OR I(3) OR I(1);


Sel(0) <= I(4) OR I(6) OR I(7) OR I(5);


b2v_inst7 : busmux_0
PORT MAP(sel => Sel(1),
		 dataa => SYNTHESIZED_WIRE_0,
		 datab => SYNTHESIZED_WIRE_1,
		 result => Y_ALTERA_SYNTHESIZED(1 DOWNTO 0));


b2v_inst8 : mux_1
PORT MAP(data => V,
		 sel => Sel,
		 result => Y_ALTERA_SYNTHESIZED(2));


Y <= Y_ALTERA_SYNTHESIZED;

END bdf_type;