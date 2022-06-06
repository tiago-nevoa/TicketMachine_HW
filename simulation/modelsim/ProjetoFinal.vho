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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 Patches 1.02i SJ Lite Edition"

-- DATE "06/06/2022 16:26:31"

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

ENTITY 	KeyDecode IS
    PORT (
	MCLK : IN std_logic;
	KEYPAD_LIN : IN std_logic_vector(3 DOWNTO 0);
	KEYPAD_COL : OUT std_logic_vector(2 DOWNTO 0);
	Kack : IN std_logic;
	Clr : IN std_logic;
	Kval : OUT std_logic;
	K : OUT std_logic_vector(3 DOWNTO 0)
	);
END KeyDecode;

-- Design Ports Information
-- KEYPAD_COL[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kval	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kack	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyDecode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_KEYPAD_LIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEYPAD_COL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Kack : std_logic;
SIGNAL ww_Clr : std_logic;
SIGNAL ww_Kval : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \KEYPAD_COL[0]~output_o\ : std_logic;
SIGNAL \KEYPAD_COL[1]~output_o\ : std_logic;
SIGNAL \KEYPAD_COL[2]~output_o\ : std_logic;
SIGNAL \Kval~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Kack~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[0]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[3]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[1]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[2]~input_o\ : std_logic;
SIGNAL \kscan|PENC0|GS~0_combout\ : std_logic;
SIGNAL \kscan|PENC0|OUTPUT[1]~1_combout\ : std_logic;
SIGNAL \kcontrol|NextState.STATE_SAVING~0_combout\ : std_logic;
SIGNAL \Clr~input_o\ : std_logic;
SIGNAL \Clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_SAVING~q\ : std_logic;
SIGNAL \kcontrol|Selector1~0_combout\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_SAVED~feeder_combout\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_SAVED~q\ : std_logic;
SIGNAL \kcontrol|Selector2~0_combout\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_SAVE_CHECKED~q\ : std_logic;
SIGNAL \kcontrol|Selector0~0_combout\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_WAIT~q\ : std_logic;
SIGNAL \kscan|Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \kscan|Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \kscan|Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \kscan|Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \kscan|Dec|Mux2~0_combout\ : std_logic;
SIGNAL \kscan|Dec|Mux1~0_combout\ : std_logic;
SIGNAL \kscan|Dec|Mux0~0_combout\ : std_logic;
SIGNAL \kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\ : std_logic;
SIGNAL \kscan|PENC0|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \kscan|REG|UFFD0|Q~q\ : std_logic;
SIGNAL \kscan|REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ALT_INV_MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MCLK <= MCLK;
ww_KEYPAD_LIN <= KEYPAD_LIN;
KEYPAD_COL <= ww_KEYPAD_COL;
ww_Kack <= Kack;
ww_Clr <= Clr;
Kval <= ww_Kval;
K <= ww_K;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kcontrol|CurrentState.STATE_SAVING~q\);

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

-- Location: IOOBUF_X49_Y54_N30
\KEYPAD_COL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|Dec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\KEYPAD_COL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|Dec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\KEYPAD_COL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|Dec|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \KEYPAD_COL[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Kval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kcontrol|CurrentState.STATE_SAVED~q\,
	devoe => ww_devoe,
	o => \Kval~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|Cont|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|Cont|UFFD1|Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|REG|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kscan|REG|UFFD1|Q~q\,
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

-- Location: IOIBUF_X49_Y54_N1
\Kack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kack,
	o => \Kack~input_o\);

-- Location: IOIBUF_X46_Y54_N8
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

-- Location: IOIBUF_X46_Y54_N1
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

-- Location: IOIBUF_X46_Y54_N15
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

-- Location: IOIBUF_X49_Y54_N8
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

