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

-- DATE "06/06/2022 22:45:22"

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

ENTITY 	KeyboardReader IS
    PORT (
	RXclk : IN std_logic;
	MCLK : IN std_logic;
	Clr : IN std_logic;
	KEYPAD_LIN : IN std_logic_vector(3 DOWNTO 0);
	KEYPAD_COL : OUT std_logic_vector(2 DOWNTO 0);
	TXD : OUT std_logic
	);
END KeyboardReader;

-- Design Ports Information
-- KEYPAD_COL[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TXD	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXclk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyboardReader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RXclk : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_Clr : std_logic;
SIGNAL ww_KEYPAD_LIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEYPAD_COL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_TXD : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RXclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \KEYPAD_COL[0]~output_o\ : std_logic;
SIGNAL \KEYPAD_COL[1]~output_o\ : std_logic;
SIGNAL \KEYPAD_COL[2]~output_o\ : std_logic;
SIGNAL \TXD~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEYPAD_LIN[3]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[2]~input_o\ : std_logic;
SIGNAL \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[1]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[0]~input_o\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_WAIT~0_combout\ : std_logic;
SIGNAL \Clr~input_o\ : std_logic;
SIGNAL \Clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_WAIT~q\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux2~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux1~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux0~0_combout\ : std_logic;
SIGNAL \RXclk~input_o\ : std_logic;
SIGNAL \RXclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVING~q\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD3|Q~feeder_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVED~feeder_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVED~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD3|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD2|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD2|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD2|Q~q\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~0_combout\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~1_combout\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_MCLK~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RXclk <= RXclk;
ww_MCLK <= MCLK;
ww_Clr <= Clr;
ww_KEYPAD_LIN <= KEYPAD_LIN;
KEYPAD_COL <= ww_KEYPAD_COL;
TXD <= ww_TXD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kdecode|kcontrol|CurrentState.STATE_SAVING~q\);

\RXclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RXclk~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);

\Clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr~input_o\);
\ALT_INV_Clr~inputclkctrl_outclk\ <= NOT \Clr~inputclkctrl_outclk\;
\ALT_INV_MCLK~inputclkctrl_outclk\ <= NOT \MCLK~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X78_Y37_N9
\KEYPAD_COL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|Dec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[0]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\KEYPAD_COL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|Dec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\KEYPAD_COL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|Dec|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\TXD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ktransmitter|MUX|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \TXD~output_o\);

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

-- Location: IOIBUF_X78_Y36_N23
\KEYPAD_LIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(3),
	o => \KEYPAD_LIN[3]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\KEYPAD_LIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(2),
	o => \KEYPAD_LIN[2]~input_o\);

-- Location: LCCOMB_X75_Y37_N16
\kdecode|kscan|PENC0|OUTPUT[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\ = (!\KEYPAD_LIN[2]~input_o\) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEYPAD_LIN[3]~input_o\,
	datac => \KEYPAD_LIN[2]~input_o\,
	combout => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\);

-- Location: IOIBUF_X78_Y37_N1
\KEYPAD_LIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(1),
	o => \KEYPAD_LIN[1]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\KEYPAD_LIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(0),
	o => \KEYPAD_LIN[0]~input_o\);

-- Location: LCCOMB_X77_Y37_N24
\kdecode|kcontrol|CurrentState.STATE_WAIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|CurrentState.STATE_WAIT~0_combout\ = (\kdecode|kscan|PENC0|OUTPUT[1]~0_combout\) # (((\kdecode|kcontrol|CurrentState.STATE_WAIT~q\) # (!\KEYPAD_LIN[0]~input_o\)) # (!\KEYPAD_LIN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	datab => \KEYPAD_LIN[1]~input_o\,
	datac => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datad => \KEYPAD_LIN[0]~input_o\,
	combout => \kdecode|kcontrol|CurrentState.STATE_WAIT~0_combout\);

-- Location: IOIBUF_X31_Y0_N22
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

-- Location: CLKCTRL_G17
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

-- Location: FF_X77_Y37_N25
\kdecode|kcontrol|CurrentState.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kdecode|kcontrol|CurrentState.STATE_WAIT~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\);

-- Location: LCCOMB_X77_Y37_N12
\kdecode|kscan|Cont|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Cont|UFFD0|Q~0_combout\ = \kdecode|kscan|Cont|UFFD0|Q~q\ $ (!\kdecode|kcontrol|CurrentState.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	combout => \kdecode|kscan|Cont|UFFD0|Q~0_combout\);

