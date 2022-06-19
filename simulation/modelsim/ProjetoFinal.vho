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

-- DATE "06/19/2022 17:46:42"

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
-- KEYPAD_COL[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TXD	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXclk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clkDIV0|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RXclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkDIV0|Add0~0_combout\ : std_logic;
SIGNAL \clkDIV0|count[0]~20_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~1\ : std_logic;
SIGNAL \clkDIV0|Add0~2_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~3\ : std_logic;
SIGNAL \clkDIV0|Add0~4_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~5\ : std_logic;
SIGNAL \clkDIV0|Add0~6_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~7\ : std_logic;
SIGNAL \clkDIV0|Add0~8_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~1_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~9\ : std_logic;
SIGNAL \clkDIV0|Add0~10_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~11\ : std_logic;
SIGNAL \clkDIV0|Add0~13\ : std_logic;
SIGNAL \clkDIV0|Add0~14_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~15\ : std_logic;
SIGNAL \clkDIV0|Add0~16_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~17\ : std_logic;
SIGNAL \clkDIV0|Add0~18_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~19\ : std_logic;
SIGNAL \clkDIV0|Add0~20_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~21\ : std_logic;
SIGNAL \clkDIV0|Add0~22_combout\ : std_logic;
SIGNAL \clkDIV0|count~9_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~23\ : std_logic;
SIGNAL \clkDIV0|Add0~24_combout\ : std_logic;
SIGNAL \clkDIV0|count~10_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~25\ : std_logic;
SIGNAL \clkDIV0|Add0~26_combout\ : std_logic;
SIGNAL \clkDIV0|count~11_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~27\ : std_logic;
SIGNAL \clkDIV0|Add0~28_combout\ : std_logic;
SIGNAL \clkDIV0|count~12_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~29\ : std_logic;
SIGNAL \clkDIV0|Add0~30_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~31\ : std_logic;
SIGNAL \clkDIV0|Add0~32_combout\ : std_logic;
SIGNAL \clkDIV0|count~13_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~33\ : std_logic;
SIGNAL \clkDIV0|Add0~34_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~35\ : std_logic;
SIGNAL \clkDIV0|Add0~36_combout\ : std_logic;
SIGNAL \clkDIV0|count~14_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~37\ : std_logic;
SIGNAL \clkDIV0|Add0~38_combout\ : std_logic;
SIGNAL \clkDIV0|count~15_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~5_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~39\ : std_logic;
SIGNAL \clkDIV0|Add0~40_combout\ : std_logic;
SIGNAL \clkDIV0|count~16_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~41\ : std_logic;
SIGNAL \clkDIV0|Add0~42_combout\ : std_logic;
SIGNAL \clkDIV0|count~17_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~43\ : std_logic;
SIGNAL \clkDIV0|Add0~44_combout\ : std_logic;
SIGNAL \clkDIV0|count~18_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~45\ : std_logic;
SIGNAL \clkDIV0|Add0~46_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~47\ : std_logic;
SIGNAL \clkDIV0|Add0~48_combout\ : std_logic;
SIGNAL \clkDIV0|count~19_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~49\ : std_logic;
SIGNAL \clkDIV0|Add0~50_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~51\ : std_logic;
SIGNAL \clkDIV0|Add0~52_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~53\ : std_logic;
SIGNAL \clkDIV0|Add0~54_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~55\ : std_logic;
SIGNAL \clkDIV0|Add0~56_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~57\ : std_logic;
SIGNAL \clkDIV0|Add0~58_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~59\ : std_logic;
SIGNAL \clkDIV0|Add0~60_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~61\ : std_logic;
SIGNAL \clkDIV0|Add0~62_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~8_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~6_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~7_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~9_combout\ : std_logic;
SIGNAL \clkDIV0|Add0~12_combout\ : std_logic;
SIGNAL \clkDIV0|count~8_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~0_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~3_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~2_combout\ : std_logic;
SIGNAL \clkDIV0|Equal0~4_combout\ : std_logic;
SIGNAL \clkDIV0|tmp~0_combout\ : std_logic;
SIGNAL \clkDIV0|tmp~feeder_combout\ : std_logic;
SIGNAL \clkDIV0|tmp~q\ : std_logic;
SIGNAL \clkDIV0|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KEYPAD_LIN[3]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[2]~input_o\ : std_logic;
SIGNAL \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[1]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[0]~input_o\ : std_logic;
SIGNAL \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\ : std_logic;
SIGNAL \Clr~input_o\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVING~q\ : std_logic;
SIGNAL \RXclk~input_o\ : std_logic;
SIGNAL \RXclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD2|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD2|Q~q\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|Selector0~0_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|Selector0~1_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~feeder_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \ktransmitter|Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|Selector1~0_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|Selector1~1_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~feeder_combout\ : std_logic;
SIGNAL \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\ : std_logic;
SIGNAL \kdecode|kcontrol|Selector1~0_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVED~q\ : std_logic;
SIGNAL \kdecode|kcontrol|Selector2~0_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|Selector2~1_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\ : std_logic;
SIGNAL \kdecode|kcontrol|Selector0~0_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|Selector0~1_combout\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_WAIT~q\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD0|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD0|Q~feeder_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD0|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD1|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \kdecode|kscan|Cont|UFFD1|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux2~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux1~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|Dec|Mux0~0_combout\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD2|Q~q\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~1_combout\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD3|Q~feeder_combout\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD3|Q~q\ : std_logic;
SIGNAL \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD1|Q~feeder_combout\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD1|Q~q\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\ : std_logic;
SIGNAL \kdecode|kscan|REG|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|REG|UFFD0|Q~q\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~2_combout\ : std_logic;
SIGNAL \ktransmitter|MUX|Mux0~3_combout\ : std_logic;
SIGNAL \clkDIV0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkDIV0|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr~input_o\ : std_logic;

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

\clkDIV0|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDIV0|tmp~q\);

\RXclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RXclk~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\clkDIV0|ALT_INV_tmp~clkctrl_outclk\ <= NOT \clkDIV0|tmp~clkctrl_outclk\;
\ALT_INV_Clr~input_o\ <= NOT \Clr~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X40_Y0_N9
\TXD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ktransmitter|MUX|Mux0~3_combout\,
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

-- Location: LCCOMB_X2_Y37_N0
\clkDIV0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~0_combout\ = \clkDIV0|count\(0) $ (GND)
-- \clkDIV0|Add0~1\ = CARRY(!\clkDIV0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(0),
	datad => VCC,
	combout => \clkDIV0|Add0~0_combout\,
	cout => \clkDIV0|Add0~1\);

