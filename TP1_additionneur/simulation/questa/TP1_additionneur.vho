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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/20/2023 09:49:01"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_8b IS
    PORT (
	cin : IN std_logic;
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic;
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END full_adder_8b;

-- Design Ports Information
-- cout	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder_8b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b2v_inst3|cout~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b2v_inst5|cout~combout\ : std_logic;
SIGNAL \b2v_inst7|cout~combout\ : std_logic;
SIGNAL \b2v_inst9|cout~combout\ : std_logic;
SIGNAL \b2v_inst|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst3|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst4|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst5|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst6|hadder1|s~combout\ : std_logic;
SIGNAL \b2v_inst6|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst7|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst8|hadder1|s~combout\ : std_logic;
SIGNAL \b2v_inst8|hadder2|s~combout\ : std_logic;
SIGNAL \b2v_inst9|hadder2|s~combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \b2v_inst8|hadder1|ALT_INV_s~combout\ : std_logic;
SIGNAL \b2v_inst6|hadder1|ALT_INV_s~combout\ : std_logic;
SIGNAL \b2v_inst7|ALT_INV_cout~combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_cout~combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_cout~combout\ : std_logic;

BEGIN

ww_cin <= cin;
ww_a <= a;
ww_b <= b;
cout <= ww_cout;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\b2v_inst8|hadder1|ALT_INV_s~combout\ <= NOT \b2v_inst8|hadder1|s~combout\;
\b2v_inst6|hadder1|ALT_INV_s~combout\ <= NOT \b2v_inst6|hadder1|s~combout\;
\b2v_inst7|ALT_INV_cout~combout\ <= NOT \b2v_inst7|cout~combout\;
\b2v_inst5|ALT_INV_cout~combout\ <= NOT \b2v_inst5|cout~combout\;
\b2v_inst3|ALT_INV_cout~combout\ <= NOT \b2v_inst3|cout~combout\;

-- Location: IOOBUF_X42_Y0_N53
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst9|cout~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X40_Y0_N93
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X44_Y0_N36
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X40_Y0_N42
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X40_Y0_N59
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X40_Y0_N76
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X42_Y0_N19
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X44_Y0_N19
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X42_Y0_N36
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst9|hadder2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOIBUF_X38_Y0_N18
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N58
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N92
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N75
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X38_Y2_N12
\b2v_inst3|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|cout~combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\cin~input_o\) # (\a[1]~input_o\)) # (\a[0]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\a[0]~input_o\ & \cin~input_o\)) # (\a[1]~input_o\) ) ) ) # ( \b[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\cin~input_o\) # (\a[0]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[0]~input_o\ & (\a[1]~input_o\ & \cin~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \b2v_inst3|cout~combout\);