-- Location: FF_X77_Y37_N13
\kdecode|kscan|Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \kdecode|kscan|Cont|UFFD0|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X77_Y37_N28
\kdecode|kscan|Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Cont|UFFD1|Q~0_combout\ = \kdecode|kscan|Cont|UFFD1|Q~q\ $ (((!\kdecode|kcontrol|CurrentState.STATE_WAIT~q\ & \kdecode|kscan|Cont|UFFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datac => \kdecode|kscan|Cont|UFFD1|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD0|Q~q\,
	combout => \kdecode|kscan|Cont|UFFD1|Q~0_combout\);

-- Location: FF_X77_Y37_N29
\kdecode|kscan|Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \kdecode|kscan|Cont|UFFD1|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|Cont|UFFD1|Q~q\);

-- Location: LCCOMB_X77_Y37_N14
\kdecode|kscan|Dec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux2~0_combout\ = (\kdecode|kscan|Cont|UFFD0|Q~q\) # (\kdecode|kscan|Cont|UFFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y37_N30
\kdecode|kscan|Dec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux1~0_combout\ = (\kdecode|kscan|Cont|UFFD1|Q~q\) # (!\kdecode|kscan|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y37_N18
\kdecode|kscan|Dec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux0~0_combout\ = (\kdecode|kscan|Cont|UFFD0|Q~q\) # (!\kdecode|kscan|Cont|UFFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux0~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\RXclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RXclk,
	o => \RXclk~input_o\);

-- Location: CLKCTRL_G18
\RXclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RXclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RXclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X76_Y37_N28
\ktransmitter|Cont|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD0|Q~0_combout\ = !\ktransmitter|Cont|UFFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ktransmitter|Cont|UFFD0|Q~q\,
	combout => \ktransmitter|Cont|UFFD0|Q~0_combout\);

-- Location: FF_X76_Y37_N29
\ktransmitter|Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD0|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X76_Y37_N0
\ktransmitter|Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD1|Q~0_combout\ = \ktransmitter|Cont|UFFD1|Q~q\ $ (\ktransmitter|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ktransmitter|Cont|UFFD1|Q~q\,
	datad => \ktransmitter|Cont|UFFD0|Q~q\,
	combout => \ktransmitter|Cont|UFFD1|Q~0_combout\);

-- Location: FF_X76_Y37_N1
\ktransmitter|Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD1|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD1|Q~q\);

-- Location: LCCOMB_X77_Y37_N26
\kdecode|kcontrol|NextState.STATE_SAVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\ = (!\kdecode|kcontrol|CurrentState.STATE_WAIT~q\ & ((\kdecode|kscan|PENC0|OUTPUT[1]~0_combout\) # ((!\KEYPAD_LIN[0]~input_o\) # (!\KEYPAD_LIN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	datab => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datac => \KEYPAD_LIN[1]~input_o\,
	datad => \KEYPAD_LIN[0]~input_o\,
	combout => \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\);

-- Location: FF_X77_Y37_N27
\kdecode|kcontrol|CurrentState.STATE_SAVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_SAVING~q\);

-- Location: CLKCTRL_G5
\kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y37_N12
\kdecode|kscan|REG|UFFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|REG|UFFD1|Q~feeder_combout\ = \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	combout => \kdecode|kscan|REG|UFFD1|Q~feeder_combout\);

-- Location: FF_X75_Y37_N13
\kdecode|kscan|REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kdecode|kscan|REG|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|REG|UFFD1|Q~q\);

-- Location: LCCOMB_X75_Y37_N28
\ktransmitter|REG|UFFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|REG|UFFD3|Q~feeder_combout\ = \kdecode|kscan|REG|UFFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|REG|UFFD1|Q~q\,
	combout => \ktransmitter|REG|UFFD3|Q~feeder_combout\);

-- Location: LCCOMB_X77_Y37_N20
\kdecode|kcontrol|CurrentState.STATE_SAVED~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|CurrentState.STATE_SAVED~feeder_combout\ = \kdecode|kcontrol|CurrentState.STATE_SAVING~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kcontrol|CurrentState.STATE_SAVING~q\,
	combout => \kdecode|kcontrol|CurrentState.STATE_SAVED~feeder_combout\);

