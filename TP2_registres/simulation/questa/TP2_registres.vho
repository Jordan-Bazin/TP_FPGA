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

-- DATE "05/11/2023 09:26:00"

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

ENTITY 	shift_register_universal8 IS
    PORT (
	ssr : IN std_logic;
	ssl : IN std_logic;
	pi : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	setn : IN std_logic;
	rstn : IN std_logic;
	sor : BUFFER std_logic;
	sol : BUFFER std_logic;
	qo : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END shift_register_universal8;

-- Design Ports Information
-- sor	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sol	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[1]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[4]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[5]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[6]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setn	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssl	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssr	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[7]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[2]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[5]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pi[6]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_register_universal8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ssr : std_logic;
SIGNAL ww_ssl : std_logic;
SIGNAL ww_pi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_setn : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_sor : std_logic;
SIGNAL ww_sol : std_logic;
SIGNAL ww_qo : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \setn~input_o\ : std_logic;
SIGNAL \qo[0]~0_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \reg[7]~27_combout\ : std_logic;
SIGNAL \reg[0]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \pi[0]~input_o\ : std_logic;
SIGNAL \pi[7]~input_o\ : std_logic;
SIGNAL \pi[6]~input_o\ : std_logic;
SIGNAL \pi[5]~input_o\ : std_logic;
SIGNAL \pi[4]~input_o\ : std_logic;
SIGNAL \pi[3]~input_o\ : std_logic;
SIGNAL \pi[2]~input_o\ : std_logic;
SIGNAL \pi[1]~input_o\ : std_logic;
SIGNAL \reg~28_combout\ : std_logic;
SIGNAL \reg[1]~7_combout\ : std_logic;
SIGNAL \reg[0]~0_combout\ : std_logic;
SIGNAL \reg[1]~29_combout\ : std_logic;
SIGNAL \reg[1]~_emulated_q\ : std_logic;
SIGNAL \reg[1]~6_combout\ : std_logic;
SIGNAL \reg~30_combout\ : std_logic;
SIGNAL \reg[2]~9_combout\ : std_logic;
SIGNAL \reg[2]~_emulated_q\ : std_logic;
SIGNAL \reg[2]~8_combout\ : std_logic;
SIGNAL \reg~31_combout\ : std_logic;
SIGNAL \reg[3]~11_combout\ : std_logic;
SIGNAL \reg[3]~_emulated_q\ : std_logic;
SIGNAL \reg[3]~10_combout\ : std_logic;
SIGNAL \reg~32_combout\ : std_logic;
SIGNAL \reg[4]~13_combout\ : std_logic;
SIGNAL \reg[4]~_emulated_q\ : std_logic;
SIGNAL \reg[4]~12_combout\ : std_logic;
SIGNAL \reg~33_combout\ : std_logic;
SIGNAL \reg[5]~15_combout\ : std_logic;
SIGNAL \reg[5]~_emulated_q\ : std_logic;
SIGNAL \reg[5]~14_combout\ : std_logic;
SIGNAL \reg~34_combout\ : std_logic;
SIGNAL \reg[6]~17_combout\ : std_logic;
SIGNAL \reg[6]~_emulated_q\ : std_logic;
SIGNAL \reg[6]~16_combout\ : std_logic;
SIGNAL \ssr~input_o\ : std_logic;
SIGNAL \reg~35_combout\ : std_logic;
SIGNAL \reg[7]~5_combout\ : std_logic;
SIGNAL \reg[7]~_emulated_q\ : std_logic;
SIGNAL \reg[7]~4_combout\ : std_logic;
SIGNAL \ssl~input_o\ : std_logic;
SIGNAL \reg~39_combout\ : std_logic;
SIGNAL \reg[0]~3_combout\ : std_logic;
SIGNAL \reg[0]~_emulated_q\ : std_logic;
SIGNAL \reg[0]~2_combout\ : std_logic;
SIGNAL \sor~0_combout\ : std_logic;
SIGNAL \sor~reg0_q\ : std_logic;
SIGNAL \sol~0_combout\ : std_logic;
SIGNAL \sol~reg0_q\ : std_logic;
SIGNAL \qo[0]~reg0_q\ : std_logic;
SIGNAL \qo[1]~reg0_q\ : std_logic;
SIGNAL \qo[2]~reg0_q\ : std_logic;
SIGNAL \qo[3]~reg0_q\ : std_logic;
SIGNAL \qo[4]~reg0_q\ : std_logic;
SIGNAL \qo[5]~reg0_q\ : std_logic;
SIGNAL \qo[6]~reg0_q\ : std_logic;
SIGNAL \qo[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pi[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ssr~input_o\ : std_logic;
SIGNAL \ALT_INV_pi[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ssl~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rstn~input_o\ : std_logic;
SIGNAL \ALT_INV_setn~input_o\ : std_logic;
SIGNAL \ALT_INV_reg[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_reg~34_combout\ : std_logic;
SIGNAL \ALT_INV_reg~33_combout\ : std_logic;
SIGNAL \ALT_INV_reg~32_combout\ : std_logic;
SIGNAL \ALT_INV_reg~31_combout\ : std_logic;
SIGNAL \ALT_INV_reg~30_combout\ : std_logic;
SIGNAL \ALT_INV_reg~28_combout\ : std_logic;
SIGNAL \ALT_INV_reg[7]~27_combout\ : std_logic;
SIGNAL \ALT_INV_reg[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg[6]~16_combout\ : std_logic;
SIGNAL \ALT_INV_reg[6]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[5]~14_combout\ : std_logic;
SIGNAL \ALT_INV_reg[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[4]~12_combout\ : std_logic;
SIGNAL \ALT_INV_reg[4]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[3]~10_combout\ : std_logic;
SIGNAL \ALT_INV_reg[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_reg[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_reg[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[7]~4_combout\ : std_logic;
SIGNAL \ALT_INV_reg[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_reg[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_reg[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_qo[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sol~reg0_q\ : std_logic;
SIGNAL \ALT_INV_sor~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reg~39_combout\ : std_logic;
SIGNAL \ALT_INV_reg~35_combout\ : std_logic;

BEGIN

ww_ssr <= ssr;
ww_ssl <= ssl;
ww_pi <= pi;
ww_sel <= sel;
ww_clk <= clk;
ww_setn <= setn;
ww_rstn <= rstn;
sor <= ww_sor;
sol <= ww_sol;
qo <= ww_qo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pi[6]~input_o\ <= NOT \pi[6]~input_o\;
\ALT_INV_pi[5]~input_o\ <= NOT \pi[5]~input_o\;
\ALT_INV_pi[4]~input_o\ <= NOT \pi[4]~input_o\;
\ALT_INV_pi[3]~input_o\ <= NOT \pi[3]~input_o\;
\ALT_INV_pi[2]~input_o\ <= NOT \pi[2]~input_o\;
\ALT_INV_pi[1]~input_o\ <= NOT \pi[1]~input_o\;
\ALT_INV_pi[7]~input_o\ <= NOT \pi[7]~input_o\;
\ALT_INV_ssr~input_o\ <= NOT \ssr~input_o\;
\ALT_INV_pi[0]~input_o\ <= NOT \pi[0]~input_o\;
\ALT_INV_ssl~input_o\ <= NOT \ssl~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_sel[2]~input_o\ <= NOT \sel[2]~input_o\;
\ALT_INV_rstn~input_o\ <= NOT \rstn~input_o\;
\ALT_INV_setn~input_o\ <= NOT \setn~input_o\;
\ALT_INV_reg[0]~1_combout\ <= NOT \reg[0]~1_combout\;
\ALT_INV_reg~34_combout\ <= NOT \reg~34_combout\;
\ALT_INV_reg~33_combout\ <= NOT \reg~33_combout\;
\ALT_INV_reg~32_combout\ <= NOT \reg~32_combout\;
\ALT_INV_reg~31_combout\ <= NOT \reg~31_combout\;
\ALT_INV_reg~30_combout\ <= NOT \reg~30_combout\;
\ALT_INV_reg~28_combout\ <= NOT \reg~28_combout\;
\ALT_INV_reg[7]~27_combout\ <= NOT \reg[7]~27_combout\;
\ALT_INV_reg[0]~0_combout\ <= NOT \reg[0]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_reg[6]~16_combout\ <= NOT \reg[6]~16_combout\;
\ALT_INV_reg[6]~_emulated_q\ <= NOT \reg[6]~_emulated_q\;
\ALT_INV_reg[5]~14_combout\ <= NOT \reg[5]~14_combout\;
\ALT_INV_reg[5]~_emulated_q\ <= NOT \reg[5]~_emulated_q\;
\ALT_INV_reg[4]~12_combout\ <= NOT \reg[4]~12_combout\;
\ALT_INV_reg[4]~_emulated_q\ <= NOT \reg[4]~_emulated_q\;
\ALT_INV_reg[3]~10_combout\ <= NOT \reg[3]~10_combout\;
\ALT_INV_reg[3]~_emulated_q\ <= NOT \reg[3]~_emulated_q\;
\ALT_INV_reg[2]~8_combout\ <= NOT \reg[2]~8_combout\;
\ALT_INV_reg[2]~_emulated_q\ <= NOT \reg[2]~_emulated_q\;
\ALT_INV_reg[1]~6_combout\ <= NOT \reg[1]~6_combout\;
\ALT_INV_reg[1]~_emulated_q\ <= NOT \reg[1]~_emulated_q\;
\ALT_INV_reg[7]~4_combout\ <= NOT \reg[7]~4_combout\;
\ALT_INV_reg[7]~_emulated_q\ <= NOT \reg[7]~_emulated_q\;
\ALT_INV_reg[0]~2_combout\ <= NOT \reg[0]~2_combout\;
\ALT_INV_reg[0]~_emulated_q\ <= NOT \reg[0]~_emulated_q\;
\ALT_INV_qo[0]~0_combout\ <= NOT \qo[0]~0_combout\;
\ALT_INV_sol~reg0_q\ <= NOT \sol~reg0_q\;
\ALT_INV_sor~reg0_q\ <= NOT \sor~reg0_q\;
\ALT_INV_reg~39_combout\ <= NOT \reg~39_combout\;
\ALT_INV_reg~35_combout\ <= NOT \reg~35_combout\;

-- Location: IOOBUF_X68_Y32_N79
\sor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sor~reg0_q\,
	devoe => ww_devoe,
	o => ww_sor);

-- Location: IOOBUF_X68_Y32_N62
\sol~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sol~reg0_q\,
	devoe => ww_devoe,
	o => ww_sol);

-- Location: IOOBUF_X68_Y27_N5
\qo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(0));

-- Location: IOOBUF_X68_Y27_N39
\qo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(1));

-- Location: IOOBUF_X68_Y24_N5
\qo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(2));

-- Location: IOOBUF_X68_Y32_N45
\qo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(3));

-- Location: IOOBUF_X68_Y33_N56
\qo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(4));

-- Location: IOOBUF_X68_Y32_N96
\qo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(5));

-- Location: IOOBUF_X68_Y27_N56
\qo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(6));

-- Location: IOOBUF_X68_Y27_N22
\qo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_qo(7));

-- Location: IOIBUF_X21_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y26_N21
\rstn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

-- Location: IOIBUF_X68_Y19_N55
\setn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setn,
	o => \setn~input_o\);

-- Location: LABCELL_X64_Y26_N48
\qo[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \qo[0]~0_combout\ = ( \setn~input_o\ & ( \rstn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rstn~input_o\,
	datae => \ALT_INV_setn~input_o\,
	combout => \qo[0]~0_combout\);

-- Location: IOIBUF_X68_Y26_N38
\sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X68_Y26_N4
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X68_Y26_N55
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LABCELL_X64_Y26_N21
\reg[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[7]~27_combout\ = (\rstn~input_o\ & !\setn~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rstn~input_o\,
	datad => \ALT_INV_setn~input_o\,
	combout => \reg[7]~27_combout\);

-- Location: LABCELL_X64_Y26_N12
\reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[0]~1_combout\ = ( \reg[0]~1_combout\ & ( \rstn~input_o\ ) ) # ( !\reg[0]~1_combout\ & ( (\rstn~input_o\ & \reg[7]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rstn~input_o\,
	datac => \ALT_INV_reg[7]~27_combout\,
	dataf => \ALT_INV_reg[0]~1_combout\,
	combout => \reg[0]~1_combout\);

-- Location: LABCELL_X64_Y26_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\sel[0]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X68_Y22_N61
\pi[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(0),
	o => \pi[0]~input_o\);

-- Location: IOIBUF_X68_Y24_N38
\pi[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(7),
	o => \pi[7]~input_o\);

-- Location: IOIBUF_X68_Y24_N21
\pi[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(6),
	o => \pi[6]~input_o\);

-- Location: IOIBUF_X68_Y19_N4
\pi[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(5),
	o => \pi[5]~input_o\);

-- Location: IOIBUF_X68_Y19_N21
\pi[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(4),
	o => \pi[4]~input_o\);

-- Location: IOIBUF_X68_Y22_N95
\pi[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(3),
	o => \pi[3]~input_o\);

-- Location: IOIBUF_X68_Y19_N38
\pi[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(2),
	o => \pi[2]~input_o\);

-- Location: IOIBUF_X68_Y22_N44
\pi[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pi(1),
	o => \pi[1]~input_o\);

-- Location: LABCELL_X65_Y26_N45
\reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~28_combout\ = ( \reg[0]~2_combout\ & ( (!\sel[0]~input_o\) # ((\reg[2]~8_combout\) # (\sel[1]~input_o\)) ) ) # ( !\reg[0]~2_combout\ & ( (\sel[0]~input_o\ & (!\sel[1]~input_o\ & \reg[2]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_reg[2]~8_combout\,
	dataf => \ALT_INV_reg[0]~2_combout\,
	combout => \reg~28_combout\);

-- Location: LABCELL_X65_Y26_N18
\reg[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[1]~7_combout\ = ( \reg~28_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[1]~input_o\))) ) ) # ( !\reg~28_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pi[1]~input_o\,
	dataf => \ALT_INV_reg~28_combout\,
	combout => \reg[1]~7_combout\);

-- Location: LABCELL_X64_Y26_N27
\reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[0]~0_combout\ = (!\rstn~input_o\) # (\reg[7]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[7]~27_combout\,
	datab => \ALT_INV_rstn~input_o\,
	combout => \reg[0]~0_combout\);

-- Location: LABCELL_X64_Y26_N45
\reg[1]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[1]~29_combout\ = ( \sel[0]~input_o\ ) # ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \reg[1]~29_combout\);

-- Location: FF_X65_Y26_N19
\reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[1]~7_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N12
\reg[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[1]~6_combout\ = ( \reg[1]~_emulated_q\ & ( (\rstn~input_o\ & ((!\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) ) # ( !\reg[1]~_emulated_q\ & ( (\rstn~input_o\ & ((\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn~input_o\,
	datab => \ALT_INV_reg[7]~27_combout\,
	datad => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg[1]~_emulated_q\,
	combout => \reg[1]~6_combout\);

-- Location: LABCELL_X65_Y26_N33
\reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~30_combout\ = ( \reg[1]~6_combout\ & ( (!\sel[0]~input_o\) # ((\reg[3]~10_combout\) # (\sel[1]~input_o\)) ) ) # ( !\reg[1]~6_combout\ & ( (\sel[0]~input_o\ & (!\sel[1]~input_o\ & \reg[3]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_reg[3]~10_combout\,
	dataf => \ALT_INV_reg[1]~6_combout\,
	combout => \reg~30_combout\);

-- Location: LABCELL_X65_Y26_N30
\reg[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[2]~9_combout\ = ( \reg~30_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[2]~input_o\))) ) ) # ( !\reg~30_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pi[2]~input_o\,
	datad => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg~30_combout\,
	combout => \reg[2]~9_combout\);

-- Location: FF_X65_Y26_N31
\reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[2]~9_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N15
\reg[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[2]~8_combout\ = ( \reg[2]~_emulated_q\ & ( (\rstn~input_o\ & ((!\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) ) # ( !\reg[2]~_emulated_q\ & ( (\rstn~input_o\ & ((\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg[7]~27_combout\,
	datac => \ALT_INV_rstn~input_o\,
	datad => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg[2]~_emulated_q\,
	combout => \reg[2]~8_combout\);

-- Location: LABCELL_X65_Y26_N48
\reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~31_combout\ = ( \reg[4]~12_combout\ & ( ((\sel[0]~input_o\ & !\sel[1]~input_o\)) # (\reg[2]~8_combout\) ) ) # ( !\reg[4]~12_combout\ & ( (\reg[2]~8_combout\ & ((!\sel[0]~input_o\) # (\sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg[2]~8_combout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_reg[4]~12_combout\,
	combout => \reg~31_combout\);

-- Location: LABCELL_X65_Y26_N51
\reg[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[3]~11_combout\ = ( \reg~31_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[3]~input_o\))) ) ) # ( !\reg~31_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_pi[3]~input_o\,
	dataf => \ALT_INV_reg~31_combout\,
	combout => \reg[3]~11_combout\);

-- Location: FF_X65_Y26_N53
\reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[3]~11_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N57
\reg[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[3]~10_combout\ = ( \reg[3]~_emulated_q\ & ( (\rstn~input_o\ & ((!\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) ) # ( !\reg[3]~_emulated_q\ & ( (\rstn~input_o\ & ((\reg[7]~27_combout\) # (\reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_reg[7]~27_combout\,
	datad => \ALT_INV_rstn~input_o\,
	dataf => \ALT_INV_reg[3]~_emulated_q\,
	combout => \reg[3]~10_combout\);

-- Location: LABCELL_X64_Y26_N9
\reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~32_combout\ = ( \reg[5]~14_combout\ & ( \reg[3]~10_combout\ ) ) # ( !\reg[5]~14_combout\ & ( \reg[3]~10_combout\ & ( (!\sel[0]~input_o\) # (\sel[1]~input_o\) ) ) ) # ( \reg[5]~14_combout\ & ( !\reg[3]~10_combout\ & ( (\sel[0]~input_o\ & 
-- !\sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_reg[5]~14_combout\,
	dataf => \ALT_INV_reg[3]~10_combout\,
	combout => \reg~32_combout\);

-- Location: LABCELL_X64_Y26_N42
\reg[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[4]~13_combout\ = ( \reg~32_combout\ & ( !\reg[0]~1_combout\ $ (((!\pi[4]~input_o\ & \Equal0~0_combout\))) ) ) # ( !\reg~32_combout\ & ( !\reg[0]~1_combout\ $ (((!\pi[4]~input_o\) # (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pi[4]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg~32_combout\,
	combout => \reg[4]~13_combout\);

-- Location: FF_X64_Y26_N44
\reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[4]~13_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4]~_emulated_q\);

-- Location: LABCELL_X64_Y26_N24
\reg[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[4]~12_combout\ = ( \reg[4]~_emulated_q\ & ( (\rstn~input_o\ & ((!\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) ) # ( !\reg[4]~_emulated_q\ & ( (\rstn~input_o\ & ((\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[7]~27_combout\,
	datab => \ALT_INV_rstn~input_o\,
	datac => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg[4]~_emulated_q\,
	combout => \reg[4]~12_combout\);

-- Location: LABCELL_X64_Y26_N18
\reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~33_combout\ = ( \reg[6]~16_combout\ & ( ((\sel[0]~input_o\ & !\sel[1]~input_o\)) # (\reg[4]~12_combout\) ) ) # ( !\reg[6]~16_combout\ & ( (\reg[4]~12_combout\ & ((!\sel[0]~input_o\) # (\sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000011000000111100111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_reg[4]~12_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_reg[6]~16_combout\,
	combout => \reg~33_combout\);

-- Location: LABCELL_X64_Y26_N33
\reg[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[5]~15_combout\ = ( \pi[5]~input_o\ & ( \reg~33_combout\ & ( !\reg[0]~1_combout\ ) ) ) # ( !\pi[5]~input_o\ & ( \reg~33_combout\ & ( !\reg[0]~1_combout\ $ (\Equal0~0_combout\) ) ) ) # ( \pi[5]~input_o\ & ( !\reg~33_combout\ & ( !\reg[0]~1_combout\ $ 
-- (!\Equal0~0_combout\) ) ) ) # ( !\pi[5]~input_o\ & ( !\reg~33_combout\ & ( \reg[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110011000011110000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_pi[5]~input_o\,
	dataf => \ALT_INV_reg~33_combout\,
	combout => \reg[5]~15_combout\);

-- Location: FF_X64_Y26_N35
\reg[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[5]~15_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5]~_emulated_q\);

-- Location: LABCELL_X64_Y26_N3
\reg[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[5]~14_combout\ = ( \reg[7]~27_combout\ & ( \reg[5]~_emulated_q\ & ( \rstn~input_o\ ) ) ) # ( !\reg[7]~27_combout\ & ( \reg[5]~_emulated_q\ & ( (\rstn~input_o\ & !\reg[0]~1_combout\) ) ) ) # ( \reg[7]~27_combout\ & ( !\reg[5]~_emulated_q\ & ( 
-- \rstn~input_o\ ) ) ) # ( !\reg[7]~27_combout\ & ( !\reg[5]~_emulated_q\ & ( (\rstn~input_o\ & \reg[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rstn~input_o\,
	datac => \ALT_INV_reg[0]~1_combout\,
	datae => \ALT_INV_reg[7]~27_combout\,
	dataf => \ALT_INV_reg[5]~_emulated_q\,
	combout => \reg[5]~14_combout\);

