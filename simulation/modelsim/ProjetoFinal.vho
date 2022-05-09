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

-- DATE "05/09/2022 19:58:00"

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

ENTITY 	SerialReceiver IS
    PORT (
	DX : IN std_logic;
	MCLK : IN std_logic;
	CLK : IN std_logic;
	NOT_SS : IN std_logic;
	Accept : IN std_logic;
	Reset : IN std_logic;
	DataOut : BUFFER std_logic_vector(9 DOWNTO 0);
	Dxval : BUFFER std_logic;
	busy : BUFFER std_logic
	);
END SerialReceiver;

-- Design Ports Information
-- DataOut[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dxval	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DX	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NOT_SS	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Accept	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialReceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DX : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_NOT_SS : std_logic;
SIGNAL ww_Accept : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_DataOut : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Dxval : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \DataOut[8]~output_o\ : std_logic;
SIGNAL \DataOut[9]~output_o\ : std_logic;
SIGNAL \Dxval~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \DX~input_o\ : std_logic;
SIGNAL \ShiftRegister0|UFFD0|Q~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \NOT_SS~input_o\ : std_logic;
SIGNAL \Counter0|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \ParityCheck0|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \ParityCheck0|UFFD0|Q~q\ : std_logic;
SIGNAL \Counter0|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \Counter0|UFFD1|Q~q\ : std_logic;
SIGNAL \Counter0|UFFD2|Q~0_combout\ : std_logic;
SIGNAL \Counter0|UFFD2|Q~q\ : std_logic;
SIGNAL \Counter0|UFFD3|Q~0_combout\ : std_logic;
SIGNAL \Counter0|UFFD3|Q~q\ : std_logic;
SIGNAL \serialC|Selector3~0_combout\ : std_logic;
SIGNAL \serialC|Selector2~0_combout\ : std_logic;
SIGNAL \serialC|Selector2~1_combout\ : std_logic;
SIGNAL \serialC|Selector2~2_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_PCheck~q\ : std_logic;
SIGNAL \serialC|Selector0~2_combout\ : std_logic;
SIGNAL \serialC|Selector0~1_combout\ : std_logic;
SIGNAL \Accept~input_o\ : std_logic;
SIGNAL \serialC|Selector3~1_combout\ : std_logic;
SIGNAL \serialC|Selector3~2_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_DEndReception~q\ : std_logic;
SIGNAL \serialC|NextState.STATE_DConfirm~0_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_DConfirm~q\ : std_logic;
SIGNAL \serialC|Selector0~0_combout\ : std_logic;
SIGNAL \serialC|Selector0~3_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_Dwait~q\ : std_logic;
SIGNAL \Counter0|UFFD0|Q~q\ : std_logic;
SIGNAL \sDFlag~0_combout\ : std_logic;
SIGNAL \serialC|Selector1~0_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_DReceive~feeder_combout\ : std_logic;
SIGNAL \serialC|CurrentState.STATE_DReceive~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD0|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD1|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD2|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD2|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD3|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD3|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD4|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD4|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD5|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD5|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD6|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD6|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD7|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD7|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD8|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD8|Q~q\ : std_logic;
SIGNAL \ShiftRegister0|UFFD9|Q~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister0|UFFD9|Q~q\ : std_logic;
SIGNAL \serialC|Busy~combout\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DX <= DX;
ww_MCLK <= MCLK;
ww_CLK <= CLK;
ww_NOT_SS <= NOT_SS;
ww_Accept <= Accept;
ww_Reset <= Reset;
DataOut <= ww_DataOut;
Dxval <= ww_Dxval;
busy <= ww_busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
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

-- Location: IOOBUF_X46_Y54_N2
\DataOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD9|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\DataOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD8|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\DataOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD7|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DataOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD6|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\DataOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD5|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\DataOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD4|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\DataOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD3|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\DataOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD2|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\DataOut[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD1|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\DataOut[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister0|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \DataOut[9]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\Dxval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialC|CurrentState.STATE_DEndReception~q\,
	devoe => ww_devoe,
	o => \Dxval~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialC|Busy~combout\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\DX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DX,
	o => \DX~input_o\);

-- Location: LCCOMB_X51_Y53_N18
\ShiftRegister0|UFFD0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD0|Q~feeder_combout\ = \DX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DX~input_o\,
	combout => \ShiftRegister0|UFFD0|Q~feeder_combout\);

-- Location: IOIBUF_X54_Y54_N22
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

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

-- Location: IOIBUF_X51_Y54_N1
\NOT_SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NOT_SS,
	o => \NOT_SS~input_o\);

