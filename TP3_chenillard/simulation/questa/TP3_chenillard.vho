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

-- DATE "05/11/2023 11:52:31"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_divider IS
    PORT (
	clkin : IN std_logic;
	n : IN std_logic_vector(4 DOWNTO 0);
	rst : IN std_logic;
	clkout : OUT std_logic
	);
END clock_divider;

-- Design Ports Information
-- clkout	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[4]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[3]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[1]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_n : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clkout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \n[4]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cpt[0]~0_combout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \cpt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \cpt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \n[2]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \n[1]~input_o\ : std_logic;
SIGNAL \n[0]~input_o\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \cpt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cpt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \cpt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \n[3]~input_o\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL cpt : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_cpt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cpt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cpt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cpt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cpt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_n[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n[4]~input_o\ : std_logic;
SIGNAL ALT_INV_cpt : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_clkin <= clkin;
ww_n <= n;
ww_rst <= rst;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~13_combout\ <= NOT \Mux0~13_combout\;
\ALT_INV_Mux0~17_combout\ <= NOT \Mux0~17_combout\;
\ALT_INV_Mux0~21_combout\ <= NOT \Mux0~21_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_cpt[16]~DUPLICATE_q\ <= NOT \cpt[16]~DUPLICATE_q\;
\ALT_INV_cpt[10]~DUPLICATE_q\ <= NOT \cpt[10]~DUPLICATE_q\;
\ALT_INV_cpt[0]~DUPLICATE_q\ <= NOT \cpt[0]~DUPLICATE_q\;
\ALT_INV_cpt[1]~DUPLICATE_q\ <= NOT \cpt[1]~DUPLICATE_q\;
\ALT_INV_cpt[4]~DUPLICATE_q\ <= NOT \cpt[4]~DUPLICATE_q\;
\ALT_INV_n[0]~input_o\ <= NOT \n[0]~input_o\;
\ALT_INV_n[1]~input_o\ <= NOT \n[1]~input_o\;
\ALT_INV_n[2]~input_o\ <= NOT \n[2]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_n[3]~input_o\ <= NOT \n[3]~input_o\;
\ALT_INV_n[4]~input_o\ <= NOT \n[4]~input_o\;
ALT_INV_cpt(18) <= NOT cpt(18);
ALT_INV_cpt(16) <= NOT cpt(16);
ALT_INV_cpt(19) <= NOT cpt(19);
ALT_INV_cpt(17) <= NOT cpt(17);
ALT_INV_cpt(10) <= NOT cpt(10);
ALT_INV_cpt(8) <= NOT cpt(8);
ALT_INV_cpt(11) <= NOT cpt(11);
ALT_INV_cpt(9) <= NOT cpt(9);
ALT_INV_cpt(2) <= NOT cpt(2);
ALT_INV_cpt(0) <= NOT cpt(0);
ALT_INV_cpt(3) <= NOT cpt(3);
ALT_INV_cpt(1) <= NOT cpt(1);
ALT_INV_cpt(22) <= NOT cpt(22);
ALT_INV_cpt(20) <= NOT cpt(20);
ALT_INV_cpt(23) <= NOT cpt(23);
ALT_INV_cpt(21) <= NOT cpt(21);
ALT_INV_cpt(14) <= NOT cpt(14);
ALT_INV_cpt(12) <= NOT cpt(12);
ALT_INV_cpt(15) <= NOT cpt(15);
ALT_INV_cpt(13) <= NOT cpt(13);
ALT_INV_cpt(6) <= NOT cpt(6);
ALT_INV_cpt(4) <= NOT cpt(4);
ALT_INV_cpt(7) <= NOT cpt(7);
ALT_INV_cpt(5) <= NOT cpt(5);

-- Location: IOOBUF_X68_Y35_N56
\clkout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~12_combout\,
	devoe => ww_devoe,
	o => ww_clkout);

-- Location: IOIBUF_X68_Y35_N4
\n[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(4),
	o => \n[4]~input_o\);

