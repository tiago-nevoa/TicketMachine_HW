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

-- DATE "05/12/2022 20:10:44"

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

ENTITY 	IOS IS
    PORT (
	SCLK : IN std_logic;
	SDX : IN std_logic;
	NOT_SS : IN std_logic;
	Fsh : IN std_logic;
	Reset : IN std_logic;
	busy : OUT std_logic;
	WrT : OUT std_logic;
	WrL : OUT std_logic;
	MCLK : IN std_logic;
	Dout : OUT std_logic_vector(8 DOWNTO 0)
	);
END IOS;

-- Design Ports Information
-- busy	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrT	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrL	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NOT_SS	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fsh	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IOS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_NOT_SS : std_logic;
SIGNAL ww_Fsh : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_WrT : std_logic;
SIGNAL ww_WrL : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_Dout : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \WrT~output_o\ : std_logic;
SIGNAL \WrL~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[8]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \serialR|Counter0|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \Fsh~input_o\ : std_logic;
SIGNAL \Disp|Selector0~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Disp|CurrentState.STATE_waitValidData~q\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD0|Q~feeder_combout\ : std_logic;
SIGNAL \NOT_SS~input_o\ : std_logic;
SIGNAL \serialR|Counter0|UFFD3|Q~0_combout\ : std_logic;
SIGNAL \serialR|Counter0|UFFD3|Q~q\ : std_logic;
SIGNAL \serialR|sDFlag~0_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector1~2_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_DReceive~feeder_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_DReceive~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD0|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD1|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD2|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD2|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD3|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD3|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD4|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD4|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD5|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD5|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD6|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD6|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD7|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD7|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD8|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD8|Q~q\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD9|Q~feeder_combout\ : std_logic;
SIGNAL \serialR|ShiftRegister0|UFFD9|Q~q\ : std_logic;
SIGNAL \Disp|Selector1~0_combout\ : std_logic;
SIGNAL \Disp|Selector1~1_combout\ : std_logic;
SIGNAL \Disp|CurrentState.STATE_sendTicket~q\ : std_logic;
SIGNAL \Disp|NextState.STATE_prtProtocol~0_combout\ : std_logic;
SIGNAL \Disp|CurrentState.STATE_prtProtocol~q\ : std_logic;
SIGNAL \Disp|NextState.STATE_sendLCD~0_combout\ : std_logic;
SIGNAL \Disp|CurrentState.STATE_sendLCD~q\ : std_logic;
SIGNAL \Disp|Selector2~0_combout\ : std_logic;
SIGNAL \Disp|CurrentState.STATE_finishProcess~q\ : std_logic;
SIGNAL \serialR|serialC|NextState.STATE_DConfirm~0_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_DConfirm~q\ : std_logic;
SIGNAL \serialR|ParityCheck0|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \serialR|ParityCheck0|UFFD0|Q~q\ : std_logic;
SIGNAL \serialR|serialC|Selector2~0_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector2~1_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector2~2_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_PCheck~q\ : std_logic;
SIGNAL \serialR|serialC|Selector0~0_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector0~1_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector0~2_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_Dwait~q\ : std_logic;
SIGNAL \serialR|Counter0|UFFD0|Q~q\ : std_logic;
SIGNAL \serialR|Counter0|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \serialR|Counter0|UFFD1|Q~q\ : std_logic;
SIGNAL \serialR|Counter0|UFFD2|Q~0_combout\ : std_logic;
SIGNAL \serialR|Counter0|UFFD2|Q~q\ : std_logic;
SIGNAL \serialR|serialC|Selector3~1_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector3~0_combout\ : std_logic;
SIGNAL \serialR|serialC|Selector3~2_combout\ : std_logic;
SIGNAL \serialR|serialC|CurrentState.STATE_DEndReception~q\ : std_logic;
SIGNAL \serialR|serialC|Busy~combout\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SCLK <= SCLK;
ww_SDX <= SDX;
ww_NOT_SS <= NOT_SS;
ww_Fsh <= Fsh;
ww_Reset <= Reset;
busy <= ww_busy;
WrT <= ww_WrT;
WrL <= ww_WrL;
ww_MCLK <= MCLK;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X58_Y54_N16
\busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|serialC|Busy~combout\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\WrT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp|CurrentState.STATE_sendTicket~q\,
	devoe => ww_devoe,
	o => \WrT~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\WrL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp|CurrentState.STATE_sendLCD~q\,
	devoe => ww_devoe,
	o => \WrL~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD8|Q~q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD7|Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD6|Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD5|Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD4|Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD3|Q~q\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD2|Q~q\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\Dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD1|Q~q\,
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Dout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serialR|ShiftRegister0|UFFD0|Q~q\,
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

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