-- Location: LCCOMB_X3_Y37_N0
\clkDIV0|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count[0]~20_combout\ = !\clkDIV0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDIV0|Add0~0_combout\,
	combout => \clkDIV0|count[0]~20_combout\);

-- Location: FF_X2_Y37_N25
\clkDIV0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \clkDIV0|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(0));

-- Location: LCCOMB_X2_Y37_N2
\clkDIV0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~2_combout\ = (\clkDIV0|count\(1) & (!\clkDIV0|Add0~1\)) # (!\clkDIV0|count\(1) & ((\clkDIV0|Add0~1\) # (GND)))
-- \clkDIV0|Add0~3\ = CARRY((!\clkDIV0|Add0~1\) # (!\clkDIV0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(1),
	datad => VCC,
	cin => \clkDIV0|Add0~1\,
	combout => \clkDIV0|Add0~2_combout\,
	cout => \clkDIV0|Add0~3\);

-- Location: FF_X2_Y37_N3
\clkDIV0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(1));

-- Location: LCCOMB_X2_Y37_N4
\clkDIV0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~4_combout\ = (\clkDIV0|count\(2) & (\clkDIV0|Add0~3\ $ (GND))) # (!\clkDIV0|count\(2) & (!\clkDIV0|Add0~3\ & VCC))
-- \clkDIV0|Add0~5\ = CARRY((\clkDIV0|count\(2) & !\clkDIV0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(2),
	datad => VCC,
	cin => \clkDIV0|Add0~3\,
	combout => \clkDIV0|Add0~4_combout\,
	cout => \clkDIV0|Add0~5\);

-- Location: FF_X2_Y37_N5
\clkDIV0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(2));

-- Location: LCCOMB_X2_Y37_N6
\clkDIV0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~6_combout\ = (\clkDIV0|count\(3) & (!\clkDIV0|Add0~5\)) # (!\clkDIV0|count\(3) & ((\clkDIV0|Add0~5\) # (GND)))
-- \clkDIV0|Add0~7\ = CARRY((!\clkDIV0|Add0~5\) # (!\clkDIV0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(3),
	datad => VCC,
	cin => \clkDIV0|Add0~5\,
	combout => \clkDIV0|Add0~6_combout\,
	cout => \clkDIV0|Add0~7\);

-- Location: FF_X2_Y37_N7
\clkDIV0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(3));

-- Location: LCCOMB_X2_Y37_N8
\clkDIV0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~8_combout\ = (\clkDIV0|count\(4) & (\clkDIV0|Add0~7\ $ (GND))) # (!\clkDIV0|count\(4) & (!\clkDIV0|Add0~7\ & VCC))
-- \clkDIV0|Add0~9\ = CARRY((\clkDIV0|count\(4) & !\clkDIV0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(4),
	datad => VCC,
	cin => \clkDIV0|Add0~7\,
	combout => \clkDIV0|Add0~8_combout\,
	cout => \clkDIV0|Add0~9\);

-- Location: FF_X2_Y37_N9
\clkDIV0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(4));

-- Location: LCCOMB_X1_Y37_N22
\clkDIV0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~1_combout\ = (!\clkDIV0|count\(2) & (!\clkDIV0|count\(1) & (!\clkDIV0|count\(4) & !\clkDIV0|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(2),
	datab => \clkDIV0|count\(1),
	datac => \clkDIV0|count\(4),
	datad => \clkDIV0|count\(3),
	combout => \clkDIV0|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y37_N10
\clkDIV0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~10_combout\ = (\clkDIV0|count\(5) & (!\clkDIV0|Add0~9\)) # (!\clkDIV0|count\(5) & ((\clkDIV0|Add0~9\) # (GND)))
-- \clkDIV0|Add0~11\ = CARRY((!\clkDIV0|Add0~9\) # (!\clkDIV0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(5),
	datad => VCC,
	cin => \clkDIV0|Add0~9\,
	combout => \clkDIV0|Add0~10_combout\,
	cout => \clkDIV0|Add0~11\);

-- Location: FF_X2_Y37_N11
\clkDIV0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(5));

-- Location: LCCOMB_X2_Y37_N12
\clkDIV0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~12_combout\ = (\clkDIV0|count\(6) & (\clkDIV0|Add0~11\ $ (GND))) # (!\clkDIV0|count\(6) & (!\clkDIV0|Add0~11\ & VCC))
-- \clkDIV0|Add0~13\ = CARRY((\clkDIV0|count\(6) & !\clkDIV0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(6),
	datad => VCC,
	cin => \clkDIV0|Add0~11\,
	combout => \clkDIV0|Add0~12_combout\,
	cout => \clkDIV0|Add0~13\);

-- Location: LCCOMB_X2_Y37_N14
\clkDIV0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~14_combout\ = (\clkDIV0|count\(7) & (!\clkDIV0|Add0~13\)) # (!\clkDIV0|count\(7) & ((\clkDIV0|Add0~13\) # (GND)))
-- \clkDIV0|Add0~15\ = CARRY((!\clkDIV0|Add0~13\) # (!\clkDIV0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(7),
	datad => VCC,
	cin => \clkDIV0|Add0~13\,
	combout => \clkDIV0|Add0~14_combout\,
	cout => \clkDIV0|Add0~15\);

-- Location: FF_X2_Y37_N15
\clkDIV0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(7));

-- Location: LCCOMB_X2_Y37_N16
\clkDIV0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~16_combout\ = (\clkDIV0|count\(8) & (\clkDIV0|Add0~15\ $ (GND))) # (!\clkDIV0|count\(8) & (!\clkDIV0|Add0~15\ & VCC))
-- \clkDIV0|Add0~17\ = CARRY((\clkDIV0|count\(8) & !\clkDIV0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(8),
	datad => VCC,
	cin => \clkDIV0|Add0~15\,
	combout => \clkDIV0|Add0~16_combout\,
	cout => \clkDIV0|Add0~17\);

-- Location: FF_X2_Y37_N17
\clkDIV0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(8));

-- Location: LCCOMB_X2_Y37_N18
\clkDIV0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~18_combout\ = (\clkDIV0|count\(9) & (!\clkDIV0|Add0~17\)) # (!\clkDIV0|count\(9) & ((\clkDIV0|Add0~17\) # (GND)))
-- \clkDIV0|Add0~19\ = CARRY((!\clkDIV0|Add0~17\) # (!\clkDIV0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(9),
	datad => VCC,
	cin => \clkDIV0|Add0~17\,
	combout => \clkDIV0|Add0~18_combout\,
	cout => \clkDIV0|Add0~19\);

-- Location: FF_X2_Y37_N19
\clkDIV0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(9));

-- Location: LCCOMB_X2_Y37_N20
\clkDIV0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~20_combout\ = (\clkDIV0|count\(10) & (\clkDIV0|Add0~19\ $ (GND))) # (!\clkDIV0|count\(10) & (!\clkDIV0|Add0~19\ & VCC))
-- \clkDIV0|Add0~21\ = CARRY((\clkDIV0|count\(10) & !\clkDIV0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(10),
	datad => VCC,
	cin => \clkDIV0|Add0~19\,
	combout => \clkDIV0|Add0~20_combout\,
	cout => \clkDIV0|Add0~21\);

-- Location: FF_X2_Y37_N21
\clkDIV0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(10));

-- Location: LCCOMB_X2_Y37_N22
\clkDIV0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~22_combout\ = (\clkDIV0|count\(11) & (!\clkDIV0|Add0~21\)) # (!\clkDIV0|count\(11) & ((\clkDIV0|Add0~21\) # (GND)))
-- \clkDIV0|Add0~23\ = CARRY((!\clkDIV0|Add0~21\) # (!\clkDIV0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(11),
	datad => VCC,
	cin => \clkDIV0|Add0~21\,
	combout => \clkDIV0|Add0~22_combout\,
	cout => \clkDIV0|Add0~23\);

-- Location: LCCOMB_X1_Y37_N8
\clkDIV0|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~9_combout\ = (\clkDIV0|Add0~22_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~22_combout\,
	combout => \clkDIV0|count~9_combout\);

-- Location: FF_X1_Y37_N9
\clkDIV0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(11));