-- Location: LABCELL_X65_Y26_N42
\reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~34_combout\ = ( \reg[7]~4_combout\ & ( ((\sel[0]~input_o\ & !\sel[1]~input_o\)) # (\reg[5]~14_combout\) ) ) # ( !\reg[7]~4_combout\ & ( (\reg[5]~14_combout\ & ((!\sel[0]~input_o\) # (\sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_reg[5]~14_combout\,
	dataf => \ALT_INV_reg[7]~4_combout\,
	combout => \reg~34_combout\);

-- Location: LABCELL_X65_Y26_N54
\reg[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[6]~17_combout\ = ( \reg~34_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[6]~input_o\))) ) ) # ( !\reg~34_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pi[6]~input_o\,
	dataf => \ALT_INV_reg~34_combout\,
	combout => \reg[6]~17_combout\);

-- Location: FF_X65_Y26_N56
\reg[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[6]~17_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	ena => \reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N39
\reg[6]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[6]~16_combout\ = ( \reg[6]~_emulated_q\ & ( (\rstn~input_o\ & ((!\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) ) # ( !\reg[6]~_emulated_q\ & ( (\rstn~input_o\ & ((\reg[0]~1_combout\) # (\reg[7]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn~input_o\,
	datac => \ALT_INV_reg[7]~27_combout\,
	datad => \ALT_INV_reg[0]~1_combout\,
	dataf => \ALT_INV_reg[6]~_emulated_q\,
	combout => \reg[6]~16_combout\);

-- Location: IOIBUF_X68_Y24_N55
\ssr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ssr,
	o => \ssr~input_o\);

-- Location: LABCELL_X65_Y26_N24
\reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~35_combout\ = ( !\sel[2]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\reg[7]~4_combout\)) # (\sel[0]~input_o\ & (((\ssr~input_o\)))))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\ & ((\reg[6]~16_combout\))) # (\sel[0]~input_o\ & 
-- (\reg[7]~4_combout\))))) ) ) # ( \sel[2]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\reg[7]~4_combout\)) # (\sel[0]~input_o\ & (((\reg[0]~2_combout\)))))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\ & ((\reg[6]~16_combout\))) # 
-- (\sel[0]~input_o\ & (\reg[7]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010000011101010001000001110101110111000111010111011100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[7]~4_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_reg[0]~2_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_reg[6]~16_combout\,
	datag => \ALT_INV_ssr~input_o\,
	combout => \reg~35_combout\);

-- Location: LABCELL_X65_Y26_N3
\reg[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[7]~5_combout\ = ( \reg~35_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[7]~input_o\))) ) ) # ( !\reg~35_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011010011001101010101001100110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_pi[7]~input_o\,
	dataf => \ALT_INV_reg~35_combout\,
	combout => \reg[7]~5_combout\);