-- Location: IOIBUF_X31_Y0_N1
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G18
\SCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y53_N16
\serialR|Counter0|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|Counter0|UFFD0|Q~0_combout\ = !\serialR|Counter0|UFFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|Counter0|UFFD0|Q~q\,
	combout => \serialR|Counter0|UFFD0|Q~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\Fsh~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fsh,
	o => \Fsh~input_o\);

-- Location: LCCOMB_X55_Y53_N4
\Disp|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|Selector0~0_combout\ = (!\Disp|CurrentState.STATE_finishProcess~q\ & ((\Disp|CurrentState.STATE_waitValidData~q\) # (\serialR|serialC|CurrentState.STATE_DEndReception~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Disp|CurrentState.STATE_finishProcess~q\,
	datac => \Disp|CurrentState.STATE_waitValidData~q\,
	datad => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	combout => \Disp|Selector0~0_combout\);

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

-- Location: FF_X55_Y53_N5
\Disp|CurrentState.STATE_waitValidData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Disp|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp|CurrentState.STATE_waitValidData~q\);

-- Location: IOIBUF_X56_Y54_N8
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X56_Y53_N30
\serialR|ShiftRegister0|UFFD0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD0|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDX~input_o\,
	combout => \serialR|ShiftRegister0|UFFD0|Q~feeder_combout\);

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

-- Location: LCCOMB_X54_Y53_N24
\serialR|Counter0|UFFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|Counter0|UFFD3|Q~0_combout\ = \serialR|Counter0|UFFD3|Q~q\ $ (((\serialR|Counter0|UFFD2|Q~q\ & (\serialR|Counter0|UFFD0|Q~q\ & \serialR|Counter0|UFFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|Counter0|UFFD2|Q~q\,
	datab => \serialR|Counter0|UFFD0|Q~q\,
	datac => \serialR|Counter0|UFFD3|Q~q\,
	datad => \serialR|Counter0|UFFD1|Q~q\,
	combout => \serialR|Counter0|UFFD3|Q~0_combout\);

-- Location: FF_X54_Y53_N25
\serialR|Counter0|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|Counter0|UFFD3|Q~0_combout\,
	clrn => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|Counter0|UFFD3|Q~q\);

-- Location: LCCOMB_X55_Y53_N14
\serialR|sDFlag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|sDFlag~0_combout\ = (!\serialR|Counter0|UFFD0|Q~q\ & (!\serialR|Counter0|UFFD2|Q~q\ & (\serialR|Counter0|UFFD1|Q~q\ & \serialR|Counter0|UFFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|Counter0|UFFD0|Q~q\,
	datab => \serialR|Counter0|UFFD2|Q~q\,
	datac => \serialR|Counter0|UFFD1|Q~q\,
	datad => \serialR|Counter0|UFFD3|Q~q\,
	combout => \serialR|sDFlag~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\serialR|serialC|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector1~2_combout\ = (!\NOT_SS~input_o\ & (((\serialR|serialC|CurrentState.STATE_DReceive~q\ & !\serialR|sDFlag~0_combout\)) # (!\serialR|serialC|CurrentState.STATE_Dwait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	datab => \NOT_SS~input_o\,
	datac => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	datad => \serialR|sDFlag~0_combout\,
	combout => \serialR|serialC|Selector1~2_combout\);

-- Location: LCCOMB_X56_Y53_N6
\serialR|serialC|CurrentState.STATE_DReceive~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|CurrentState.STATE_DReceive~feeder_combout\ = \serialR|serialC|Selector1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|serialC|Selector1~2_combout\,
	combout => \serialR|serialC|CurrentState.STATE_DReceive~feeder_combout\);

-- Location: FF_X56_Y53_N7
\serialR|serialC|CurrentState.STATE_DReceive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialR|serialC|CurrentState.STATE_DReceive~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|serialC|CurrentState.STATE_DReceive~q\);

-- Location: FF_X56_Y53_N31
\serialR|ShiftRegister0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD0|Q~q\);

-- Location: LCCOMB_X56_Y53_N28
\serialR|ShiftRegister0|UFFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD1|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|ShiftRegister0|UFFD0|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD1|Q~feeder_combout\);

-- Location: FF_X56_Y53_N29
\serialR|ShiftRegister0|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD1|Q~q\);

-- Location: LCCOMB_X56_Y53_N14
\serialR|ShiftRegister0|UFFD2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD2|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|ShiftRegister0|UFFD1|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD2|Q~feeder_combout\);