-- Location: LCCOMB_X2_Y37_N24
\clkDIV0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~24_combout\ = (\clkDIV0|count\(12) & (\clkDIV0|Add0~23\ $ (GND))) # (!\clkDIV0|count\(12) & (!\clkDIV0|Add0~23\ & VCC))
-- \clkDIV0|Add0~25\ = CARRY((\clkDIV0|count\(12) & !\clkDIV0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(12),
	datad => VCC,
	cin => \clkDIV0|Add0~23\,
	combout => \clkDIV0|Add0~24_combout\,
	cout => \clkDIV0|Add0~25\);

-- Location: LCCOMB_X1_Y37_N20
\clkDIV0|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~10_combout\ = (\clkDIV0|Add0~24_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~24_combout\,
	combout => \clkDIV0|count~10_combout\);

-- Location: FF_X1_Y37_N21
\clkDIV0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(12));

-- Location: LCCOMB_X2_Y37_N26
\clkDIV0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~26_combout\ = (\clkDIV0|count\(13) & (!\clkDIV0|Add0~25\)) # (!\clkDIV0|count\(13) & ((\clkDIV0|Add0~25\) # (GND)))
-- \clkDIV0|Add0~27\ = CARRY((!\clkDIV0|Add0~25\) # (!\clkDIV0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(13),
	datad => VCC,
	cin => \clkDIV0|Add0~25\,
	combout => \clkDIV0|Add0~26_combout\,
	cout => \clkDIV0|Add0~27\);

-- Location: LCCOMB_X1_Y37_N26
\clkDIV0|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~11_combout\ = (\clkDIV0|Add0~26_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Add0~26_combout\,
	datad => \clkDIV0|Equal0~4_combout\,
	combout => \clkDIV0|count~11_combout\);

-- Location: FF_X1_Y37_N27
\clkDIV0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(13));

-- Location: LCCOMB_X2_Y37_N28
\clkDIV0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~28_combout\ = (\clkDIV0|count\(14) & (\clkDIV0|Add0~27\ $ (GND))) # (!\clkDIV0|count\(14) & (!\clkDIV0|Add0~27\ & VCC))
-- \clkDIV0|Add0~29\ = CARRY((\clkDIV0|count\(14) & !\clkDIV0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(14),
	datad => VCC,
	cin => \clkDIV0|Add0~27\,
	combout => \clkDIV0|Add0~28_combout\,
	cout => \clkDIV0|Add0~29\);

-- Location: LCCOMB_X1_Y37_N12
\clkDIV0|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~12_combout\ = (\clkDIV0|Add0~28_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~28_combout\,
	combout => \clkDIV0|count~12_combout\);

-- Location: FF_X1_Y37_N13
\clkDIV0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(14));

-- Location: LCCOMB_X2_Y37_N30
\clkDIV0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~30_combout\ = (\clkDIV0|count\(15) & (!\clkDIV0|Add0~29\)) # (!\clkDIV0|count\(15) & ((\clkDIV0|Add0~29\) # (GND)))
-- \clkDIV0|Add0~31\ = CARRY((!\clkDIV0|Add0~29\) # (!\clkDIV0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(15),
	datad => VCC,
	cin => \clkDIV0|Add0~29\,
	combout => \clkDIV0|Add0~30_combout\,
	cout => \clkDIV0|Add0~31\);

-- Location: FF_X2_Y37_N31
\clkDIV0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(15));

-- Location: LCCOMB_X2_Y36_N0
\clkDIV0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~32_combout\ = (\clkDIV0|count\(16) & (\clkDIV0|Add0~31\ $ (GND))) # (!\clkDIV0|count\(16) & (!\clkDIV0|Add0~31\ & VCC))
-- \clkDIV0|Add0~33\ = CARRY((\clkDIV0|count\(16) & !\clkDIV0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(16),
	datad => VCC,
	cin => \clkDIV0|Add0~31\,
	combout => \clkDIV0|Add0~32_combout\,
	cout => \clkDIV0|Add0~33\);

-- Location: LCCOMB_X1_Y36_N16
\clkDIV0|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~13_combout\ = (\clkDIV0|Add0~32_combout\ & ((!\clkDIV0|Equal0~9_combout\) # (!\clkDIV0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~4_combout\,
	datab => \clkDIV0|Add0~32_combout\,
	datac => \clkDIV0|Equal0~9_combout\,
	combout => \clkDIV0|count~13_combout\);

-- Location: FF_X1_Y36_N17
\clkDIV0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(16));

-- Location: LCCOMB_X2_Y36_N2
\clkDIV0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~34_combout\ = (\clkDIV0|count\(17) & (!\clkDIV0|Add0~33\)) # (!\clkDIV0|count\(17) & ((\clkDIV0|Add0~33\) # (GND)))
-- \clkDIV0|Add0~35\ = CARRY((!\clkDIV0|Add0~33\) # (!\clkDIV0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(17),
	datad => VCC,
	cin => \clkDIV0|Add0~33\,
	combout => \clkDIV0|Add0~34_combout\,
	cout => \clkDIV0|Add0~35\);

-- Location: FF_X2_Y36_N3
\clkDIV0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(17));