-- Location: IOIBUF_X32_Y0_N41
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X38_Y2_N33
\b2v_inst5|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|cout~combout\ = ( \b[3]~input_o\ & ( \a[3]~input_o\ ) ) # ( !\b[3]~input_o\ & ( \a[3]~input_o\ & ( (!\b[2]~input_o\ & (\b2v_inst3|cout~combout\ & \a[2]~input_o\)) # (\b[2]~input_o\ & ((\a[2]~input_o\) # (\b2v_inst3|cout~combout\))) ) ) ) # ( 
-- \b[3]~input_o\ & ( !\a[3]~input_o\ & ( (!\b[2]~input_o\ & (\b2v_inst3|cout~combout\ & \a[2]~input_o\)) # (\b[2]~input_o\ & ((\a[2]~input_o\) # (\b2v_inst3|cout~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \b2v_inst3|ALT_INV_cout~combout\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \b2v_inst5|cout~combout\);

-- Location: LABCELL_X38_Y2_N48
\b2v_inst7|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|cout~combout\ = ( \b2v_inst5|cout~combout\ & ( (!\b[5]~input_o\ & (\a[5]~input_o\ & ((\a[4]~input_o\) # (\b[4]~input_o\)))) # (\b[5]~input_o\ & (((\a[4]~input_o\) # (\a[5]~input_o\)) # (\b[4]~input_o\))) ) ) # ( !\b2v_inst5|cout~combout\ & ( 
-- (!\b[5]~input_o\ & (\b[4]~input_o\ & (\a[5]~input_o\ & \a[4]~input_o\))) # (\b[5]~input_o\ & (((\b[4]~input_o\ & \a[4]~input_o\)) # (\a[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	dataf => \b2v_inst5|ALT_INV_cout~combout\,
	combout => \b2v_inst7|cout~combout\);

-- Location: LABCELL_X38_Y2_N54
\b2v_inst9|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|cout~combout\ = ( \b2v_inst7|cout~combout\ & ( (!\a[7]~input_o\ & (\b[7]~input_o\ & ((\a[6]~input_o\) # (\b[6]~input_o\)))) # (\a[7]~input_o\ & (((\b[7]~input_o\) # (\a[6]~input_o\)) # (\b[6]~input_o\))) ) ) # ( !\b2v_inst7|cout~combout\ & ( 
-- (!\a[7]~input_o\ & (\b[6]~input_o\ & (\a[6]~input_o\ & \b[7]~input_o\))) # (\a[7]~input_o\ & (((\b[6]~input_o\ & \a[6]~input_o\)) # (\b[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_b[7]~input_o\,
	dataf => \b2v_inst7|ALT_INV_cout~combout\,
	combout => \b2v_inst9|cout~combout\);

-- Location: LABCELL_X38_Y2_N0
\b2v_inst|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|hadder2|s~combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ $ (\cin~input_o\) ) ) # ( !\b[0]~input_o\ & ( !\a[0]~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \b2v_inst|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N45
\b2v_inst3|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|hadder2|s~combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\a[0]~input_o\) # (\cin~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\cin~input_o\ & \a[0]~input_o\))) ) ) ) # ( 
-- \b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\cin~input_o\ & !\a[0]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\cin~input_o\) # (!\a[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010010110101111000011110000101001011010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \b2v_inst3|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N27
\b2v_inst4|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|hadder2|s~combout\ = ( \a[2]~input_o\ & ( !\b[2]~input_o\ $ (\b2v_inst3|cout~combout\) ) ) # ( !\a[2]~input_o\ & ( !\b[2]~input_o\ $ (!\b2v_inst3|cout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \b2v_inst3|ALT_INV_cout~combout\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \b2v_inst4|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N24
\b2v_inst5|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|hadder2|s~combout\ = ( \a[3]~input_o\ & ( !\b[3]~input_o\ $ (((!\b[2]~input_o\ & (\b2v_inst3|cout~combout\ & \a[2]~input_o\)) # (\b[2]~input_o\ & ((\a[2]~input_o\) # (\b2v_inst3|cout~combout\))))) ) ) # ( !\a[3]~input_o\ & ( !\b[3]~input_o\ $ 
-- (((!\b[2]~input_o\ & ((!\b2v_inst3|cout~combout\) # (!\a[2]~input_o\))) # (\b[2]~input_o\ & (!\b2v_inst3|cout~combout\ & !\a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \b2v_inst3|ALT_INV_cout~combout\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \b2v_inst5|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N18
\b2v_inst6|hadder1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst6|hadder1|s~combout\ = !\b[4]~input_o\ $ (!\a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datab => \ALT_INV_a[4]~input_o\,
	combout => \b2v_inst6|hadder1|s~combout\);

-- Location: LABCELL_X38_Y2_N36
\b2v_inst6|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst6|hadder2|s~combout\ = ( \b[3]~input_o\ & ( \a[3]~input_o\ & ( !\b2v_inst6|hadder1|s~combout\ ) ) ) # ( !\b[3]~input_o\ & ( \a[3]~input_o\ & ( !\b2v_inst6|hadder1|s~combout\ $ (((!\b2v_inst3|cout~combout\ & ((!\b[2]~input_o\) # 
-- (!\a[2]~input_o\))) # (\b2v_inst3|cout~combout\ & (!\b[2]~input_o\ & !\a[2]~input_o\)))) ) ) ) # ( \b[3]~input_o\ & ( !\a[3]~input_o\ & ( !\b2v_inst6|hadder1|s~combout\ $ (((!\b2v_inst3|cout~combout\ & ((!\b[2]~input_o\) # (!\a[2]~input_o\))) # 
-- (\b2v_inst3|cout~combout\ & (!\b[2]~input_o\ & !\a[2]~input_o\)))) ) ) ) # ( !\b[3]~input_o\ & ( !\a[3]~input_o\ & ( \b2v_inst6|hadder1|s~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101100110101001010110011010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|hadder1|ALT_INV_s~combout\,
	datab => \b2v_inst3|ALT_INV_cout~combout\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \b2v_inst6|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N21
\b2v_inst7|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst7|hadder2|s~combout\ = ( \b2v_inst5|cout~combout\ & ( !\b[5]~input_o\ $ (!\a[5]~input_o\ $ (((\a[4]~input_o\) # (\b[4]~input_o\)))) ) ) # ( !\b2v_inst5|cout~combout\ & ( !\b[5]~input_o\ $ (!\a[5]~input_o\ $ (((\b[4]~input_o\ & \a[4]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datab => \ALT_INV_a[4]~input_o\,
	datac => \ALT_INV_b[5]~input_o\,
	datad => \ALT_INV_a[5]~input_o\,
	dataf => \b2v_inst5|ALT_INV_cout~combout\,
	combout => \b2v_inst7|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N51
\b2v_inst8|hadder1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst8|hadder1|s~combout\ = ( \b[6]~input_o\ & ( !\a[6]~input_o\ ) ) # ( !\b[6]~input_o\ & ( \a[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \b2v_inst8|hadder1|s~combout\);

-- Location: LABCELL_X38_Y2_N6
\b2v_inst8|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst8|hadder2|s~combout\ = ( \b[5]~input_o\ & ( \b[4]~input_o\ & ( !\b2v_inst8|hadder1|s~combout\ $ (((!\a[5]~input_o\ & (!\a[4]~input_o\ & !\b2v_inst5|cout~combout\)))) ) ) ) # ( !\b[5]~input_o\ & ( \b[4]~input_o\ & ( !\b2v_inst8|hadder1|s~combout\ 
-- $ (((!\a[5]~input_o\) # ((!\a[4]~input_o\ & !\b2v_inst5|cout~combout\)))) ) ) ) # ( \b[5]~input_o\ & ( !\b[4]~input_o\ & ( !\b2v_inst8|hadder1|s~combout\ $ (((!\a[5]~input_o\ & ((!\a[4]~input_o\) # (!\b2v_inst5|cout~combout\))))) ) ) ) # ( !\b[5]~input_o\ 
-- & ( !\b[4]~input_o\ & ( !\b2v_inst8|hadder1|s~combout\ $ (((!\a[5]~input_o\) # ((!\a[4]~input_o\) # (!\b2v_inst5|cout~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110010101111010100000010101111010100111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[4]~input_o\,
	datac => \b2v_inst5|ALT_INV_cout~combout\,
	datad => \b2v_inst8|hadder1|ALT_INV_s~combout\,
	datae => \ALT_INV_b[5]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \b2v_inst8|hadder2|s~combout\);

-- Location: LABCELL_X38_Y2_N57
\b2v_inst9|hadder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst9|hadder2|s~combout\ = ( \b2v_inst7|cout~combout\ & ( !\a[7]~input_o\ $ (!\b[7]~input_o\ $ (((\a[6]~input_o\) # (\b[6]~input_o\)))) ) ) # ( !\b2v_inst7|cout~combout\ & ( !\a[7]~input_o\ $ (!\b[7]~input_o\ $ (((\b[6]~input_o\ & \a[6]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[6]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_b[7]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \b2v_inst7|ALT_INV_cout~combout\,
	combout => \b2v_inst9|hadder2|s~combout\);

-- Location: LABCELL_X51_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