-- Location: FF_X56_Y53_N15
\serialR|ShiftRegister0|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD2|Q~q\);

-- Location: LCCOMB_X56_Y53_N16
\serialR|ShiftRegister0|UFFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD3|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|ShiftRegister0|UFFD2|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD3|Q~feeder_combout\);

-- Location: FF_X56_Y53_N17
\serialR|ShiftRegister0|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD3|Q~q\);

-- Location: LCCOMB_X56_Y53_N18
\serialR|ShiftRegister0|UFFD4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD4|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|ShiftRegister0|UFFD3|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD4|Q~feeder_combout\);

-- Location: FF_X56_Y53_N19
\serialR|ShiftRegister0|UFFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD4|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD4|Q~q\);

-- Location: LCCOMB_X56_Y53_N20
\serialR|ShiftRegister0|UFFD5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD5|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|ShiftRegister0|UFFD4|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD5|Q~feeder_combout\);

-- Location: FF_X56_Y53_N21
\serialR|ShiftRegister0|UFFD5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD5|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD5|Q~q\);

-- Location: LCCOMB_X56_Y53_N10
\serialR|ShiftRegister0|UFFD6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD6|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|ShiftRegister0|UFFD5|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD6|Q~feeder_combout\);

-- Location: FF_X56_Y53_N11
\serialR|ShiftRegister0|UFFD6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD6|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD6|Q~q\);

-- Location: LCCOMB_X56_Y53_N8
\serialR|ShiftRegister0|UFFD7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD7|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serialR|ShiftRegister0|UFFD6|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD7|Q~feeder_combout\);

-- Location: FF_X56_Y53_N9
\serialR|ShiftRegister0|UFFD7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD7|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD7|Q~q\);

-- Location: LCCOMB_X56_Y53_N26
\serialR|ShiftRegister0|UFFD8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD8|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|ShiftRegister0|UFFD7|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD8|Q~feeder_combout\);

-- Location: FF_X56_Y53_N27
\serialR|ShiftRegister0|UFFD8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD8|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD8|Q~q\);

-- Location: LCCOMB_X56_Y53_N12
\serialR|ShiftRegister0|UFFD9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ShiftRegister0|UFFD9|Q~feeder_combout\ = \serialR|ShiftRegister0|UFFD8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|ShiftRegister0|UFFD8|Q~q\,
	combout => \serialR|ShiftRegister0|UFFD9|Q~feeder_combout\);

-- Location: FF_X56_Y53_N13
\serialR|ShiftRegister0|UFFD9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ShiftRegister0|UFFD9|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ShiftRegister0|UFFD9|Q~q\);

-- Location: LCCOMB_X55_Y53_N2
\Disp|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|Selector1~0_combout\ = (!\Fsh~input_o\ & \Disp|CurrentState.STATE_sendTicket~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fsh~input_o\,
	datad => \Disp|CurrentState.STATE_sendTicket~q\,
	combout => \Disp|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\Disp|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|Selector1~1_combout\ = (\Disp|Selector1~0_combout\) # ((!\Disp|CurrentState.STATE_waitValidData~q\ & (\serialR|serialC|CurrentState.STATE_DEndReception~q\ & \serialR|ShiftRegister0|UFFD9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Disp|CurrentState.STATE_waitValidData~q\,
	datab => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	datac => \serialR|ShiftRegister0|UFFD9|Q~q\,
	datad => \Disp|Selector1~0_combout\,
	combout => \Disp|Selector1~1_combout\);