-- Location: LCCOMB_X2_Y36_N4
\clkDIV0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~36_combout\ = (\clkDIV0|count\(18) & (\clkDIV0|Add0~35\ $ (GND))) # (!\clkDIV0|count\(18) & (!\clkDIV0|Add0~35\ & VCC))
-- \clkDIV0|Add0~37\ = CARRY((\clkDIV0|count\(18) & !\clkDIV0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(18),
	datad => VCC,
	cin => \clkDIV0|Add0~35\,
	combout => \clkDIV0|Add0~36_combout\,
	cout => \clkDIV0|Add0~37\);

-- Location: LCCOMB_X1_Y36_N6
\clkDIV0|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~14_combout\ = (\clkDIV0|Add0~36_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~36_combout\,
	combout => \clkDIV0|count~14_combout\);

-- Location: FF_X1_Y36_N7
\clkDIV0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(18));

-- Location: LCCOMB_X2_Y36_N6
\clkDIV0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~38_combout\ = (\clkDIV0|count\(19) & (!\clkDIV0|Add0~37\)) # (!\clkDIV0|count\(19) & ((\clkDIV0|Add0~37\) # (GND)))
-- \clkDIV0|Add0~39\ = CARRY((!\clkDIV0|Add0~37\) # (!\clkDIV0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(19),
	datad => VCC,
	cin => \clkDIV0|Add0~37\,
	combout => \clkDIV0|Add0~38_combout\,
	cout => \clkDIV0|Add0~39\);

-- Location: LCCOMB_X1_Y36_N0
\clkDIV0|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~15_combout\ = (\clkDIV0|Add0~38_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~38_combout\,
	combout => \clkDIV0|count~15_combout\);

-- Location: FF_X1_Y36_N1
\clkDIV0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(19));

-- Location: LCCOMB_X1_Y36_N30
\clkDIV0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~5_combout\ = (\clkDIV0|count\(18) & (\clkDIV0|count\(19) & (\clkDIV0|count\(16) & !\clkDIV0|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(18),
	datab => \clkDIV0|count\(19),
	datac => \clkDIV0|count\(16),
	datad => \clkDIV0|count\(17),
	combout => \clkDIV0|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y36_N8
\clkDIV0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~40_combout\ = (\clkDIV0|count\(20) & (\clkDIV0|Add0~39\ $ (GND))) # (!\clkDIV0|count\(20) & (!\clkDIV0|Add0~39\ & VCC))
-- \clkDIV0|Add0~41\ = CARRY((\clkDIV0|count\(20) & !\clkDIV0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(20),
	datad => VCC,
	cin => \clkDIV0|Add0~39\,
	combout => \clkDIV0|Add0~40_combout\,
	cout => \clkDIV0|Add0~41\);

-- Location: LCCOMB_X1_Y36_N28
\clkDIV0|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~16_combout\ = (\clkDIV0|Add0~40_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datab => \clkDIV0|Equal0~4_combout\,
	datac => \clkDIV0|Add0~40_combout\,
	combout => \clkDIV0|count~16_combout\);

-- Location: FF_X1_Y36_N29
\clkDIV0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(20));

-- Location: LCCOMB_X2_Y36_N10
\clkDIV0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~42_combout\ = (\clkDIV0|count\(21) & (!\clkDIV0|Add0~41\)) # (!\clkDIV0|count\(21) & ((\clkDIV0|Add0~41\) # (GND)))
-- \clkDIV0|Add0~43\ = CARRY((!\clkDIV0|Add0~41\) # (!\clkDIV0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(21),
	datad => VCC,
	cin => \clkDIV0|Add0~41\,
	combout => \clkDIV0|Add0~42_combout\,
	cout => \clkDIV0|Add0~43\);

-- Location: LCCOMB_X1_Y36_N10
\clkDIV0|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~17_combout\ = (\clkDIV0|Add0~42_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datab => \clkDIV0|Equal0~4_combout\,
	datac => \clkDIV0|Add0~42_combout\,
	combout => \clkDIV0|count~17_combout\);

-- Location: FF_X1_Y36_N11
\clkDIV0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(21));

-- Location: LCCOMB_X2_Y36_N12
\clkDIV0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~44_combout\ = (\clkDIV0|count\(22) & (\clkDIV0|Add0~43\ $ (GND))) # (!\clkDIV0|count\(22) & (!\clkDIV0|Add0~43\ & VCC))
-- \clkDIV0|Add0~45\ = CARRY((\clkDIV0|count\(22) & !\clkDIV0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(22),
	datad => VCC,
	cin => \clkDIV0|Add0~43\,
	combout => \clkDIV0|Add0~44_combout\,
	cout => \clkDIV0|Add0~45\);

-- Location: LCCOMB_X1_Y36_N12
\clkDIV0|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~18_combout\ = (\clkDIV0|Add0~44_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datab => \clkDIV0|Equal0~4_combout\,
	datac => \clkDIV0|Add0~44_combout\,
	combout => \clkDIV0|count~18_combout\);

-- Location: FF_X1_Y36_N13
\clkDIV0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(22));

-- Location: LCCOMB_X2_Y36_N14
\clkDIV0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~46_combout\ = (\clkDIV0|count\(23) & (!\clkDIV0|Add0~45\)) # (!\clkDIV0|count\(23) & ((\clkDIV0|Add0~45\) # (GND)))
-- \clkDIV0|Add0~47\ = CARRY((!\clkDIV0|Add0~45\) # (!\clkDIV0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(23),
	datad => VCC,
	cin => \clkDIV0|Add0~45\,
	combout => \clkDIV0|Add0~46_combout\,
	cout => \clkDIV0|Add0~47\);

-- Location: FF_X2_Y36_N15
\clkDIV0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(23));

-- Location: LCCOMB_X2_Y36_N16
\clkDIV0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~48_combout\ = (\clkDIV0|count\(24) & (\clkDIV0|Add0~47\ $ (GND))) # (!\clkDIV0|count\(24) & (!\clkDIV0|Add0~47\ & VCC))
-- \clkDIV0|Add0~49\ = CARRY((\clkDIV0|count\(24) & !\clkDIV0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(24),
	datad => VCC,
	cin => \clkDIV0|Add0~47\,
	combout => \clkDIV0|Add0~48_combout\,
	cout => \clkDIV0|Add0~49\);

-- Location: LCCOMB_X1_Y36_N20
\clkDIV0|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~19_combout\ = (\clkDIV0|Add0~48_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Equal0~4_combout\,
	datad => \clkDIV0|Add0~48_combout\,
	combout => \clkDIV0|count~19_combout\);

-- Location: FF_X1_Y36_N21
\clkDIV0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(24));

-- Location: LCCOMB_X2_Y36_N18
\clkDIV0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~50_combout\ = (\clkDIV0|count\(25) & (!\clkDIV0|Add0~49\)) # (!\clkDIV0|count\(25) & ((\clkDIV0|Add0~49\) # (GND)))
-- \clkDIV0|Add0~51\ = CARRY((!\clkDIV0|Add0~49\) # (!\clkDIV0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(25),
	datad => VCC,
	cin => \clkDIV0|Add0~49\,
	combout => \clkDIV0|Add0~50_combout\,
	cout => \clkDIV0|Add0~51\);

-- Location: FF_X2_Y36_N19
\clkDIV0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(25));