-- Location: LCCOMB_X52_Y53_N20
\Counter0|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter0|UFFD0|Q~0_combout\ = !\Counter0|UFFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter0|UFFD0|Q~q\,
	combout => \Counter0|UFFD0|Q~0_combout\);

-- Location: LCCOMB_X52_Y53_N28
\ParityCheck0|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ParityCheck0|UFFD0|Q~0_combout\ = \ParityCheck0|UFFD0|Q~q\ $ (\DX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ParityCheck0|UFFD0|Q~q\,
	datad => \DX~input_o\,
	combout => \ParityCheck0|UFFD0|Q~0_combout\);

-- Location: FF_X52_Y53_N29
\ParityCheck0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ParityCheck0|UFFD0|Q~0_combout\,
	clrn => \serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ParityCheck0|UFFD0|Q~q\);

-- Location: LCCOMB_X52_Y53_N10
\Counter0|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter0|UFFD1|Q~0_combout\ = \Counter0|UFFD1|Q~q\ $ (\Counter0|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter0|UFFD1|Q~q\,
	datad => \Counter0|UFFD0|Q~q\,
	combout => \Counter0|UFFD1|Q~0_combout\);

-- Location: FF_X52_Y53_N11
\Counter0|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Counter0|UFFD1|Q~0_combout\,
	clrn => \serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter0|UFFD1|Q~q\);