-- Location: FF_X55_Y53_N21
\Disp|CurrentState.STATE_sendTicket\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Disp|Selector1~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp|CurrentState.STATE_sendTicket~q\);

-- Location: LCCOMB_X55_Y53_N30
\Disp|NextState.STATE_prtProtocol~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|NextState.STATE_prtProtocol~0_combout\ = (\Fsh~input_o\ & ((\Disp|CurrentState.STATE_prtProtocol~q\) # (\Disp|CurrentState.STATE_sendTicket~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fsh~input_o\,
	datac => \Disp|CurrentState.STATE_prtProtocol~q\,
	datad => \Disp|CurrentState.STATE_sendTicket~q\,
	combout => \Disp|NextState.STATE_prtProtocol~0_combout\);

-- Location: FF_X55_Y53_N31
\Disp|CurrentState.STATE_prtProtocol\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Disp|NextState.STATE_prtProtocol~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp|CurrentState.STATE_prtProtocol~q\);

-- Location: LCCOMB_X55_Y53_N18
\Disp|NextState.STATE_sendLCD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|NextState.STATE_sendLCD~0_combout\ = (!\Disp|CurrentState.STATE_waitValidData~q\ & (!\serialR|ShiftRegister0|UFFD9|Q~q\ & \serialR|serialC|CurrentState.STATE_DEndReception~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Disp|CurrentState.STATE_waitValidData~q\,
	datac => \serialR|ShiftRegister0|UFFD9|Q~q\,
	datad => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	combout => \Disp|NextState.STATE_sendLCD~0_combout\);

-- Location: FF_X55_Y53_N19
\Disp|CurrentState.STATE_sendLCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Disp|NextState.STATE_sendLCD~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp|CurrentState.STATE_sendLCD~q\);

-- Location: LCCOMB_X55_Y53_N28
\Disp|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Disp|Selector2~0_combout\ = (\Disp|CurrentState.STATE_sendLCD~q\) # ((!\Fsh~input_o\ & \Disp|CurrentState.STATE_prtProtocol~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fsh~input_o\,
	datac => \Disp|CurrentState.STATE_prtProtocol~q\,
	datad => \Disp|CurrentState.STATE_sendLCD~q\,
	combout => \Disp|Selector2~0_combout\);

-- Location: FF_X55_Y53_N29
\Disp|CurrentState.STATE_finishProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Disp|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp|CurrentState.STATE_finishProcess~q\);

-- Location: LCCOMB_X55_Y53_N10
\serialR|serialC|NextState.STATE_DConfirm~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|NextState.STATE_DConfirm~0_combout\ = (\Disp|CurrentState.STATE_finishProcess~q\ & ((\serialR|serialC|CurrentState.STATE_DConfirm~q\) # (\serialR|serialC|CurrentState.STATE_DEndReception~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Disp|CurrentState.STATE_finishProcess~q\,
	datac => \serialR|serialC|CurrentState.STATE_DConfirm~q\,
	datad => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	combout => \serialR|serialC|NextState.STATE_DConfirm~0_combout\);

-- Location: FF_X55_Y53_N11
\serialR|serialC|CurrentState.STATE_DConfirm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialR|serialC|NextState.STATE_DConfirm~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|serialC|CurrentState.STATE_DConfirm~q\);

-- Location: LCCOMB_X55_Y53_N24
\serialR|ParityCheck0|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|ParityCheck0|UFFD0|Q~0_combout\ = \SDX~input_o\ $ (\serialR|ParityCheck0|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDX~input_o\,
	datac => \serialR|ParityCheck0|UFFD0|Q~q\,
	combout => \serialR|ParityCheck0|UFFD0|Q~0_combout\);