-- Location: LCCOMB_X2_Y36_N20
\clkDIV0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~52_combout\ = (\clkDIV0|count\(26) & (\clkDIV0|Add0~51\ $ (GND))) # (!\clkDIV0|count\(26) & (!\clkDIV0|Add0~51\ & VCC))
-- \clkDIV0|Add0~53\ = CARRY((\clkDIV0|count\(26) & !\clkDIV0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(26),
	datad => VCC,
	cin => \clkDIV0|Add0~51\,
	combout => \clkDIV0|Add0~52_combout\,
	cout => \clkDIV0|Add0~53\);

-- Location: FF_X2_Y36_N21
\clkDIV0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(26));

-- Location: LCCOMB_X2_Y36_N22
\clkDIV0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~54_combout\ = (\clkDIV0|count\(27) & (!\clkDIV0|Add0~53\)) # (!\clkDIV0|count\(27) & ((\clkDIV0|Add0~53\) # (GND)))
-- \clkDIV0|Add0~55\ = CARRY((!\clkDIV0|Add0~53\) # (!\clkDIV0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(27),
	datad => VCC,
	cin => \clkDIV0|Add0~53\,
	combout => \clkDIV0|Add0~54_combout\,
	cout => \clkDIV0|Add0~55\);

-- Location: FF_X2_Y36_N23
\clkDIV0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(27));

-- Location: LCCOMB_X2_Y36_N24
\clkDIV0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~56_combout\ = (\clkDIV0|count\(28) & (\clkDIV0|Add0~55\ $ (GND))) # (!\clkDIV0|count\(28) & (!\clkDIV0|Add0~55\ & VCC))
-- \clkDIV0|Add0~57\ = CARRY((\clkDIV0|count\(28) & !\clkDIV0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(28),
	datad => VCC,
	cin => \clkDIV0|Add0~55\,
	combout => \clkDIV0|Add0~56_combout\,
	cout => \clkDIV0|Add0~57\);

-- Location: FF_X2_Y36_N25
\clkDIV0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(28));

-- Location: LCCOMB_X2_Y36_N26
\clkDIV0|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~58_combout\ = (\clkDIV0|count\(29) & (!\clkDIV0|Add0~57\)) # (!\clkDIV0|count\(29) & ((\clkDIV0|Add0~57\) # (GND)))
-- \clkDIV0|Add0~59\ = CARRY((!\clkDIV0|Add0~57\) # (!\clkDIV0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(29),
	datad => VCC,
	cin => \clkDIV0|Add0~57\,
	combout => \clkDIV0|Add0~58_combout\,
	cout => \clkDIV0|Add0~59\);

-- Location: FF_X2_Y36_N27
\clkDIV0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(29));

-- Location: LCCOMB_X2_Y36_N28
\clkDIV0|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~60_combout\ = (\clkDIV0|count\(30) & (\clkDIV0|Add0~59\ $ (GND))) # (!\clkDIV0|count\(30) & (!\clkDIV0|Add0~59\ & VCC))
-- \clkDIV0|Add0~61\ = CARRY((\clkDIV0|count\(30) & !\clkDIV0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|count\(30),
	datad => VCC,
	cin => \clkDIV0|Add0~59\,
	combout => \clkDIV0|Add0~60_combout\,
	cout => \clkDIV0|Add0~61\);

-- Location: FF_X2_Y36_N29
\clkDIV0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(30));

-- Location: LCCOMB_X2_Y36_N30
\clkDIV0|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Add0~62_combout\ = \clkDIV0|count\(31) $ (\clkDIV0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(31),
	cin => \clkDIV0|Add0~61\,
	combout => \clkDIV0|Add0~62_combout\);

-- Location: FF_X2_Y36_N31
\clkDIV0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(31));