-- Location: LCCOMB_X46_Y53_N24
\kscan|PENC0|GS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|PENC0|GS~0_combout\ = (((!\KEYPAD_LIN[2]~input_o\) # (!\KEYPAD_LIN[1]~input_o\)) # (!\KEYPAD_LIN[3]~input_o\)) # (!\KEYPAD_LIN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[0]~input_o\,
	datab => \KEYPAD_LIN[3]~input_o\,
	datac => \KEYPAD_LIN[1]~input_o\,
	datad => \KEYPAD_LIN[2]~input_o\,
	combout => \kscan|PENC0|GS~0_combout\);

-- Location: LCCOMB_X46_Y53_N2
\kscan|PENC0|OUTPUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|PENC0|OUTPUT[1]~1_combout\ = (!\KEYPAD_LIN[2]~input_o\) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEYPAD_LIN[3]~input_o\,
	datad => \KEYPAD_LIN[2]~input_o\,
	combout => \kscan|PENC0|OUTPUT[1]~1_combout\);

-- Location: LCCOMB_X45_Y53_N26
\kcontrol|NextState.STATE_SAVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kcontrol|NextState.STATE_SAVING~0_combout\ = (!\kcontrol|CurrentState.STATE_WAIT~q\ & ((\kscan|PENC0|OUTPUT[1]~1_combout\) # ((!\KEYPAD_LIN[0]~input_o\) # (!\KEYPAD_LIN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kscan|PENC0|OUTPUT[1]~1_combout\,
	datab => \KEYPAD_LIN[1]~input_o\,
	datac => \KEYPAD_LIN[0]~input_o\,
	datad => \kcontrol|CurrentState.STATE_WAIT~q\,
	combout => \kcontrol|NextState.STATE_SAVING~0_combout\);

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

-- Location: FF_X45_Y53_N27
\kcontrol|CurrentState.STATE_SAVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kcontrol|NextState.STATE_SAVING~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kcontrol|CurrentState.STATE_SAVING~q\);

-- Location: LCCOMB_X45_Y53_N18
\kcontrol|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kcontrol|Selector1~0_combout\ = (\kcontrol|CurrentState.STATE_SAVING~q\) # ((!\Kack~input_o\ & \kcontrol|CurrentState.STATE_SAVED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kack~input_o\,
	datac => \kcontrol|CurrentState.STATE_SAVING~q\,
	datad => \kcontrol|CurrentState.STATE_SAVED~q\,
	combout => \kcontrol|Selector1~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\kcontrol|CurrentState.STATE_SAVED~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kcontrol|CurrentState.STATE_SAVED~feeder_combout\ = \kcontrol|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kcontrol|Selector1~0_combout\,
	combout => \kcontrol|CurrentState.STATE_SAVED~feeder_combout\);

-- Location: FF_X45_Y53_N11
\kcontrol|CurrentState.STATE_SAVED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kcontrol|CurrentState.STATE_SAVED~feeder_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kcontrol|CurrentState.STATE_SAVED~q\);

-- Location: LCCOMB_X45_Y53_N6
\kcontrol|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kcontrol|Selector2~0_combout\ = (\Kack~input_o\ & (((\kcontrol|CurrentState.STATE_SAVE_CHECKED~q\) # (\kcontrol|CurrentState.STATE_SAVED~q\)))) # (!\Kack~input_o\ & (\kscan|PENC0|GS~0_combout\ & (\kcontrol|CurrentState.STATE_SAVE_CHECKED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kack~input_o\,
	datab => \kscan|PENC0|GS~0_combout\,
	datac => \kcontrol|CurrentState.STATE_SAVE_CHECKED~q\,
	datad => \kcontrol|CurrentState.STATE_SAVED~q\,
	combout => \kcontrol|Selector2~0_combout\);

-- Location: FF_X45_Y53_N7
\kcontrol|CurrentState.STATE_SAVE_CHECKED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kcontrol|Selector2~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kcontrol|CurrentState.STATE_SAVE_CHECKED~q\);

-- Location: LCCOMB_X45_Y53_N20
\kcontrol|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kcontrol|Selector0~0_combout\ = (\kscan|PENC0|GS~0_combout\) # ((\kcontrol|CurrentState.STATE_WAIT~q\ & ((\Kack~input_o\) # (!\kcontrol|CurrentState.STATE_SAVE_CHECKED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kack~input_o\,
	datab => \kscan|PENC0|GS~0_combout\,
	datac => \kcontrol|CurrentState.STATE_WAIT~q\,
	datad => \kcontrol|CurrentState.STATE_SAVE_CHECKED~q\,
	combout => \kcontrol|Selector0~0_combout\);