-- Location: FF_X77_Y37_N21
\kdecode|kcontrol|CurrentState.STATE_SAVED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kdecode|kcontrol|CurrentState.STATE_SAVED~feeder_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\);

-- Location: FF_X75_Y37_N29
\ktransmitter|REG|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|REG|UFFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	ena => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD3|Q~q\);

-- Location: LCCOMB_X75_Y37_N6
\kdecode|kscan|PENC0|OUTPUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\ = ((\KEYPAD_LIN[2]~input_o\ & !\KEYPAD_LIN[1]~input_o\)) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEYPAD_LIN[3]~input_o\,
	datac => \KEYPAD_LIN[2]~input_o\,
	datad => \KEYPAD_LIN[1]~input_o\,
	combout => \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\);

-- Location: FF_X75_Y37_N7
\kdecode|kscan|REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|REG|UFFD0|Q~q\);

-- Location: FF_X75_Y37_N23
\ktransmitter|REG|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|REG|UFFD0|Q~q\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD2|Q~q\);

-- Location: LCCOMB_X76_Y37_N10
\ktransmitter|REG|UFFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|REG|UFFD1|Q~feeder_combout\ = \kdecode|kscan|Cont|UFFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \ktransmitter|REG|UFFD1|Q~feeder_combout\);

-- Location: FF_X76_Y37_N11
\ktransmitter|REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|REG|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	ena => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD1|Q~q\);

-- Location: FF_X76_Y37_N25
\ktransmitter|REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|Cont|UFFD0|Q~q\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD0|Q~q\);

-- Location: LCCOMB_X76_Y37_N18
\ktransmitter|Cont|UFFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD2|Q~0_combout\ = \ktransmitter|Cont|UFFD2|Q~q\ $ (((\ktransmitter|Cont|UFFD0|Q~q\ & \ktransmitter|Cont|UFFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ktransmitter|Cont|UFFD0|Q~q\,
	datac => \ktransmitter|Cont|UFFD2|Q~q\,
	datad => \ktransmitter|Cont|UFFD1|Q~q\,
	combout => \ktransmitter|Cont|UFFD2|Q~0_combout\);

-- Location: FF_X76_Y37_N19
\ktransmitter|Cont|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD2|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD2|Q~q\);

-- Location: LCCOMB_X76_Y37_N24
\ktransmitter|MUX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~0_combout\ = (\ktransmitter|Cont|UFFD0|Q~q\ & ((\ktransmitter|REG|UFFD1|Q~q\) # ((\ktransmitter|Cont|UFFD2|Q~q\)))) # (!\ktransmitter|Cont|UFFD0|Q~q\ & (((\ktransmitter|REG|UFFD0|Q~q\ & !\ktransmitter|Cont|UFFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|REG|UFFD1|Q~q\,
	datab => \ktransmitter|Cont|UFFD0|Q~q\,
	datac => \ktransmitter|REG|UFFD0|Q~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|MUX|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y37_N22
\ktransmitter|MUX|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~1_combout\ = (\ktransmitter|MUX|Mux0~0_combout\ & (\ktransmitter|REG|UFFD3|Q~q\)) # (!\ktransmitter|MUX|Mux0~0_combout\ & ((\ktransmitter|REG|UFFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ktransmitter|REG|UFFD3|Q~q\,
	datac => \ktransmitter|REG|UFFD2|Q~q\,
	datad => \ktransmitter|MUX|Mux0~0_combout\,
	combout => \ktransmitter|MUX|Mux0~1_combout\);

-- Location: LCCOMB_X76_Y37_N30
\ktransmitter|MUX|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~2_combout\ = (\ktransmitter|Cont|UFFD1|Q~q\ & (((\ktransmitter|MUX|Mux0~0_combout\)))) # (!\ktransmitter|Cont|UFFD1|Q~q\ & ((\ktransmitter|MUX|Mux0~1_combout\) # ((!\ktransmitter|Cont|UFFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|Cont|UFFD1|Q~q\,
	datab => \ktransmitter|MUX|Mux0~1_combout\,
	datac => \ktransmitter|MUX|Mux0~0_combout\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|MUX|Mux0~2_combout\);

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

ww_KEYPAD_COL(0) <= \KEYPAD_COL[0]~output_o\;

ww_KEYPAD_COL(1) <= \KEYPAD_COL[1]~output_o\;

ww_KEYPAD_COL(2) <= \KEYPAD_COL[2]~output_o\;

ww_TXD <= \TXD~output_o\;
END structure;