-- Location: LCCOMB_X1_Y36_N8
\clkDIV0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~8_combout\ = (!\clkDIV0|count\(31) & (!\clkDIV0|count\(28) & (!\clkDIV0|count\(29) & !\clkDIV0|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(31),
	datab => \clkDIV0|count\(28),
	datac => \clkDIV0|count\(29),
	datad => \clkDIV0|count\(30),
	combout => \clkDIV0|Equal0~8_combout\);

-- Location: LCCOMB_X1_Y36_N22
\clkDIV0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~6_combout\ = (\clkDIV0|count\(21) & (\clkDIV0|count\(20) & (!\clkDIV0|count\(23) & \clkDIV0|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(21),
	datab => \clkDIV0|count\(20),
	datac => \clkDIV0|count\(23),
	datad => \clkDIV0|count\(22),
	combout => \clkDIV0|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y36_N18
\clkDIV0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~7_combout\ = (\clkDIV0|count\(24) & (!\clkDIV0|count\(27) & (!\clkDIV0|count\(26) & !\clkDIV0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(24),
	datab => \clkDIV0|count\(27),
	datac => \clkDIV0|count\(26),
	datad => \clkDIV0|count\(25),
	combout => \clkDIV0|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y36_N26
\clkDIV0|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~9_combout\ = (\clkDIV0|Equal0~5_combout\ & (\clkDIV0|Equal0~8_combout\ & (\clkDIV0|Equal0~6_combout\ & \clkDIV0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~5_combout\,
	datab => \clkDIV0|Equal0~8_combout\,
	datac => \clkDIV0|Equal0~6_combout\,
	datad => \clkDIV0|Equal0~7_combout\,
	combout => \clkDIV0|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y37_N14
\clkDIV0|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|count~8_combout\ = (\clkDIV0|Add0~12_combout\ & ((!\clkDIV0|Equal0~4_combout\) # (!\clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~9_combout\,
	datac => \clkDIV0|Add0~12_combout\,
	datad => \clkDIV0|Equal0~4_combout\,
	combout => \clkDIV0|count~8_combout\);

-- Location: FF_X1_Y37_N15
\clkDIV0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|count\(6));

-- Location: LCCOMB_X1_Y37_N16
\clkDIV0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~0_combout\ = (\clkDIV0|count\(6) & (!\clkDIV0|count\(5) & (!\clkDIV0|count\(7) & !\clkDIV0|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(6),
	datab => \clkDIV0|count\(5),
	datac => \clkDIV0|count\(7),
	datad => \clkDIV0|count\(8),
	combout => \clkDIV0|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y37_N30
\clkDIV0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~3_combout\ = (\clkDIV0|count\(13) & (\clkDIV0|count\(12) & (!\clkDIV0|count\(15) & \clkDIV0|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(13),
	datab => \clkDIV0|count\(12),
	datac => \clkDIV0|count\(15),
	datad => \clkDIV0|count\(14),
	combout => \clkDIV0|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y37_N18
\clkDIV0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~2_combout\ = (\clkDIV0|count\(11) & (!\clkDIV0|count\(9) & (\clkDIV0|count\(0) & !\clkDIV0|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|count\(11),
	datab => \clkDIV0|count\(9),
	datac => \clkDIV0|count\(0),
	datad => \clkDIV0|count\(10),
	combout => \clkDIV0|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y37_N24
\clkDIV0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|Equal0~4_combout\ = (\clkDIV0|Equal0~1_combout\ & (\clkDIV0|Equal0~0_combout\ & (\clkDIV0|Equal0~3_combout\ & \clkDIV0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDIV0|Equal0~1_combout\,
	datab => \clkDIV0|Equal0~0_combout\,
	datac => \clkDIV0|Equal0~3_combout\,
	datad => \clkDIV0|Equal0~2_combout\,
	combout => \clkDIV0|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y37_N28
\clkDIV0|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|tmp~0_combout\ = \clkDIV0|tmp~q\ $ (((\clkDIV0|Equal0~4_combout\ & \clkDIV0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|Equal0~4_combout\,
	datac => \clkDIV0|Equal0~9_combout\,
	datad => \clkDIV0|tmp~q\,
	combout => \clkDIV0|tmp~0_combout\);

-- Location: LCCOMB_X1_Y37_N6
\clkDIV0|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkDIV0|tmp~feeder_combout\ = \clkDIV0|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDIV0|tmp~0_combout\,
	combout => \clkDIV0|tmp~feeder_combout\);

-- Location: FF_X1_Y37_N7
\clkDIV0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \clkDIV0|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDIV0|tmp~q\);

-- Location: CLKCTRL_G3
\clkDIV0|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDIV0|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDIV0|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: IOIBUF_X46_Y0_N8
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

-- Location: LCCOMB_X42_Y4_N24
\kdecode|kscan|PENC0|OUTPUT[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\ = (!\KEYPAD_LIN[2]~input_o\) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEYPAD_LIN[3]~input_o\,
	datad => \KEYPAD_LIN[2]~input_o\,
	combout => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\);

-- Location: IOIBUF_X51_Y0_N22
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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: LCCOMB_X44_Y4_N10
\kdecode|kcontrol|NextState.STATE_SAVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\ = (!\kdecode|kcontrol|CurrentState.STATE_WAIT~q\ & ((\kdecode|kscan|PENC0|OUTPUT[1]~0_combout\) # ((!\KEYPAD_LIN[1]~input_o\) # (!\KEYPAD_LIN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	datab => \KEYPAD_LIN[0]~input_o\,
	datac => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datad => \KEYPAD_LIN[1]~input_o\,
	combout => \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: FF_X44_Y4_N11
\kdecode|kcontrol|CurrentState.STATE_SAVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|tmp~clkctrl_outclk\,
	d => \kdecode|kcontrol|NextState.STATE_SAVING~0_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_SAVING~q\);

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

-- Location: LCCOMB_X43_Y4_N26
\ktransmitter|Cont|UFFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD0|Q~0_combout\ = \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ $ (\ktransmitter|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datac => \ktransmitter|Cont|UFFD0|Q~q\,
	combout => \ktransmitter|Cont|UFFD0|Q~0_combout\);

-- Location: LCCOMB_X43_Y4_N18
\ktransmitter|Cont|UFFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD2|Q~0_combout\ = \ktransmitter|Cont|UFFD2|Q~q\ $ (((\ktransmitter|Cont|UFFD0|Q~q\ & (\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ & \ktransmitter|Cont|UFFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|Cont|UFFD0|Q~q\,
	datab => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datac => \ktransmitter|Cont|UFFD2|Q~q\,
	datad => \ktransmitter|Cont|UFFD1|Q~q\,
	combout => \ktransmitter|Cont|UFFD2|Q~0_combout\);

-- Location: FF_X43_Y4_N19
\ktransmitter|Cont|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD2|Q~0_combout\,
	clrn => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD2|Q~q\);

-- Location: LCCOMB_X43_Y4_N28
\ktransmitter|keyTransControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|Selector0~0_combout\ = (\ktransmitter|Cont|UFFD0|Q~q\ & (\ktransmitter|Cont|UFFD1|Q~q\ & (\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ & \ktransmitter|Cont|UFFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|Cont|UFFD0|Q~q\,
	datab => \ktransmitter|Cont|UFFD1|Q~q\,
	datac => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|keyTransControl|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y4_N22
\ktransmitter|keyTransControl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|Selector0~1_combout\ = (!\ktransmitter|keyTransControl|Selector0~0_combout\ & ((\kdecode|kcontrol|CurrentState.STATE_SAVED~q\) # (\ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	datac => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\,
	datad => \ktransmitter|keyTransControl|Selector0~0_combout\,
	combout => \ktransmitter|keyTransControl|Selector0~1_combout\);

-- Location: LCCOMB_X43_Y4_N30
\ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~feeder_combout\ = \ktransmitter|keyTransControl|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ktransmitter|keyTransControl|Selector0~1_combout\,
	combout => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~feeder_combout\);

-- Location: FF_X43_Y4_N31
\ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\);

-- Location: FF_X43_Y4_N27
\ktransmitter|Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD0|Q~0_combout\,
	clrn => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X43_Y4_N16
\ktransmitter|Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|Cont|UFFD1|Q~0_combout\ = \ktransmitter|Cont|UFFD1|Q~q\ $ (((\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ & \ktransmitter|Cont|UFFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datac => \ktransmitter|Cont|UFFD1|Q~q\,
	datad => \ktransmitter|Cont|UFFD0|Q~q\,
	combout => \ktransmitter|Cont|UFFD1|Q~0_combout\);

-- Location: FF_X43_Y4_N17
\ktransmitter|Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RXclk~inputclkctrl_outclk\,
	d => \ktransmitter|Cont|UFFD1|Q~0_combout\,
	clrn => \ktransmitter|keyTransControl|CurrentState.STATE_WAIT_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|Cont|UFFD1|Q~q\);

-- Location: LCCOMB_X43_Y4_N12
\ktransmitter|keyTransControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|Selector1~0_combout\ = (\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\ & (((!\ktransmitter|Cont|UFFD2|Q~q\) # (!\ktransmitter|Cont|UFFD0|Q~q\)) # (!\ktransmitter|Cont|UFFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datab => \ktransmitter|Cont|UFFD1|Q~q\,
	datac => \ktransmitter|Cont|UFFD0|Q~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|keyTransControl|Selector1~0_combout\);

-- Location: LCCOMB_X43_Y4_N20
\ktransmitter|keyTransControl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|Selector1~1_combout\ = (\ktransmitter|keyTransControl|Selector1~0_combout\) # ((\ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\ & !\kdecode|kcontrol|CurrentState.STATE_SAVED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	datac => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	datad => \ktransmitter|keyTransControl|Selector1~0_combout\,
	combout => \ktransmitter|keyTransControl|Selector1~1_combout\);

-- Location: FF_X43_Y4_N21
\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|keyTransControl|Selector1~1_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\);

-- Location: LCCOMB_X43_Y4_N10
\ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0_combout\ = (\kdecode|kcontrol|CurrentState.STATE_SAVED~q\ & !\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	datad => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	combout => \ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0_combout\);

-- Location: LCCOMB_X43_Y4_N24
\ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~feeder_combout\ = \ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ktransmitter|keyTransControl|NextState.STATE_DATA_ACCEPTED~0_combout\,
	combout => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~feeder_combout\);

-- Location: FF_X43_Y4_N25
\ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\);

-- Location: LCCOMB_X44_Y4_N0
\kdecode|kcontrol|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|Selector1~0_combout\ = (\kdecode|kcontrol|CurrentState.STATE_SAVING~q\) # ((\kdecode|kcontrol|CurrentState.STATE_SAVED~q\ & !\ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kcontrol|CurrentState.STATE_SAVING~q\,
	datac => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	datad => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	combout => \kdecode|kcontrol|Selector1~0_combout\);

-- Location: FF_X44_Y4_N1
\kdecode|kcontrol|CurrentState.STATE_SAVED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|tmp~clkctrl_outclk\,
	d => \kdecode|kcontrol|Selector1~0_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\);

-- Location: LCCOMB_X44_Y4_N24
\kdecode|kcontrol|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|Selector2~0_combout\ = (\kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\ & ((\kdecode|kscan|PENC0|OUTPUT[1]~0_combout\) # ((!\KEYPAD_LIN[0]~input_o\) # (!\KEYPAD_LIN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	datab => \KEYPAD_LIN[1]~input_o\,
	datac => \KEYPAD_LIN[0]~input_o\,
	datad => \kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\,
	combout => \kdecode|kcontrol|Selector2~0_combout\);

-- Location: LCCOMB_X44_Y4_N28
\kdecode|kcontrol|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|Selector2~1_combout\ = (\kdecode|kcontrol|Selector2~0_combout\) # ((\ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\ & ((\kdecode|kcontrol|CurrentState.STATE_SAVED~q\) # 
-- (\kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kcontrol|CurrentState.STATE_SAVED~q\,
	datab => \kdecode|kcontrol|Selector2~0_combout\,
	datac => \kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\,
	datad => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	combout => \kdecode|kcontrol|Selector2~1_combout\);

-- Location: FF_X44_Y4_N29
\kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|tmp~clkctrl_outclk\,
	d => \kdecode|kcontrol|Selector2~1_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\);

-- Location: LCCOMB_X44_Y4_N20
\kdecode|kcontrol|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|Selector0~0_combout\ = (\KEYPAD_LIN[1]~input_o\ & (\KEYPAD_LIN[0]~input_o\ & ((\kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\) # (!\kdecode|kcontrol|CurrentState.STATE_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[1]~input_o\,
	datab => \KEYPAD_LIN[0]~input_o\,
	datac => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datad => \kdecode|kcontrol|CurrentState.STATE_SAVE_CHECKED~q\,
	combout => \kdecode|kcontrol|Selector0~0_combout\);

-- Location: LCCOMB_X44_Y4_N18
\kdecode|kcontrol|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kcontrol|Selector0~1_combout\ = (\kdecode|kscan|PENC0|OUTPUT[1]~0_combout\) # (((\kdecode|kcontrol|CurrentState.STATE_WAIT~q\ & \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\)) # (!\kdecode|kcontrol|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|PENC0|OUTPUT[1]~0_combout\,
	datab => \kdecode|kcontrol|Selector0~0_combout\,
	datac => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	datad => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	combout => \kdecode|kcontrol|Selector0~1_combout\);

-- Location: FF_X44_Y4_N19
\kdecode|kcontrol|CurrentState.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|tmp~clkctrl_outclk\,
	d => \kdecode|kcontrol|Selector0~1_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\);

-- Location: LCCOMB_X44_Y4_N16
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

-- Location: LCCOMB_X44_Y4_N6
\kdecode|kscan|Cont|UFFD0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Cont|UFFD0|Q~feeder_combout\ = \kdecode|kscan|Cont|UFFD0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kdecode|kscan|Cont|UFFD0|Q~0_combout\,
	combout => \kdecode|kscan|Cont|UFFD0|Q~feeder_combout\);

-- Location: FF_X44_Y4_N7
\kdecode|kscan|Cont|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|ALT_INV_tmp~clkctrl_outclk\,
	d => \kdecode|kscan|Cont|UFFD0|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|Cont|UFFD0|Q~q\);

-- Location: LCCOMB_X44_Y4_N12
\kdecode|kscan|Cont|UFFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Cont|UFFD1|Q~0_combout\ = \kdecode|kscan|Cont|UFFD1|Q~q\ $ (((\kdecode|kscan|Cont|UFFD0|Q~q\ & !\kdecode|kcontrol|CurrentState.STATE_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datac => \kdecode|kscan|Cont|UFFD1|Q~q\,
	datad => \kdecode|kcontrol|CurrentState.STATE_WAIT~q\,
	combout => \kdecode|kscan|Cont|UFFD1|Q~0_combout\);

-- Location: LCCOMB_X44_Y4_N22
\kdecode|kscan|Cont|UFFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Cont|UFFD1|Q~feeder_combout\ = \kdecode|kscan|Cont|UFFD1|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kdecode|kscan|Cont|UFFD1|Q~0_combout\,
	combout => \kdecode|kscan|Cont|UFFD1|Q~feeder_combout\);

-- Location: FF_X44_Y4_N23
\kdecode|kscan|Cont|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDIV0|ALT_INV_tmp~clkctrl_outclk\,
	d => \kdecode|kscan|Cont|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|Cont|UFFD1|Q~q\);

-- Location: LCCOMB_X42_Y4_N12
\kdecode|kscan|Dec|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux2~0_combout\ = (\kdecode|kscan|Cont|UFFD0|Q~q\) # (\kdecode|kscan|Cont|UFFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y4_N26
\kdecode|kscan|Dec|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux1~0_combout\ = (\kdecode|kscan|Cont|UFFD1|Q~q\) # (!\kdecode|kscan|Cont|UFFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y4_N4
\kdecode|kscan|Dec|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|Dec|Mux0~0_combout\ = (\kdecode|kscan|Cont|UFFD0|Q~q\) # (!\kdecode|kscan|Cont|UFFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|Cont|UFFD0|Q~q\,
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \kdecode|kscan|Dec|Mux0~0_combout\);

-- Location: FF_X42_Y4_N11
\ktransmitter|REG|UFFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|Cont|UFFD0|Q~q\,
	clrn => \ALT_INV_Clr~input_o\,
	sload => VCC,
	ena => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD2|Q~q\);

-- Location: LCCOMB_X42_Y4_N10
\ktransmitter|MUX|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~1_combout\ = (!\ktransmitter|Cont|UFFD1|Q~q\ & ((\ktransmitter|Cont|UFFD2|Q~q\ & ((\ktransmitter|REG|UFFD2|Q~q\))) # (!\ktransmitter|Cont|UFFD2|Q~q\ & (!\ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|keyTransControl|CurrentState.STATE_TRANSMIT_DATA~q\,
	datab => \ktransmitter|Cont|UFFD1|Q~q\,
	datac => \ktransmitter|REG|UFFD2|Q~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|MUX|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y4_N18
\ktransmitter|REG|UFFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|REG|UFFD3|Q~feeder_combout\ = \kdecode|kscan|Cont|UFFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kdecode|kscan|Cont|UFFD1|Q~q\,
	combout => \ktransmitter|REG|UFFD3|Q~feeder_combout\);

-- Location: FF_X42_Y4_N19
\ktransmitter|REG|UFFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \ktransmitter|REG|UFFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	ena => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD3|Q~q\);

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X42_Y4_N0
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

-- Location: FF_X42_Y4_N1
\kdecode|kscan|REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kdecode|kscan|REG|UFFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|REG|UFFD1|Q~q\);

-- Location: FF_X42_Y4_N21
\ktransmitter|REG|UFFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|REG|UFFD1|Q~q\,
	clrn => \ALT_INV_Clr~input_o\,
	sload => VCC,
	ena => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD1|Q~q\);

-- Location: LCCOMB_X42_Y4_N20
\ktransmitter|MUX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~0_combout\ = (\ktransmitter|Cont|UFFD1|Q~q\ & (((\ktransmitter|REG|UFFD1|Q~q\) # (\ktransmitter|Cont|UFFD2|Q~q\)))) # (!\ktransmitter|Cont|UFFD1|Q~q\ & ((\ktransmitter|REG|UFFD3|Q~q\) # ((!\ktransmitter|Cont|UFFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|REG|UFFD3|Q~q\,
	datab => \ktransmitter|Cont|UFFD1|Q~q\,
	datac => \ktransmitter|REG|UFFD1|Q~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|MUX|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y4_N30
\kdecode|kscan|PENC0|OUTPUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\ = ((\KEYPAD_LIN[2]~input_o\ & !\KEYPAD_LIN[1]~input_o\)) # (!\KEYPAD_LIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[2]~input_o\,
	datac => \KEYPAD_LIN[3]~input_o\,
	datad => \KEYPAD_LIN[1]~input_o\,
	combout => \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\);

-- Location: FF_X42_Y4_N31
\kdecode|kscan|REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kcontrol|CurrentState.STATE_SAVING~clkctrl_outclk\,
	d => \kdecode|kscan|PENC0|OUTPUT[0]~1_combout\,
	clrn => \ALT_INV_Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|REG|UFFD0|Q~q\);

-- Location: FF_X42_Y4_N9
\ktransmitter|REG|UFFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|REG|UFFD0|Q~q\,
	clrn => \ALT_INV_Clr~input_o\,
	sload => VCC,
	ena => \ktransmitter|keyTransControl|CurrentState.STATE_DATA_ACCEPTED~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ktransmitter|REG|UFFD0|Q~q\);

-- Location: LCCOMB_X42_Y4_N8
\ktransmitter|MUX|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~2_combout\ = (\ktransmitter|Cont|UFFD1|Q~q\ & (\ktransmitter|REG|UFFD0|Q~q\ & !\ktransmitter|Cont|UFFD2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ktransmitter|Cont|UFFD1|Q~q\,
	datac => \ktransmitter|REG|UFFD0|Q~q\,
	datad => \ktransmitter|Cont|UFFD2|Q~q\,
	combout => \ktransmitter|MUX|Mux0~2_combout\);

-- Location: LCCOMB_X42_Y4_N22
\ktransmitter|MUX|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ktransmitter|MUX|Mux0~3_combout\ = (\ktransmitter|Cont|UFFD0|Q~q\ & (((\ktransmitter|MUX|Mux0~0_combout\)))) # (!\ktransmitter|Cont|UFFD0|Q~q\ & ((\ktransmitter|MUX|Mux0~1_combout\) # ((\ktransmitter|MUX|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ktransmitter|MUX|Mux0~1_combout\,
	datab => \ktransmitter|MUX|Mux0~0_combout\,
	datac => \ktransmitter|MUX|Mux0~2_combout\,
	datad => \ktransmitter|Cont|UFFD0|Q~q\,
	combout => \ktransmitter|MUX|Mux0~3_combout\);

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