-- Location: FF_X55_Y53_N25
\serialR|ParityCheck0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|ParityCheck0|UFFD0|Q~0_combout\,
	clrn => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|ParityCheck0|UFFD0|Q~q\);

-- Location: LCCOMB_X55_Y53_N26
\serialR|serialC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector2~0_combout\ = (\serialR|serialC|CurrentState.STATE_PCheck~q\ & !\NOT_SS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serialR|serialC|CurrentState.STATE_PCheck~q\,
	datac => \NOT_SS~input_o\,
	combout => \serialR|serialC|Selector2~0_combout\);

-- Location: LCCOMB_X56_Y53_N4
\serialR|serialC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector2~1_combout\ = (!\NOT_SS~input_o\ & \serialR|serialC|CurrentState.STATE_DReceive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOT_SS~input_o\,
	datad => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	combout => \serialR|serialC|Selector2~1_combout\);

-- Location: LCCOMB_X55_Y53_N8
\serialR|serialC|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector2~2_combout\ = (\serialR|serialC|Selector3~1_combout\ & (\serialR|sDFlag~0_combout\ & ((\serialR|serialC|Selector2~1_combout\)))) # (!\serialR|serialC|Selector3~1_combout\ & ((\serialR|serialC|Selector2~0_combout\) # 
-- ((\serialR|sDFlag~0_combout\ & \serialR|serialC|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|serialC|Selector3~1_combout\,
	datab => \serialR|sDFlag~0_combout\,
	datac => \serialR|serialC|Selector2~0_combout\,
	datad => \serialR|serialC|Selector2~1_combout\,
	combout => \serialR|serialC|Selector2~2_combout\);

-- Location: FF_X55_Y53_N9
\serialR|serialC|CurrentState.STATE_PCheck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialR|serialC|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|serialC|CurrentState.STATE_PCheck~q\);

-- Location: LCCOMB_X55_Y53_N12
\serialR|serialC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector0~0_combout\ = (\NOT_SS~input_o\ & (((!\serialR|serialC|CurrentState.STATE_PCheck~q\ & \serialR|serialC|CurrentState.STATE_Dwait~q\)))) # (!\NOT_SS~input_o\ & (\serialR|ParityCheck0|UFFD0|Q~q\ & 
-- (\serialR|serialC|CurrentState.STATE_PCheck~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_SS~input_o\,
	datab => \serialR|ParityCheck0|UFFD0|Q~q\,
	datac => \serialR|serialC|CurrentState.STATE_PCheck~q\,
	datad => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	combout => \serialR|serialC|Selector0~0_combout\);

-- Location: LCCOMB_X55_Y53_N6
\serialR|serialC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector0~1_combout\ = (\NOT_SS~input_o\ & ((\serialR|serialC|CurrentState.STATE_DReceive~q\) # ((!\serialR|serialC|Selector0~0_combout\)))) # (!\NOT_SS~input_o\ & (((\serialR|serialC|Selector3~1_combout\ & 
-- \serialR|serialC|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|serialC|CurrentState.STATE_DReceive~q\,
	datab => \NOT_SS~input_o\,
	datac => \serialR|serialC|Selector3~1_combout\,
	datad => \serialR|serialC|Selector0~0_combout\,
	combout => \serialR|serialC|Selector0~1_combout\);

-- Location: LCCOMB_X55_Y53_N0
\serialR|serialC|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector0~2_combout\ = (!\serialR|serialC|Selector0~1_combout\ & ((\Disp|CurrentState.STATE_finishProcess~q\) # (!\serialR|serialC|CurrentState.STATE_DConfirm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|serialC|CurrentState.STATE_DConfirm~q\,
	datab => \Disp|CurrentState.STATE_finishProcess~q\,
	datad => \serialR|serialC|Selector0~1_combout\,
	combout => \serialR|serialC|Selector0~2_combout\);

-- Location: FF_X55_Y53_N1
\serialR|serialC|CurrentState.STATE_Dwait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialR|serialC|Selector0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|serialC|CurrentState.STATE_Dwait~q\);

-- Location: FF_X54_Y53_N17
\serialR|Counter0|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|Counter0|UFFD0|Q~0_combout\,
	clrn => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|Counter0|UFFD0|Q~q\);