-- Location: LCCOMB_X52_Y53_N6
\Counter0|UFFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter0|UFFD2|Q~0_combout\ = \Counter0|UFFD2|Q~q\ $ (((\Counter0|UFFD1|Q~q\ & \Counter0|UFFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter0|UFFD1|Q~q\,
	datac => \Counter0|UFFD2|Q~q\,
	datad => \Counter0|UFFD0|Q~q\,
	combout => \Counter0|UFFD2|Q~0_combout\);

-- Location: FF_X52_Y53_N7
\Counter0|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Counter0|UFFD2|Q~0_combout\,
	clrn => \serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter0|UFFD2|Q~q\);

-- Location: LCCOMB_X52_Y53_N12
\Counter0|UFFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter0|UFFD3|Q~0_combout\ = \Counter0|UFFD3|Q~q\ $ (((\Counter0|UFFD2|Q~q\ & (\Counter0|UFFD0|Q~q\ & \Counter0|UFFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter0|UFFD2|Q~q\,
	datab => \Counter0|UFFD0|Q~q\,
	datac => \Counter0|UFFD3|Q~q\,
	datad => \Counter0|UFFD1|Q~q\,
	combout => \Counter0|UFFD3|Q~0_combout\);

-- Location: FF_X52_Y53_N13
\Counter0|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Counter0|UFFD3|Q~0_combout\,
	clrn => \serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter0|UFFD3|Q~q\);

-- Location: LCCOMB_X52_Y53_N0
\serialC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector3~0_combout\ = (\Counter0|UFFD0|Q~q\ & (\Counter0|UFFD3|Q~q\ & (\Counter0|UFFD1|Q~q\ & !\Counter0|UFFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter0|UFFD0|Q~q\,
	datab => \Counter0|UFFD3|Q~q\,
	datac => \Counter0|UFFD1|Q~q\,
	datad => \Counter0|UFFD2|Q~q\,
	combout => \serialC|Selector3~0_combout\);

-- Location: LCCOMB_X52_Y53_N14
\serialC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector2~0_combout\ = (\Counter0|UFFD1|Q~q\ & (!\Counter0|UFFD0|Q~q\ & !\NOT_SS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter0|UFFD1|Q~q\,
	datac => \Counter0|UFFD0|Q~q\,
	datad => \NOT_SS~input_o\,
	combout => \serialC|Selector2~0_combout\);

-- Location: LCCOMB_X52_Y53_N16
\serialC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector2~1_combout\ = (\serialC|Selector2~0_combout\ & (!\Counter0|UFFD2|Q~q\ & (\Counter0|UFFD3|Q~q\ & \serialC|CurrentState.STATE_DReceive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialC|Selector2~0_combout\,
	datab => \Counter0|UFFD2|Q~q\,
	datac => \Counter0|UFFD3|Q~q\,
	datad => \serialC|CurrentState.STATE_DReceive~q\,
	combout => \serialC|Selector2~1_combout\);

-- Location: LCCOMB_X52_Y53_N30
\serialC|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector2~2_combout\ = (\serialC|Selector2~1_combout\) # ((!\serialC|Selector3~0_combout\ & (!\NOT_SS~input_o\ & \serialC|CurrentState.STATE_PCheck~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialC|Selector3~0_combout\,
	datab => \NOT_SS~input_o\,
	datac => \serialC|CurrentState.STATE_PCheck~q\,
	datad => \serialC|Selector2~1_combout\,
	combout => \serialC|Selector2~2_combout\);

-- Location: FF_X52_Y53_N31
\serialC|CurrentState.STATE_PCheck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialC|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialC|CurrentState.STATE_PCheck~q\);

-- Location: LCCOMB_X52_Y53_N26
\serialC|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector0~2_combout\ = (\ParityCheck0|UFFD0|Q~q\ & (\DX~input_o\ & \serialC|CurrentState.STATE_PCheck~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParityCheck0|UFFD0|Q~q\,
	datab => \DX~input_o\,
	datac => \serialC|CurrentState.STATE_PCheck~q\,
	combout => \serialC|Selector0~2_combout\);

-- Location: LCCOMB_X52_Y53_N8
\serialC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector0~1_combout\ = (\NOT_SS~input_o\ & ((\serialC|CurrentState.STATE_PCheck~q\) # (!\serialC|CurrentState.STATE_Dwait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_SS~input_o\,
	datac => \serialC|CurrentState.STATE_PCheck~q\,
	datad => \serialC|CurrentState.STATE_Dwait~q\,
	combout => \serialC|Selector0~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\Accept~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Accept,
	o => \Accept~input_o\);

-- Location: LCCOMB_X52_Y53_N2
\serialC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector3~1_combout\ = (\serialC|CurrentState.STATE_PCheck~q\ & (!\NOT_SS~input_o\ & ((!\DX~input_o\) # (!\ParityCheck0|UFFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParityCheck0|UFFD0|Q~q\,
	datab => \DX~input_o\,
	datac => \serialC|CurrentState.STATE_PCheck~q\,
	datad => \NOT_SS~input_o\,
	combout => \serialC|Selector3~1_combout\);

-- Location: LCCOMB_X52_Y53_N24
\serialC|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector3~2_combout\ = (\serialC|Selector3~0_combout\ & ((\serialC|Selector3~1_combout\) # ((\serialC|CurrentState.STATE_DEndReception~q\ & !\Accept~input_o\)))) # (!\serialC|Selector3~0_combout\ & (((\serialC|CurrentState.STATE_DEndReception~q\ 
-- & !\Accept~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialC|Selector3~0_combout\,
	datab => \serialC|Selector3~1_combout\,
	datac => \serialC|CurrentState.STATE_DEndReception~q\,
	datad => \Accept~input_o\,
	combout => \serialC|Selector3~2_combout\);

-- Location: FF_X52_Y53_N25
\serialC|CurrentState.STATE_DEndReception\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialC|Selector3~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialC|CurrentState.STATE_DEndReception~q\);

-- Location: LCCOMB_X52_Y53_N22
\serialC|NextState.STATE_DConfirm~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|NextState.STATE_DConfirm~0_combout\ = (\Accept~input_o\ & ((\serialC|CurrentState.STATE_DConfirm~q\) # (\serialC|CurrentState.STATE_DEndReception~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Accept~input_o\,
	datac => \serialC|CurrentState.STATE_DConfirm~q\,
	datad => \serialC|CurrentState.STATE_DEndReception~q\,
	combout => \serialC|NextState.STATE_DConfirm~0_combout\);

-- Location: FF_X52_Y53_N23
\serialC|CurrentState.STATE_DConfirm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialC|NextState.STATE_DConfirm~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialC|CurrentState.STATE_DConfirm~q\);

-- Location: LCCOMB_X52_Y53_N18
\serialC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector0~0_combout\ = (\NOT_SS~input_o\ & ((\serialC|CurrentState.STATE_DReceive~q\) # ((!\Accept~input_o\ & \serialC|CurrentState.STATE_DConfirm~q\)))) # (!\NOT_SS~input_o\ & (!\Accept~input_o\ & (\serialC|CurrentState.STATE_DConfirm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_SS~input_o\,
	datab => \Accept~input_o\,
	datac => \serialC|CurrentState.STATE_DConfirm~q\,
	datad => \serialC|CurrentState.STATE_DReceive~q\,
	combout => \serialC|Selector0~0_combout\);

-- Location: LCCOMB_X52_Y53_N4
\serialC|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector0~3_combout\ = (!\serialC|Selector0~1_combout\ & (!\serialC|Selector0~0_combout\ & ((!\serialC|Selector3~0_combout\) # (!\serialC|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialC|Selector0~2_combout\,
	datab => \serialC|Selector0~1_combout\,
	datac => \serialC|Selector3~0_combout\,
	datad => \serialC|Selector0~0_combout\,
	combout => \serialC|Selector0~3_combout\);

-- Location: FF_X52_Y53_N5
\serialC|CurrentState.STATE_Dwait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialC|Selector0~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialC|CurrentState.STATE_Dwait~q\);

-- Location: FF_X52_Y53_N21
\Counter0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Counter0|UFFD0|Q~0_combout\,
	clrn => \serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter0|UFFD0|Q~q\);

-- Location: LCCOMB_X51_Y53_N14
\sDFlag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDFlag~0_combout\ = (!\Counter0|UFFD0|Q~q\ & (\Counter0|UFFD3|Q~q\ & (!\Counter0|UFFD2|Q~q\ & \Counter0|UFFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter0|UFFD0|Q~q\,
	datab => \Counter0|UFFD3|Q~q\,
	datac => \Counter0|UFFD2|Q~q\,
	datad => \Counter0|UFFD1|Q~q\,
	combout => \sDFlag~0_combout\);

-- Location: LCCOMB_X51_Y53_N0
\serialC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Selector1~0_combout\ = (!\NOT_SS~input_o\ & (((!\sDFlag~0_combout\ & \serialC|CurrentState.STATE_DReceive~q\)) # (!\serialC|CurrentState.STATE_Dwait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_SS~input_o\,
	datab => \sDFlag~0_combout\,
	datac => \serialC|CurrentState.STATE_DReceive~q\,
	datad => \serialC|CurrentState.STATE_Dwait~q\,
	combout => \serialC|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\serialC|CurrentState.STATE_DReceive~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|CurrentState.STATE_DReceive~feeder_combout\ = \serialC|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialC|Selector1~0_combout\,
	combout => \serialC|CurrentState.STATE_DReceive~feeder_combout\);

-- Location: FF_X51_Y53_N9
\serialC|CurrentState.STATE_DReceive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialC|CurrentState.STATE_DReceive~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialC|CurrentState.STATE_DReceive~q\);

-- Location: FF_X51_Y53_N19
\ShiftRegister0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD0|Q~q\);

-- Location: LCCOMB_X51_Y53_N16
\ShiftRegister0|UFFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD1|Q~feeder_combout\ = \ShiftRegister0|UFFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD0|Q~q\,
	combout => \ShiftRegister0|UFFD1|Q~feeder_combout\);

-- Location: FF_X51_Y53_N17
\ShiftRegister0|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD1|Q~q\);

-- Location: LCCOMB_X51_Y53_N10
\ShiftRegister0|UFFD2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD2|Q~feeder_combout\ = \ShiftRegister0|UFFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD1|Q~q\,
	combout => \ShiftRegister0|UFFD2|Q~feeder_combout\);

-- Location: FF_X51_Y53_N11
\ShiftRegister0|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD2|Q~q\);

-- Location: LCCOMB_X51_Y53_N28
\ShiftRegister0|UFFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD3|Q~feeder_combout\ = \ShiftRegister0|UFFD2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD2|Q~q\,
	combout => \ShiftRegister0|UFFD3|Q~feeder_combout\);

-- Location: FF_X51_Y53_N29
\ShiftRegister0|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD3|Q~q\);

-- Location: LCCOMB_X51_Y53_N6
\ShiftRegister0|UFFD4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD4|Q~feeder_combout\ = \ShiftRegister0|UFFD3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD3|Q~q\,
	combout => \ShiftRegister0|UFFD4|Q~feeder_combout\);

-- Location: FF_X51_Y53_N7
\ShiftRegister0|UFFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD4|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD4|Q~q\);

-- Location: LCCOMB_X51_Y53_N24
\ShiftRegister0|UFFD5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD5|Q~feeder_combout\ = \ShiftRegister0|UFFD4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD4|Q~q\,
	combout => \ShiftRegister0|UFFD5|Q~feeder_combout\);

-- Location: FF_X51_Y53_N25
\ShiftRegister0|UFFD5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD5|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD5|Q~q\);

-- Location: LCCOMB_X51_Y53_N2
\ShiftRegister0|UFFD6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD6|Q~feeder_combout\ = \ShiftRegister0|UFFD5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD5|Q~q\,
	combout => \ShiftRegister0|UFFD6|Q~feeder_combout\);

-- Location: FF_X51_Y53_N3
\ShiftRegister0|UFFD6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD6|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD6|Q~q\);

