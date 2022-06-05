-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/05/2022 18:22:30"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KeyScan IS
    PORT (
	Kscan : IN std_logic;
	Clr : IN std_logic;
	MCLK : IN std_logic;
	KeyLines : IN std_logic_vector(3 DOWNTO 0);
	Kpress : OUT std_logic;
	K : OUT std_logic_vector(3 DOWNTO 0)
	);
END KeyScan;

-- Design Ports Information
-- KeyLines[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kpress	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kscan	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KeyLines[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KeyLines[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KeyLines[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyScan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Kscan : std_logic;
SIGNAL ww_Clr : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_KeyLines : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kpress : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KeyLines[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Kpress~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Kscan~input_o\ : std_logic;
SIGNAL \Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \Clr~input_o\ : std_logic;
SIGNAL \Clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \KeyLines[3]~input_o\ : std_logic;
SIGNAL \KeyLines[2]~input_o\ : std_logic;
SIGNAL \KeyLines[1]~input_o\ : std_logic;
SIGNAL \PENC0|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \REG|UFFD0|Q~q\ : std_logic;
SIGNAL \PENC0|OUTPUT[1]~1_combout\ : std_logic;
SIGNAL \REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ALT_INV_MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Kscan <= Kscan;
ww_Clr <= Clr;
ww_MCLK <= MCLK;
ww_KeyLines <= KeyLines;
Kpress <= ww_Kpress;
K <= ww_K;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\ALT_INV_MCLK~inputclkctrl_outclk\ <= NOT \MCLK~inputclkctrl_outclk\;
\ALT_INV_Clr~inputclkctrl_outclk\ <= NOT \Clr~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X66_Y54_N16
\Kpress~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Kpress~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|UFFD1|Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|UFFD1|Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G19
\MCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N15
\Kscan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kscan,
	o => \Kscan~input_o\);

-- Location: LCCOMB_X54_Y53_N24
\Cont|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|UFFD0|Q~0_combout\ = \Kscan~input_o\ $ (\Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datac => \Cont|UFFD0|Q~q\,
	combout => \Cont|UFFD0|Q~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\Clr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr,
	o => \Clr~input_o\);

-- Location: CLKCTRL_G18
\Clr~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr~inputclkctrl_outclk\);

-- Location: FF_X54_Y53_N25
\Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \Cont|UFFD0|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X54_Y53_N22
\Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|UFFD1|Q~0_combout\ = \Cont|UFFD1|Q~q\ $ (((\Kscan~input_o\ & \Cont|UFFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datac => \Cont|UFFD1|Q~q\,
	datad => \Cont|UFFD0|Q~q\,
	combout => \Cont|UFFD1|Q~0_combout\);

-- Location: FF_X54_Y53_N23
\Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \Cont|UFFD1|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|UFFD1|Q~q\);

-- Location: IOIBUF_X16_Y0_N8
\KeyLines[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KeyLines(3),
	o => \KeyLines[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\KeyLines[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KeyLines(2),
	o => \KeyLines[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\KeyLines[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KeyLines(1),
	o => \KeyLines[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\PENC0|OUTPUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PENC0|OUTPUT[0]~0_combout\ = ((\KeyLines[2]~input_o\ & !\KeyLines[1]~input_o\)) # (!\KeyLines[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyLines[3]~input_o\,
	datac => \KeyLines[2]~input_o\,
	datad => \KeyLines[1]~input_o\,
	combout => \PENC0|OUTPUT[0]~0_combout\);

-- Location: FF_X16_Y1_N1
\REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \PENC0|OUTPUT[0]~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|UFFD0|Q~q\);

-- Location: LCCOMB_X16_Y1_N6
\PENC0|OUTPUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PENC0|OUTPUT[1]~1_combout\ = (!\KeyLines[2]~input_o\) # (!\KeyLines[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyLines[3]~input_o\,
	datac => \KeyLines[2]~input_o\,
	combout => \PENC0|OUTPUT[1]~1_combout\);

-- Location: FF_X16_Y1_N7
\REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \PENC0|OUTPUT[1]~1_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|UFFD1|Q~q\);

-- Location: IOIBUF_X56_Y0_N15
\KeyLines[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KeyLines(0),
	o => \KeyLines[0]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Kpress <= \Kpress~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;
END structure;