-- Location: FF_X45_Y53_N21
\kcontrol|CurrentState.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \kcontrol|Selector0~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kcontrol|CurrentState.STATE_WAIT~q\);

-- Location: LCCOMB_X45_Y53_N24
\kscan|Cont|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|Cont|UFFD0|Q~0_combout\ = \kscan|Cont|UFFD0|Q~q\ $ (!\kcontrol|CurrentState.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kscan|Cont|UFFD0|Q~q\,
	datad => \kcontrol|CurrentState.STATE_WAIT~q\,
	combout => \kscan|Cont|UFFD0|Q~0_combout\);

-- Location: FF_X45_Y53_N25
\kscan|Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \kscan|Cont|UFFD0|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kscan|Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X45_Y53_N14
\kscan|Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|Cont|UFFD1|Q~0_combout\ = \kscan|Cont|UFFD1|Q~q\ $ (((\kscan|Cont|UFFD0|Q~q\ & !\kcontrol|CurrentState.STATE_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kscan|Cont|UFFD0|Q~q\,
	datac => \kscan|Cont|UFFD1|Q~q\,
	datad => \kcontrol|CurrentState.STATE_WAIT~q\,
	combout => \kscan|Cont|UFFD1|Q~0_combout\);

-- Location: FF_X45_Y53_N15
\kscan|Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCLK~inputclkctrl_outclk\,
	d => \kscan|Cont|UFFD1|Q~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kscan|Cont|UFFD1|Q~q\);

-- Location: LCCOMB_X45_Y53_N28
\kscan|Dec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|Dec|Mux2~0_combout\ = (\kscan|Cont|UFFD1|Q~q\) # (\kscan|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kscan|Cont|UFFD1|Q~q\,
	datad => \kscan|Cont|UFFD0|Q~q\,
	combout => \kscan|Dec|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y53_N22
\kscan|Dec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|Dec|Mux1~0_combout\ = (\kscan|Cont|UFFD1|Q~q\) # (!\kscan|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kscan|Cont|UFFD1|Q~q\,
	datad => \kscan|Cont|UFFD0|Q~q\,
	combout => \kscan|Dec|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y53_N16
\kscan|Dec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|Dec|Mux0~0_combout\ = (\kscan|Cont|UFFD0|Q~q\) # (!\kscan|Cont|UFFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kscan|Cont|UFFD1|Q~q\,
	datad => \kscan|Cont|UFFD0|Q~q\,
	combout => \kscan|Dec|Mux0~0_combout\);

-- Location: CLKCTRL_G10
\kcontrol|CurrentState.STATE_SAVING~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kcontrol|CurrentState.STATE_SAVING~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y53_N0
\kscan|PENC0|OUTPUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kscan|PENC0|OUTPUT[0]~0_combout\ = ((!\KEYPAD_LIN[1]~input_o\ & \KEYPAD_LIN[2]~input_o\)) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[1]~input_o\,
	datac => \KEYPAD_LIN[3]~input_o\,
	datad => \KEYPAD_LIN[2]~input_o\,
	combout => \kscan|PENC0|OUTPUT[0]~0_combout\);

-- Location: FF_X46_Y53_N1
\kscan|REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kscan|PENC0|OUTPUT[0]~0_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kscan|REG|UFFD0|Q~q\);

-- Location: FF_X46_Y53_N3
\kscan|REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kscan|PENC0|OUTPUT[1]~1_combout\,
	clrn => \ALT_INV_Clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kscan|REG|UFFD1|Q~q\);

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

ww_Kval <= \Kval~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;
END structure;