-- Location: LCCOMB_X54_Y53_N26
\serialR|Counter0|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|Counter0|UFFD1|Q~0_combout\ = \serialR|Counter0|UFFD1|Q~q\ $ (\serialR|Counter0|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|Counter0|UFFD1|Q~q\,
	datad => \serialR|Counter0|UFFD0|Q~q\,
	combout => \serialR|Counter0|UFFD1|Q~0_combout\);

-- Location: FF_X54_Y53_N27
\serialR|Counter0|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|Counter0|UFFD1|Q~0_combout\,
	clrn => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|Counter0|UFFD1|Q~q\);

-- Location: LCCOMB_X54_Y53_N6
\serialR|Counter0|UFFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|Counter0|UFFD2|Q~0_combout\ = \serialR|Counter0|UFFD2|Q~q\ $ (((\serialR|Counter0|UFFD1|Q~q\ & \serialR|Counter0|UFFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|Counter0|UFFD1|Q~q\,
	datac => \serialR|Counter0|UFFD2|Q~q\,
	datad => \serialR|Counter0|UFFD0|Q~q\,
	combout => \serialR|Counter0|UFFD2|Q~0_combout\);

-- Location: FF_X54_Y53_N7
\serialR|Counter0|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \serialR|Counter0|UFFD2|Q~0_combout\,
	clrn => \serialR|serialC|CurrentState.STATE_Dwait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|Counter0|UFFD2|Q~q\);

-- Location: LCCOMB_X54_Y53_N0
\serialR|serialC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector3~1_combout\ = (!\serialR|Counter0|UFFD2|Q~q\ & (\serialR|Counter0|UFFD0|Q~q\ & (\serialR|Counter0|UFFD1|Q~q\ & \serialR|Counter0|UFFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|Counter0|UFFD2|Q~q\,
	datab => \serialR|Counter0|UFFD0|Q~q\,
	datac => \serialR|Counter0|UFFD1|Q~q\,
	datad => \serialR|Counter0|UFFD3|Q~q\,
	combout => \serialR|serialC|Selector3~1_combout\);

-- Location: LCCOMB_X55_Y53_N22
\serialR|serialC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector3~0_combout\ = (!\Disp|CurrentState.STATE_finishProcess~q\ & \serialR|serialC|CurrentState.STATE_DEndReception~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Disp|CurrentState.STATE_finishProcess~q\,
	datad => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	combout => \serialR|serialC|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y53_N16
\serialR|serialC|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Selector3~2_combout\ = (\serialR|serialC|Selector3~0_combout\) # ((\serialR|serialC|Selector3~1_combout\ & (!\serialR|ParityCheck0|UFFD0|Q~q\ & \serialR|serialC|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialR|serialC|Selector3~1_combout\,
	datab => \serialR|ParityCheck0|UFFD0|Q~q\,
	datac => \serialR|serialC|Selector3~0_combout\,
	datad => \serialR|serialC|Selector2~0_combout\,
	combout => \serialR|serialC|Selector3~2_combout\);

-- Location: FF_X55_Y53_N17
\serialR|serialC|CurrentState.STATE_DEndReception\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \serialR|serialC|Selector3~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serialR|serialC|CurrentState.STATE_DEndReception~q\);

-- Location: LCCOMB_X56_Y53_N24
\serialR|serialC|Busy\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \serialR|serialC|Busy~combout\ = (\serialR|serialC|CurrentState.STATE_DEndReception~q\) # (\serialR|serialC|CurrentState.STATE_DConfirm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serialR|serialC|CurrentState.STATE_DEndReception~q\,
	datad => \serialR|serialC|CurrentState.STATE_DConfirm~q\,
	combout => \serialR|serialC|Busy~combout\);

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

ww_busy <= \busy~output_o\;

ww_WrT <= \WrT~output_o\;

ww_WrL <= \WrL~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(8) <= \Dout[8]~output_o\;
END structure;