-- Location: FF_X65_Y26_N5
\reg[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[7]~5_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[7]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N36
\reg[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[7]~4_combout\ = (\rstn~input_o\ & ((!\reg[7]~_emulated_q\ $ (!\reg[0]~1_combout\)) # (\reg[7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010001000101010101000100010101010100010001010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn~input_o\,
	datab => \ALT_INV_reg[7]~27_combout\,
	datac => \ALT_INV_reg[7]~_emulated_q\,
	datad => \ALT_INV_reg[0]~1_combout\,
	combout => \reg[7]~4_combout\);

-- Location: IOIBUF_X68_Y22_N78
\ssl~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ssl,
	o => \ssl~input_o\);

-- Location: LABCELL_X65_Y26_N6
\reg~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~39_combout\ = ( !\sel[2]~input_o\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (((\reg[0]~2_combout\)))) # (\sel[1]~input_o\ & (\ssl~input_o\)))) # (\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (((\reg[1]~6_combout\)))) # (\sel[1]~input_o\ & 
-- (((\reg[0]~2_combout\)))))) ) ) # ( \sel[2]~input_o\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (((\reg[0]~2_combout\)))) # (\sel[1]~input_o\ & (\reg[7]~4_combout\)))) # (\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (((\reg[1]~6_combout\)))) # 
-- (\sel[1]~input_o\ & (((\reg[0]~2_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001000110000000100100011010011011110111111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_reg[7]~4_combout\,
	datad => \ALT_INV_reg[1]~6_combout\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_reg[0]~2_combout\,
	datag => \ALT_INV_ssl~input_o\,
	combout => \reg~39_combout\);

-- Location: LABCELL_X65_Y26_N0
\reg[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[0]~3_combout\ = ( \reg~39_combout\ & ( !\reg[0]~1_combout\ $ (((\Equal0~0_combout\ & !\pi[0]~input_o\))) ) ) # ( !\reg~39_combout\ & ( !\reg[0]~1_combout\ $ (((!\Equal0~0_combout\) # (!\pi[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011010011001101010101001100110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_pi[0]~input_o\,
	dataf => \ALT_INV_reg~39_combout\,
	combout => \reg[0]~3_combout\);

-- Location: FF_X65_Y26_N2
\reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[0]~3_combout\,
	clrn => \ALT_INV_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0]~_emulated_q\);

-- Location: LABCELL_X65_Y26_N21
\reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[0]~2_combout\ = ( \rstn~input_o\ & ( (!\reg[0]~1_combout\ $ (!\reg[0]~_emulated_q\)) # (\reg[7]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg[0]~1_combout\,
	datac => \ALT_INV_reg[7]~27_combout\,
	datad => \ALT_INV_reg[0]~_emulated_q\,
	dataf => \ALT_INV_rstn~input_o\,
	combout => \reg[0]~2_combout\);

-- Location: LABCELL_X64_Y26_N36
\sor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sor~0_combout\ = ( \sor~reg0_q\ & ( \reg[0]~2_combout\ ) ) # ( !\sor~reg0_q\ & ( \reg[0]~2_combout\ & ( (\qo[0]~0_combout\ & (!\sel[2]~input_o\ & (!\sel[1]~input_o\ & \sel[0]~input_o\))) ) ) ) # ( \sor~reg0_q\ & ( !\reg[0]~2_combout\ & ( 
-- (!\qo[0]~0_combout\) # (((!\sel[0]~input_o\) # (\sel[1]~input_o\)) # (\sel[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_qo[0]~0_combout\,
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sor~reg0_q\,
	dataf => \ALT_INV_reg[0]~2_combout\,
	combout => \sor~0_combout\);

-- Location: FF_X64_Y26_N37
\sor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sor~reg0_q\);