-- Location: IOIBUF_X68_Y33_N38
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\clkin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G6
\clkin~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~input_o\,
	outclk => \clkin~inputCLKENA0_outclk\);

-- Location: LABCELL_X67_Y35_N0
\cpt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpt[0]~0_combout\ = ( !cpt(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cpt(0),
	combout => \cpt[0]~0_combout\);

-- Location: FF_X67_Y35_N2
\cpt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \cpt[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(0));

-- Location: LABCELL_X67_Y35_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( cpt(0) ) + ( cpt(1) ) + ( !VCC ))
-- \Add0~54\ = CARRY(( cpt(0) ) + ( cpt(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(1),
	datad => ALT_INV_cpt(0),
	cin => GND,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X67_Y35_N31
\cpt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(1));

-- Location: LABCELL_X67_Y35_N33
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( cpt(2) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( cpt(2) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(2),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X67_Y35_N35
\cpt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(2));

-- Location: LABCELL_X67_Y35_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( cpt(3) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~50\ = CARRY(( cpt(3) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(3),
	cin => \Add0~58\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X67_Y35_N38
\cpt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(3));

-- Location: LABCELL_X67_Y35_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \cpt[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~10\ = CARRY(( \cpt[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cpt[4]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X67_Y35_N41
\cpt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt[4]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y35_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cpt(5) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( cpt(5) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(5),
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X67_Y35_N43
\cpt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(5));

-- Location: LABCELL_X67_Y35_N45
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cpt(6) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~14\ = CARRY(( cpt(6) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(6),
	cin => \Add0~2\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X67_Y35_N47
\cpt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(6));

-- Location: LABCELL_X67_Y35_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cpt(7) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~6\ = CARRY(( cpt(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(7),
	cin => \Add0~14\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X67_Y35_N50
\cpt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(7));

-- Location: LABCELL_X67_Y35_N51
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( cpt(8) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~70\ = CARRY(( cpt(8) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(8),
	cin => \Add0~6\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X67_Y35_N52
\cpt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(8));

-- Location: LABCELL_X67_Y35_N54
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( cpt(9) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( cpt(9) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(9),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X67_Y35_N56
\cpt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(9));

-- Location: LABCELL_X67_Y35_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \cpt[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~74\ = CARRY(( \cpt[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cpt[10]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X67_Y35_N59
\cpt[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt[10]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y34_N0
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( cpt(11) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~62\ = CARRY(( cpt(11) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(11),
	cin => \Add0~74\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X67_Y34_N2
\cpt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(11));

-- Location: LABCELL_X67_Y34_N3
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cpt(12) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~26\ = CARRY(( cpt(12) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(12),
	cin => \Add0~62\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X67_Y34_N5
\cpt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(12));

-- Location: LABCELL_X67_Y34_N6
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cpt(13) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~18\ = CARRY(( cpt(13) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(13),
	cin => \Add0~26\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X67_Y34_N7
\cpt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(13));

-- Location: IOIBUF_X68_Y35_N21
\n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(2),
	o => \n[2]~input_o\);

-- Location: LABCELL_X67_Y34_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cpt(14) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~30\ = CARRY(( cpt(14) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(14),
	cin => \Add0~18\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X67_Y34_N11
\cpt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(14));

-- Location: LABCELL_X67_Y34_N12
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cpt(15) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~22\ = CARRY(( cpt(15) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cpt(15),
	cin => \Add0~30\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X67_Y34_N14
\cpt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(15));

-- Location: IOIBUF_X68_Y33_N4
\n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(1),
	o => \n[1]~input_o\);

-- Location: FF_X67_Y35_N58
\cpt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(10));

-- Location: IOIBUF_X68_Y33_N21
\n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(0),
	o => \n[0]~input_o\);

-- Location: LABCELL_X67_Y35_N12
\Mux0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = ( !\n[1]~input_o\ & ( (!\n[2]~input_o\ & (((!\n[0]~input_o\ & ((cpt(8)))) # (\n[0]~input_o\ & (cpt(9)))))) # (\n[2]~input_o\ & ((((\n[0]~input_o\))))) ) ) # ( \n[1]~input_o\ & ( ((!\n[2]~input_o\ & ((!\n[0]~input_o\ & (cpt(10))) # 
-- (\n[0]~input_o\ & ((cpt(11)))))) # (\n[2]~input_o\ & (((\n[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(9),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(10),
	datad => ALT_INV_cpt(11),
	datae => \ALT_INV_n[1]~input_o\,
	dataf => \ALT_INV_n[0]~input_o\,
	datag => ALT_INV_cpt(8),
	combout => \Mux0~17_combout\);

-- Location: LABCELL_X67_Y34_N54
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !\n[1]~input_o\ & ( (!\n[2]~input_o\ & ((((\Mux0~17_combout\))))) # (\n[2]~input_o\ & (((!\Mux0~17_combout\ & ((cpt(12)))) # (\Mux0~17_combout\ & (cpt(13)))))) ) ) # ( \n[1]~input_o\ & ( ((!\n[2]~input_o\ & (((\Mux0~17_combout\)))) # 
-- (\n[2]~input_o\ & ((!\Mux0~17_combout\ & (cpt(14))) # (\Mux0~17_combout\ & ((cpt(15))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(13),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(14),
	datad => ALT_INV_cpt(15),
	datae => \ALT_INV_n[1]~input_o\,
	dataf => \ALT_INV_Mux0~17_combout\,
	datag => ALT_INV_cpt(12),
	combout => \Mux0~4_combout\);

-- Location: FF_X67_Y35_N32
\cpt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt[1]~DUPLICATE_q\);

-- Location: FF_X67_Y35_N1
\cpt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \cpt[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt[0]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y35_N24
\Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = ( !\n[1]~input_o\ & ( ((!\n[2]~input_o\ & ((!\n[0]~input_o\ & (\cpt[0]~DUPLICATE_q\)) # (\n[0]~input_o\ & ((\cpt[1]~DUPLICATE_q\))))) # (\n[2]~input_o\ & (((\n[0]~input_o\))))) ) ) # ( \n[1]~input_o\ & ( (!\n[2]~input_o\ & 
-- (((!\n[0]~input_o\ & ((cpt(2)))) # (\n[0]~input_o\ & (cpt(3)))))) # (\n[2]~input_o\ & ((((\n[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(3),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(2),
	datad => \ALT_INV_cpt[1]~DUPLICATE_q\,
	datae => \ALT_INV_n[1]~input_o\,
	dataf => \ALT_INV_n[0]~input_o\,
	datag => \ALT_INV_cpt[0]~DUPLICATE_q\,
	combout => \Mux0~13_combout\);

-- Location: FF_X67_Y35_N40
\cpt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(4));

-- Location: LABCELL_X67_Y35_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\n[1]~input_o\ & ( ((!\n[2]~input_o\ & (((\Mux0~13_combout\)))) # (\n[2]~input_o\ & ((!\Mux0~13_combout\ & (cpt(4))) # (\Mux0~13_combout\ & ((cpt(5))))))) ) ) # ( \n[1]~input_o\ & ( (!\n[2]~input_o\ & ((((\Mux0~13_combout\))))) # 
-- (\n[2]~input_o\ & (((!\Mux0~13_combout\ & ((cpt(6)))) # (\Mux0~13_combout\ & (cpt(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(7),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(6),
	datad => ALT_INV_cpt(5),
	datae => \ALT_INV_n[1]~input_o\,
	dataf => \ALT_INV_Mux0~13_combout\,
	datag => ALT_INV_cpt(4),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X67_Y34_N15
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \cpt[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~86\ = CARRY(( \cpt[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cpt[16]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X67_Y34_N17
\cpt[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt[16]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y34_N18
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( cpt(17) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( cpt(17) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(17),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X67_Y34_N20
\cpt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(17));

-- Location: LABCELL_X67_Y34_N21
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( cpt(18) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~90\ = CARRY(( cpt(18) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(18),
	cin => \Add0~82\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X67_Y34_N23
\cpt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(18));

-- Location: LABCELL_X67_Y34_N24
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( cpt(19) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~78\ = CARRY(( cpt(19) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(19),
	cin => \Add0~90\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X67_Y34_N26
\cpt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(19));

-- Location: LABCELL_X67_Y34_N27
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( cpt(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~42\ = CARRY(( cpt(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cpt(20),
	cin => \Add0~78\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X67_Y34_N29
\cpt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(20));

-- Location: LABCELL_X67_Y34_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( cpt(21) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~34\ = CARRY(( cpt(21) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(21),
	cin => \Add0~42\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X67_Y34_N31
\cpt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(21));

-- Location: LABCELL_X67_Y34_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( cpt(22) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~46\ = CARRY(( cpt(22) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(22),
	cin => \Add0~34\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X67_Y34_N35
\cpt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(22));

-- Location: LABCELL_X67_Y34_N36
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cpt(23) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cpt(23),
	cin => \Add0~46\,
	sumout => \Add0~37_sumout\);

-- Location: FF_X67_Y34_N38
\cpt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(23));

-- Location: FF_X67_Y34_N16
\cpt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cpt(16));

-- Location: LABCELL_X67_Y34_N42
\Mux0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = ( !\n[1]~input_o\ & ( ((!\n[2]~input_o\ & ((!\n[0]~input_o\ & (cpt(16))) # (\n[0]~input_o\ & ((cpt(17)))))) # (\n[2]~input_o\ & (((\n[0]~input_o\))))) ) ) # ( \n[1]~input_o\ & ( (!\n[2]~input_o\ & ((!\n[0]~input_o\ & (((cpt(18))))) # 
-- (\n[0]~input_o\ & (cpt(19))))) # (\n[2]~input_o\ & ((((\n[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(19),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(18),
	datad => \ALT_INV_n[0]~input_o\,
	datae => \ALT_INV_n[1]~input_o\,
	dataf => ALT_INV_cpt(17),
	datag => ALT_INV_cpt(16),
	combout => \Mux0~21_combout\);

-- Location: LABCELL_X67_Y34_N48
\Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( !\n[1]~input_o\ & ( ((!\n[2]~input_o\ & (((\Mux0~21_combout\)))) # (\n[2]~input_o\ & ((!\Mux0~21_combout\ & (cpt(20))) # (\Mux0~21_combout\ & ((cpt(21))))))) ) ) # ( \n[1]~input_o\ & ( (!\n[2]~input_o\ & ((((\Mux0~21_combout\))))) # 
-- (\n[2]~input_o\ & ((!\Mux0~21_combout\ & (((cpt(22))))) # (\Mux0~21_combout\ & (cpt(23))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cpt(23),
	datab => \ALT_INV_n[2]~input_o\,
	datac => ALT_INV_cpt(22),
	datad => \ALT_INV_Mux0~21_combout\,
	datae => \ALT_INV_n[1]~input_o\,
	dataf => ALT_INV_cpt(21),
	datag => ALT_INV_cpt(20),
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X68_Y35_N38
\n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(3),
	o => \n[3]~input_o\);

-- Location: LABCELL_X67_Y35_N18
\Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( \Mux0~8_combout\ & ( \n[3]~input_o\ & ( (!\n[4]~input_o\ & (\rst~input_o\ & \Mux0~4_combout\)) ) ) ) # ( !\Mux0~8_combout\ & ( \n[3]~input_o\ & ( (!\n[4]~input_o\ & (\rst~input_o\ & \Mux0~4_combout\)) ) ) ) # ( \Mux0~8_combout\ & ( 
-- !\n[3]~input_o\ & ( (\rst~input_o\ & ((\Mux0~0_combout\) # (\n[4]~input_o\))) ) ) ) # ( !\Mux0~8_combout\ & ( !\n[3]~input_o\ & ( (!\n[4]~input_o\ & (\rst~input_o\ & \Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000100010011001100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n[4]~input_o\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_Mux0~4_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux0~8_combout\,
	dataf => \ALT_INV_n[3]~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LABCELL_X48_Y10_N3
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