-- Location: LCCOMB_X51_Y53_N12
\ShiftRegister0|UFFD7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD7|Q~feeder_combout\ = \ShiftRegister0|UFFD6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD6|Q~q\,
	combout => \ShiftRegister0|UFFD7|Q~feeder_combout\);

-- Location: FF_X51_Y53_N13
\ShiftRegister0|UFFD7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD7|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD7|Q~q\);

-- Location: LCCOMB_X51_Y53_N30
\ShiftRegister0|UFFD8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD8|Q~feeder_combout\ = \ShiftRegister0|UFFD7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister0|UFFD7|Q~q\,
	combout => \ShiftRegister0|UFFD8|Q~feeder_combout\);

-- Location: FF_X51_Y53_N31
\ShiftRegister0|UFFD8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD8|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD8|Q~q\);

-- Location: LCCOMB_X51_Y53_N4
\ShiftRegister0|UFFD9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRegister0|UFFD9|Q~feeder_combout\ = \ShiftRegister0|UFFD8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRegister0|UFFD8|Q~q\,
	combout => \ShiftRegister0|UFFD9|Q~feeder_combout\);

-- Location: FF_X51_Y53_N5
\ShiftRegister0|UFFD9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ShiftRegister0|UFFD9|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister0|UFFD9|Q~q\);

-- Location: LCCOMB_X59_Y53_N28
\serialC|Busy\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialC|Busy~combout\ = (\serialC|CurrentState.STATE_DEndReception~q\) # (\serialC|CurrentState.STATE_DConfirm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialC|CurrentState.STATE_DEndReception~q\,
	datad => \serialC|CurrentState.STATE_DConfirm~q\,
	combout => \serialC|Busy~combout\);

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

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_DataOut(8) <= \DataOut[8]~output_o\;

ww_DataOut(9) <= \DataOut[9]~output_o\;

ww_Dxval <= \Dxval~output_o\;

ww_busy <= \busy~output_o\;
END structure;