-- Location: LABCELL_X64_Y26_N54
\sol~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sol~0_combout\ = ( \sol~reg0_q\ & ( \reg[7]~4_combout\ ) ) # ( !\sol~reg0_q\ & ( \reg[7]~4_combout\ & ( (\qo[0]~0_combout\ & (!\sel[0]~input_o\ & (!\sel[2]~input_o\ & \sel[1]~input_o\))) ) ) ) # ( \sol~reg0_q\ & ( !\reg[7]~4_combout\ & ( 
-- (!\qo[0]~0_combout\) # (((!\sel[1]~input_o\) # (\sel[2]~input_o\)) # (\sel[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_qo[0]~0_combout\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[2]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sol~reg0_q\,
	dataf => \ALT_INV_reg[7]~4_combout\,
	combout => \sol~0_combout\);

-- Location: FF_X64_Y26_N55
\sol~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \sol~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sol~reg0_q\);

-- Location: FF_X65_Y26_N47
\qo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg[0]~2_combout\,
	sload => VCC,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[0]~reg0_q\);

-- Location: FF_X65_Y26_N13
\qo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[1]~6_combout\,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[1]~reg0_q\);

-- Location: FF_X65_Y26_N16
\qo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[2]~8_combout\,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[2]~reg0_q\);

-- Location: FF_X65_Y26_N43
\qo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg[3]~10_combout\,
	sload => VCC,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[3]~reg0_q\);

-- Location: FF_X64_Y26_N14
\qo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg[4]~12_combout\,
	sload => VCC,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[4]~reg0_q\);

-- Location: FF_X64_Y26_N10
\qo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg[5]~14_combout\,
	sload => VCC,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[5]~reg0_q\);

-- Location: FF_X65_Y26_N40
\qo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[6]~16_combout\,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[6]~reg0_q\);

-- Location: FF_X65_Y26_N37
\qo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[7]~4_combout\,
	ena => \qo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[7]~reg0_q\);

-- Location: MLABCELL_X55_Y46_N3
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


