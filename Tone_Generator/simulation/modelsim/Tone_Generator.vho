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

-- DATE "10/21/2022 15:06:41"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	tone_generator IS
    PORT (
	clk_out : BUFFER std_logic;
	led : BUFFER std_logic_vector(7 DOWNTO 0);
	switch : IN std_logic_vector(7 DOWNTO 0);
	clk_50 : IN std_logic
	);
END tone_generator;

-- Design Ports Information
-- clk_out	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tone_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_switch : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_50 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \clk_out~4_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \led[7]~2_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \clk_out~9_combout\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \i0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \i0~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \i0~2_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \i0~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \i0~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \i0~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \i0~6_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \i0~7_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \i0~8_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \outp[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \i1~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \i1~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \i1~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \i1~4_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \i1~5_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \i1~6_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \i1~7_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \i1~8_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \i1~9_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \outp[1]~1_combout\ : std_logic;
SIGNAL \clk_out~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \i2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \i2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \i2~1_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \i2~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \i2~4_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \i2~5_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \i2~6_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \i2~7_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \outp[2]~0_combout\ : std_logic;
SIGNAL \clk_out~0_combout\ : std_logic;
SIGNAL \clk_out~6_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \i5~0_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \i5~1_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \i5~2_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \i5~3_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \i5~4_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \i5~5_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \i5~6_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \outp[5]~4_combout\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \i4~0_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \i4~1_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \i4~2_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \i4~3_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \i4~4_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \i4~5_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \i4~6_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \outp[4]~5_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \clk_out~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \i7~5_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \i7~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \i7~7_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \i7~8_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \i7~9_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \i7~4_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \i7~3_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \i7~2_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \i7~1_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \i7~0_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
SIGNAL \outp[7]~6_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \i6~0_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \i6~1_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \i6~2_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \i6~3_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \i6~4_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \i6~5_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \outp[6]~7_combout\ : std_logic;
SIGNAL \clk_out~3_combout\ : std_logic;
SIGNAL \clk_out~5_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \i3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \i3~3_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \i3~1_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \i3~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \i3~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \i3~5_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \i3~6_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \i3~7_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \i3~8_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \outp[3]~3_combout\ : std_logic;
SIGNAL \clk_out~7_combout\ : std_logic;
SIGNAL \clk_out~8_combout\ : std_logic;
SIGNAL \clk_out$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \led[0]$latch~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \led[1]$latch~combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \led[2]$latch~combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \led[3]$latch~combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \led[4]$latch~combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \led[5]$latch~combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \led[6]~3_combout\ : std_logic;
SIGNAL \led[6]$latch~combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \led[7]$latch~combout\ : std_logic;
SIGNAL i0 : std_logic_vector(31 DOWNTO 0);
SIGNAL outp : std_logic_vector(7 DOWNTO 0);
SIGNAL i2 : std_logic_vector(31 DOWNTO 0);
SIGNAL i1 : std_logic_vector(31 DOWNTO 0);
SIGNAL i3 : std_logic_vector(31 DOWNTO 0);
SIGNAL i5 : std_logic_vector(31 DOWNTO 0);
SIGNAL i4 : std_logic_vector(31 DOWNTO 0);
SIGNAL i7 : std_logic_vector(31 DOWNTO 0);
SIGNAL i6 : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clk_out <= ww_clk_out;
led <= ww_led;
ww_switch <= switch;
ww_clk_50 <= clk_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N16
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

-- Location: IOOBUF_X60_Y2_N23
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out$latch~combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]$latch~combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]$latch~combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]$latch~combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]$latch~combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[4]$latch~combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]$latch~combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[6]$latch~combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[7]$latch~combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X6_Y0_N29
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X12_Y3_N24
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\switch[5]~input_o\ & !\switch[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[5]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X10_Y3_N2
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal8~0_combout\ & (!\switch[6]~input_o\ & (!\switch[4]~input_o\ & \switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \switch[6]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X10_Y3_N30
\Equal8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (!\switch[1]~input_o\ & (!\switch[2]~input_o\ & (!\switch[3]~input_o\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \Equal8~1_combout\,
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X10_Y3_N22
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\switch[1]~input_o\ & (!\switch[2]~input_o\ & (!\switch[3]~input_o\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \Equal8~1_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X10_Y3_N8
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\switch[1]~input_o\ & (\switch[2]~input_o\ & (!\switch[3]~input_o\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \Equal8~1_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X10_Y3_N28
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\switch[3]~input_o\ & \switch[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X11_Y3_N22
\Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\switch[4]~input_o\ & (\Equal12~0_combout\ & (\switch[1]~input_o\ & \switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \Equal12~0_combout\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X11_Y3_N0
\clk_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~4_combout\ = (\switch[6]~input_o\) # ((\switch[7]~input_o\) # (!\Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[6]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \Equal12~1_combout\,
	combout => \clk_out~4_combout\);

-- Location: LCCOMB_X10_Y3_N10
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\switch[1]~input_o\ & (\switch[2]~input_o\ & (\switch[3]~input_o\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \Equal8~1_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X10_Y3_N18
\led[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[7]~2_combout\ = (!\Equal9~0_combout\ & (!\Equal10~0_combout\ & (\clk_out~4_combout\ & !\Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \clk_out~4_combout\,
	datad => \Equal11~0_combout\,
	combout => \led[7]~2_combout\);

-- Location: LCCOMB_X11_Y3_N12
\Equal12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (\switch[1]~input_o\ & (\switch[2]~input_o\ & (\switch[3]~input_o\ & \switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X11_Y3_N28
\Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (\switch[4]~input_o\ & (!\switch[7]~input_o\ & (\switch[5]~input_o\ & \Equal12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \Equal12~3_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X11_Y3_N30
\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\Equal13~1_combout\) # (!\switch[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[6]~input_o\,
	datad => \Equal13~1_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X11_Y3_N24
\Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (\switch[5]~input_o\ & (\switch[7]~input_o\ & (\switch[6]~input_o\ & \Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \Equal12~1_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X10_Y3_N6
\clk_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~9_combout\ = (\Equal8~2_combout\) # (((\Equal15~0_combout\) # (!\Equal14~0_combout\)) # (!\led[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~2_combout\,
	datab => \led[7]~2_combout\,
	datac => \Equal14~0_combout\,
	datad => \Equal15~0_combout\,
	combout => \clk_out~9_combout\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y3_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = i0(0) $ (VCC)
-- \Add0~1\ = CARRY(i0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i0(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X16_Y3_N1
\i0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(0));

-- Location: LCCOMB_X16_Y3_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (i0(1) & (!\Add0~1\)) # (!i0(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!i0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X16_Y3_N3
\i0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(1));

-- Location: LCCOMB_X16_Y3_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (i0(2) & (\Add0~3\ $ (GND))) # (!i0(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((i0(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y3_N5
\i0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(2));

-- Location: LCCOMB_X16_Y3_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (i0(3) & (!\Add0~5\)) # (!i0(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!i0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X17_Y3_N16
\i0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~0_combout\ = (\Add0~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~0_combout\);

-- Location: FF_X17_Y3_N17
\i0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(3));

-- Location: LCCOMB_X16_Y3_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (i0(4) & (\Add0~7\ $ (GND))) # (!i0(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((i0(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X16_Y3_N9
\i0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(4));

-- Location: LCCOMB_X16_Y3_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (i0(5) & (!\Add0~9\)) # (!i0(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!i0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X17_Y3_N10
\i0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~1_combout\ = (\Add0~10_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~1_combout\);

-- Location: FF_X17_Y3_N11
\i0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(5));

-- Location: LCCOMB_X16_Y3_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (i0(6) & (\Add0~11\ $ (GND))) # (!i0(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((i0(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X17_Y3_N20
\i0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~2_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~2_combout\);

-- Location: FF_X17_Y3_N21
\i0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(6));

-- Location: LCCOMB_X16_Y3_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (i0(7) & (!\Add0~13\)) # (!i0(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!i0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y3_N18
\i0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~3_combout\ = (\Add0~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~3_combout\);

-- Location: FF_X17_Y3_N19
\i0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(7));

-- Location: LCCOMB_X16_Y3_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (i0(8) & (\Add0~15\ $ (GND))) # (!i0(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((i0(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X16_Y3_N17
\i0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(8));

-- Location: LCCOMB_X16_Y3_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (i0(9) & (!\Add0~17\)) # (!i0(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!i0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X17_Y3_N24
\i0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~4_combout\ = (!\Equal0~10_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~18_combout\,
	combout => \i0~4_combout\);

-- Location: FF_X17_Y3_N25
\i0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(9));

-- Location: LCCOMB_X16_Y3_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (i0(10) & (\Add0~19\ $ (GND))) # (!i0(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((i0(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X17_Y3_N22
\i0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~5_combout\ = (\Add0~20_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~5_combout\);

-- Location: FF_X17_Y3_N23
\i0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(10));

-- Location: LCCOMB_X16_Y3_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (i0(11) & (!\Add0~21\)) # (!i0(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!i0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X16_Y3_N23
\i0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(11));

-- Location: LCCOMB_X16_Y3_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (i0(12) & (\Add0~23\ $ (GND))) # (!i0(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((i0(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X17_Y3_N2
\i0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~6_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \i0~6_combout\);

-- Location: FF_X17_Y3_N3
\i0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(12));

-- Location: LCCOMB_X16_Y3_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (i0(13) & (!\Add0~25\)) # (!i0(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!i0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X16_Y3_N27
\i0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(13));

-- Location: LCCOMB_X16_Y3_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (i0(14) & (\Add0~27\ $ (GND))) # (!i0(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((i0(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X16_Y3_N29
\i0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(14));

-- Location: LCCOMB_X16_Y3_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (i0(15) & (!\Add0~29\)) # (!i0(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!i0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X17_Y3_N4
\i0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~7_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \i0~7_combout\);

-- Location: FF_X17_Y3_N5
\i0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(15));

-- Location: LCCOMB_X17_Y3_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!i0(13) & (i0(12) & (i0(15) & !i0(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(13),
	datab => i0(12),
	datac => i0(15),
	datad => i0(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y3_N30
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!i0(0) & !i0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i0(0),
	datad => i0(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y3_N12
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (i0(7) & (i0(6) & (i0(5) & !i0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(7),
	datab => i0(6),
	datac => i0(5),
	datad => i0(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y3_N14
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (i0(3) & (!i0(2) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => i0(3),
	datac => i0(2),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y3_N8
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (i0(10) & (i0(9) & (!i0(8) & !i0(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(10),
	datab => i0(9),
	datac => i0(8),
	datad => i0(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X16_Y2_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (i0(16) & (\Add0~31\ $ (GND))) # (!i0(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((i0(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X17_Y3_N28
\i0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~8_combout\ = (\Add0~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \i0~8_combout\);

-- Location: FF_X17_Y3_N29
\i0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(16));

-- Location: LCCOMB_X16_Y2_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (i0(17) & (!\Add0~33\)) # (!i0(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!i0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X16_Y2_N3
\i0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(17));

-- Location: LCCOMB_X16_Y2_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (i0(18) & (\Add0~35\ $ (GND))) # (!i0(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((i0(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X16_Y2_N5
\i0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(18));

-- Location: LCCOMB_X16_Y2_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (i0(19) & (!\Add0~37\)) # (!i0(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!i0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X16_Y2_N7
\i0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(19));

-- Location: LCCOMB_X16_Y2_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (i0(20) & (\Add0~39\ $ (GND))) # (!i0(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((i0(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X16_Y2_N9
\i0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(20));

-- Location: LCCOMB_X16_Y2_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (i0(21) & (!\Add0~41\)) # (!i0(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!i0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X16_Y2_N11
\i0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(21));

-- Location: LCCOMB_X16_Y2_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (i0(22) & (\Add0~43\ $ (GND))) # (!i0(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((i0(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X16_Y2_N13
\i0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(22));

-- Location: LCCOMB_X16_Y2_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (i0(23) & (!\Add0~45\)) # (!i0(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!i0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X16_Y2_N15
\i0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(23));

-- Location: LCCOMB_X16_Y2_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (i0(24) & (\Add0~47\ $ (GND))) # (!i0(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((i0(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X16_Y2_N17
\i0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(24));

-- Location: LCCOMB_X16_Y2_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (i0(25) & (!\Add0~49\)) # (!i0(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!i0(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X16_Y2_N19
\i0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(25));

-- Location: LCCOMB_X16_Y2_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (i0(26) & (\Add0~51\ $ (GND))) # (!i0(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((i0(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X16_Y2_N21
\i0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(26));

-- Location: LCCOMB_X16_Y2_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (i0(27) & (!\Add0~53\)) # (!i0(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!i0(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X16_Y2_N23
\i0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(27));

-- Location: LCCOMB_X16_Y2_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (i0(28) & (\Add0~55\ $ (GND))) # (!i0(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((i0(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X16_Y2_N25
\i0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(28));

-- Location: LCCOMB_X16_Y2_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (i0(29) & (!\Add0~57\)) # (!i0(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!i0(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X16_Y2_N27
\i0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(29));

-- Location: LCCOMB_X16_Y2_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (i0(30) & (\Add0~59\ $ (GND))) # (!i0(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((i0(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i0(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X16_Y2_N29
\i0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(30));

-- Location: LCCOMB_X16_Y2_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = i0(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i0(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X16_Y2_N31
\i0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i0(31));

-- Location: LCCOMB_X17_Y2_N10
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!i0(30) & (!i0(28) & (!i0(29) & !i0(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(30),
	datab => i0(28),
	datac => i0(29),
	datad => i0(31),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y2_N8
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!i0(26) & (!i0(27) & (!i0(24) & !i0(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(26),
	datab => i0(27),
	datac => i0(24),
	datad => i0(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y2_N30
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!i0(23) & (!i0(21) & (!i0(22) & !i0(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(23),
	datab => i0(21),
	datac => i0(22),
	datad => i0(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y2_N28
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!i0(17) & (!i0(19) & (!i0(18) & i0(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(17),
	datab => i0(19),
	datac => i0(18),
	datad => i0(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y2_N0
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y3_N6
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X17_Y3_N0
\outp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[0]~2_combout\ = outp(0) $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(0),
	datad => \Equal0~10_combout\,
	combout => \outp[0]~2_combout\);

-- Location: FF_X17_Y3_N1
\outp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(0));

-- Location: LCCOMB_X14_Y7_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = i1(0) $ (VCC)
-- \Add1~1\ = CARRY(i1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X15_Y7_N8
\i1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~0_combout\ = (\Add1~0_combout\) # (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i1~0_combout\);

-- Location: FF_X14_Y7_N11
\i1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \i1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(0));

-- Location: LCCOMB_X14_Y7_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (i1(1) & (!\Add1~1\)) # (!i1(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!i1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X15_Y7_N10
\i1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~1_combout\ = (\Add1~2_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal1~10_combout\,
	combout => \i1~1_combout\);

-- Location: FF_X14_Y7_N17
\i1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \i1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(1));

-- Location: LCCOMB_X14_Y7_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (i1(2) & (\Add1~3\ $ (GND))) # (!i1(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((i1(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X14_Y7_N5
\i1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(2));

-- Location: LCCOMB_X14_Y7_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (i1(3) & (!\Add1~5\)) # (!i1(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!i1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X14_Y7_N7
\i1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(3));

-- Location: LCCOMB_X14_Y7_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (i1(4) & (\Add1~7\ $ (GND))) # (!i1(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((i1(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X13_Y7_N6
\i1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~2_combout\ = (\Add1~8_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Equal1~10_combout\,
	combout => \i1~2_combout\);

-- Location: FF_X13_Y7_N7
\i1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(4));

-- Location: LCCOMB_X14_Y7_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (i1(5) & (!\Add1~9\)) # (!i1(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!i1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X13_Y7_N8
\i1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~3_combout\ = (\Add1~10_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal1~10_combout\,
	combout => \i1~3_combout\);

-- Location: FF_X13_Y7_N9
\i1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(5));

-- Location: LCCOMB_X14_Y7_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (i1(6) & (\Add1~11\ $ (GND))) # (!i1(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((i1(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X14_Y7_N13
\i1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(6));

-- Location: LCCOMB_X14_Y7_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (i1(7) & (!\Add1~13\)) # (!i1(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!i1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X13_Y7_N26
\i1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~4_combout\ = (\Add1~14_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Equal1~10_combout\,
	combout => \i1~4_combout\);

-- Location: FF_X13_Y7_N27
\i1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(7));

-- Location: LCCOMB_X14_Y7_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (i1(8) & (\Add1~15\ $ (GND))) # (!i1(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((i1(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X15_Y7_N26
\i1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~5_combout\ = (!\Equal1~10_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datac => \Add1~16_combout\,
	combout => \i1~5_combout\);

-- Location: FF_X15_Y7_N27
\i1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(8));

-- Location: LCCOMB_X14_Y7_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (i1(9) & (!\Add1~17\)) # (!i1(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!i1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X14_Y7_N19
\i1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(9));

-- Location: LCCOMB_X14_Y7_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (i1(10) & (\Add1~19\ $ (GND))) # (!i1(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((i1(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X14_Y7_N21
\i1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(10));

-- Location: LCCOMB_X14_Y7_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (i1(11) & (!\Add1~21\)) # (!i1(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!i1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X15_Y7_N4
\i1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~6_combout\ = (!\Equal1~10_combout\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~22_combout\,
	combout => \i1~6_combout\);

-- Location: FF_X15_Y7_N5
\i1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(11));

-- Location: LCCOMB_X14_Y7_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (i1(12) & (\Add1~23\ $ (GND))) # (!i1(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((i1(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X14_Y7_N25
\i1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(12));

-- Location: LCCOMB_X14_Y7_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (i1(13) & (!\Add1~25\)) # (!i1(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!i1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X15_Y7_N28
\i1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~7_combout\ = (!\Equal1~10_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datac => \Add1~26_combout\,
	combout => \i1~7_combout\);

-- Location: FF_X15_Y7_N29
\i1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(13));

-- Location: LCCOMB_X14_Y7_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (i1(14) & (\Add1~27\ $ (GND))) # (!i1(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((i1(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X15_Y7_N6
\i1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~8_combout\ = (!\Equal1~10_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~28_combout\,
	combout => \i1~8_combout\);

-- Location: FF_X15_Y7_N7
\i1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(14));

-- Location: LCCOMB_X14_Y7_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (i1(15) & (!\Add1~29\)) # (!i1(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!i1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X14_Y7_N31
\i1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(15));

-- Location: LCCOMB_X14_Y6_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (i1(16) & (\Add1~31\ $ (GND))) # (!i1(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((i1(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X15_Y7_N24
\i1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~9_combout\ = (!\Equal1~10_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~32_combout\,
	combout => \i1~9_combout\);

-- Location: FF_X15_Y7_N25
\i1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(16));

-- Location: LCCOMB_X14_Y6_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (i1(17) & (!\Add1~33\)) # (!i1(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!i1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X14_Y6_N3
\i1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(17));

-- Location: LCCOMB_X14_Y6_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (i1(18) & (\Add1~35\ $ (GND))) # (!i1(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((i1(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X14_Y6_N5
\i1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(18));

-- Location: LCCOMB_X14_Y6_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (i1(19) & (!\Add1~37\)) # (!i1(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!i1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X14_Y6_N7
\i1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(19));

-- Location: LCCOMB_X14_Y6_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (i1(20) & (\Add1~39\ $ (GND))) # (!i1(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((i1(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X14_Y6_N9
\i1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(20));

-- Location: LCCOMB_X14_Y6_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (i1(21) & (!\Add1~41\)) # (!i1(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!i1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X14_Y6_N11
\i1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(21));

-- Location: LCCOMB_X14_Y6_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (i1(22) & (\Add1~43\ $ (GND))) # (!i1(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((i1(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X14_Y6_N13
\i1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(22));

-- Location: LCCOMB_X14_Y6_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (i1(23) & (!\Add1~45\)) # (!i1(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!i1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X14_Y6_N15
\i1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(23));

-- Location: LCCOMB_X15_Y6_N16
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!i1(20) & (!i1(21) & (!i1(23) & !i1(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(20),
	datab => i1(21),
	datac => i1(23),
	datad => i1(22),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X15_Y7_N14
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!i1(18) & (i1(16) & (!i1(19) & !i1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(18),
	datab => i1(16),
	datac => i1(19),
	datad => i1(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X15_Y7_N12
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (i1(0) & (!i1(2) & (!i1(3) & !i1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(0),
	datab => i1(2),
	datac => i1(3),
	datad => i1(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X15_Y7_N16
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (i1(14) & (i1(13) & (!i1(12) & !i1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(14),
	datab => i1(13),
	datac => i1(12),
	datad => i1(15),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y7_N22
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (i1(8) & (!i1(10) & (i1(11) & !i1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(8),
	datab => i1(10),
	datac => i1(11),
	datad => i1(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X13_Y7_N24
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (i1(4) & (i1(5) & (!i1(6) & i1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(4),
	datab => i1(5),
	datac => i1(6),
	datad => i1(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X15_Y7_N30
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~3_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X14_Y6_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (i1(24) & (\Add1~47\ $ (GND))) # (!i1(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((i1(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X14_Y6_N17
\i1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(24));

-- Location: LCCOMB_X14_Y6_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (i1(25) & (!\Add1~49\)) # (!i1(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!i1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X14_Y6_N19
\i1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(25));

-- Location: LCCOMB_X14_Y6_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (i1(26) & (\Add1~51\ $ (GND))) # (!i1(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((i1(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X14_Y6_N21
\i1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(26));

-- Location: LCCOMB_X14_Y6_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (i1(27) & (!\Add1~53\)) # (!i1(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!i1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X14_Y6_N23
\i1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(27));

-- Location: LCCOMB_X15_Y6_N22
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!i1(24) & (!i1(25) & (!i1(26) & !i1(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(24),
	datab => i1(25),
	datac => i1(26),
	datad => i1(27),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X14_Y6_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (i1(28) & (\Add1~55\ $ (GND))) # (!i1(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((i1(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X14_Y6_N25
\i1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(28));

-- Location: LCCOMB_X14_Y6_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (i1(29) & (!\Add1~57\)) # (!i1(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!i1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X14_Y6_N27
\i1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(29));

-- Location: LCCOMB_X14_Y6_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (i1(30) & (\Add1~59\ $ (GND))) # (!i1(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((i1(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i1(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X14_Y6_N29
\i1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(30));

-- Location: LCCOMB_X14_Y6_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = i1(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i1(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X14_Y6_N31
\i1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i1(31));

-- Location: LCCOMB_X15_Y6_N24
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!i1(28) & (!i1(30) & (!i1(29) & !i1(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(28),
	datab => i1(30),
	datac => i1(29),
	datad => i1(31),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X15_Y7_N20
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & \Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X15_Y7_N18
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~6_combout\ & (\Equal1~5_combout\ & (\Equal1~4_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X13_Y7_N28
\outp[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[1]~1_combout\ = outp(1) $ (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(1),
	datad => \Equal1~10_combout\,
	combout => \outp[1]~1_combout\);

-- Location: FF_X13_Y7_N29
\outp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(1));

-- Location: LCCOMB_X11_Y3_N10
\clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~1_combout\ = (\Equal8~2_combout\ & (!outp(0))) # (!\Equal8~2_combout\ & (((\Equal9~0_combout\ & !outp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~2_combout\,
	datab => outp(0),
	datac => \Equal9~0_combout\,
	datad => outp(1),
	combout => \clk_out~1_combout\);

-- Location: LCCOMB_X10_Y11_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = i2(0) $ (VCC)
-- \Add2~1\ = CARRY(i2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X9_Y11_N12
\i2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~0_combout\ = (\Equal2~10_combout\) # (\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add2~0_combout\,
	combout => \i2~0_combout\);

-- Location: FF_X9_Y11_N13
\i2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(0));

-- Location: LCCOMB_X10_Y11_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (i2(1) & (!\Add2~1\)) # (!i2(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!i2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X9_Y11_N16
\i2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~2_combout\ = (\Add2~2_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Equal2~10_combout\,
	combout => \i2~2_combout\);

-- Location: FF_X9_Y11_N17
\i2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(1));

-- Location: LCCOMB_X10_Y11_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (i2(2) & (\Add2~3\ $ (GND))) # (!i2(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((i2(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X9_Y11_N6
\i2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~1_combout\ = (!\Equal2~10_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~4_combout\,
	combout => \i2~1_combout\);

-- Location: FF_X9_Y11_N7
\i2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(2));

-- Location: LCCOMB_X10_Y11_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (i2(3) & (!\Add2~5\)) # (!i2(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!i2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X10_Y11_N7
\i2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(3));

-- Location: LCCOMB_X9_Y11_N22
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (i2(2) & (!i2(1) & (!i2(3) & i2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(2),
	datab => i2(1),
	datac => i2(3),
	datad => i2(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y11_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (i2(4) & (\Add2~7\ $ (GND))) # (!i2(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((i2(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X10_Y11_N9
\i2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(4));

-- Location: LCCOMB_X10_Y11_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (i2(5) & (!\Add2~9\)) # (!i2(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!i2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X10_Y11_N11
\i2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(5));

-- Location: LCCOMB_X10_Y11_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (i2(6) & (\Add2~11\ $ (GND))) # (!i2(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((i2(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X10_Y11_N13
\i2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(6));

-- Location: LCCOMB_X10_Y11_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (i2(7) & (!\Add2~13\)) # (!i2(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!i2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X9_Y11_N24
\i2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~3_combout\ = (!\Equal2~10_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add2~14_combout\,
	combout => \i2~3_combout\);

-- Location: FF_X9_Y11_N25
\i2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(7));

-- Location: LCCOMB_X10_Y11_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (i2(8) & (\Add2~15\ $ (GND))) # (!i2(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((i2(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X9_Y11_N4
\i2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~4_combout\ = (!\Equal2~10_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~16_combout\,
	combout => \i2~4_combout\);

-- Location: FF_X9_Y11_N5
\i2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(8));

-- Location: LCCOMB_X10_Y11_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (i2(9) & (!\Add2~17\)) # (!i2(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!i2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X10_Y11_N19
\i2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(9));

-- Location: LCCOMB_X10_Y11_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (i2(10) & (\Add2~19\ $ (GND))) # (!i2(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((i2(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X9_Y11_N26
\i2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~5_combout\ = (!\Equal2~10_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add2~20_combout\,
	combout => \i2~5_combout\);

-- Location: FF_X9_Y11_N27
\i2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(10));

-- Location: LCCOMB_X10_Y11_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (i2(11) & (!\Add2~21\)) # (!i2(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!i2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X10_Y11_N23
\i2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(11));

-- Location: LCCOMB_X9_Y11_N20
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (i2(10) & (!i2(11) & (i2(8) & !i2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(10),
	datab => i2(11),
	datac => i2(8),
	datad => i2(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X9_Y11_N14
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!i2(5) & (!i2(4) & (!i2(6) & i2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(5),
	datab => i2(4),
	datac => i2(6),
	datad => i2(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X10_Y11_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (i2(12) & (\Add2~23\ $ (GND))) # (!i2(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((i2(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X10_Y11_N25
\i2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(12));

-- Location: LCCOMB_X10_Y11_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (i2(13) & (!\Add2~25\)) # (!i2(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!i2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X10_Y11_N27
\i2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(13));

-- Location: LCCOMB_X10_Y11_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (i2(14) & (\Add2~27\ $ (GND))) # (!i2(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((i2(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X9_Y11_N2
\i2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~6_combout\ = (!\Equal2~10_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~28_combout\,
	combout => \i2~6_combout\);

-- Location: FF_X9_Y11_N3
\i2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(14));

-- Location: LCCOMB_X10_Y11_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (i2(15) & (!\Add2~29\)) # (!i2(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!i2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X10_Y11_N31
\i2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(15));

-- Location: LCCOMB_X9_Y11_N28
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!i2(13) & (i2(14) & (!i2(15) & !i2(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(13),
	datab => i2(14),
	datac => i2(15),
	datad => i2(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X9_Y11_N10
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X10_Y10_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (i2(16) & (\Add2~31\ $ (GND))) # (!i2(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((i2(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X9_Y10_N16
\i2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2~7_combout\ = (\Add2~32_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	datad => \Equal2~10_combout\,
	combout => \i2~7_combout\);

-- Location: FF_X9_Y10_N17
\i2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(16));

-- Location: LCCOMB_X10_Y10_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (i2(17) & (!\Add2~33\)) # (!i2(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!i2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X10_Y10_N3
\i2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(17));

-- Location: LCCOMB_X10_Y10_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (i2(18) & (\Add2~35\ $ (GND))) # (!i2(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((i2(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X10_Y10_N5
\i2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(18));

-- Location: LCCOMB_X10_Y10_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (i2(19) & (!\Add2~37\)) # (!i2(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!i2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X10_Y10_N7
\i2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(19));

-- Location: LCCOMB_X10_Y10_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (i2(20) & (\Add2~39\ $ (GND))) # (!i2(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((i2(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X10_Y10_N9
\i2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(20));

-- Location: LCCOMB_X10_Y10_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (i2(21) & (!\Add2~41\)) # (!i2(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!i2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X10_Y10_N11
\i2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(21));

-- Location: LCCOMB_X10_Y10_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (i2(22) & (\Add2~43\ $ (GND))) # (!i2(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((i2(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X10_Y10_N13
\i2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(22));

-- Location: LCCOMB_X10_Y10_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (i2(23) & (!\Add2~45\)) # (!i2(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!i2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X10_Y10_N15
\i2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(23));

-- Location: LCCOMB_X10_Y10_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (i2(24) & (\Add2~47\ $ (GND))) # (!i2(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((i2(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X10_Y10_N17
\i2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(24));

-- Location: LCCOMB_X10_Y10_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (i2(25) & (!\Add2~49\)) # (!i2(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!i2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X10_Y10_N19
\i2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(25));

-- Location: LCCOMB_X10_Y10_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (i2(26) & (\Add2~51\ $ (GND))) # (!i2(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((i2(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X10_Y10_N21
\i2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(26));

-- Location: LCCOMB_X10_Y10_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (i2(27) & (!\Add2~53\)) # (!i2(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!i2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X10_Y10_N23
\i2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(27));

-- Location: LCCOMB_X9_Y10_N0
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!i2(27) & (!i2(25) & (!i2(26) & !i2(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(27),
	datab => i2(25),
	datac => i2(26),
	datad => i2(24),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X10_Y10_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (i2(28) & (\Add2~55\ $ (GND))) # (!i2(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((i2(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X10_Y10_N25
\i2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(28));

-- Location: LCCOMB_X10_Y10_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (i2(29) & (!\Add2~57\)) # (!i2(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!i2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X10_Y10_N27
\i2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(29));

-- Location: LCCOMB_X10_Y10_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (i2(30) & (\Add2~59\ $ (GND))) # (!i2(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((i2(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i2(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X10_Y10_N29
\i2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(30));

-- Location: LCCOMB_X10_Y10_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = i2(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i2(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X10_Y10_N31
\i2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2(31));

-- Location: LCCOMB_X9_Y10_N22
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!i2(29) & (!i2(30) & (!i2(31) & !i2(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(29),
	datab => i2(30),
	datac => i2(31),
	datad => i2(28),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X9_Y10_N30
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!i2(19) & !i2(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i2(19),
	datad => i2(18),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X9_Y10_N28
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!i2(21) & (!i2(20) & (!i2(23) & !i2(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(21),
	datab => i2(20),
	datac => i2(23),
	datad => i2(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X9_Y10_N18
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!i2(17) & (i2(16) & (\Equal2~5_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(17),
	datab => i2(16),
	datac => \Equal2~5_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X9_Y11_N8
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & (\Equal2~8_combout\ & (\Equal2~9_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X10_Y3_N24
\outp[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[2]~0_combout\ = outp(2) $ (\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(2),
	datad => \Equal2~10_combout\,
	combout => \outp[2]~0_combout\);

-- Location: FF_X10_Y3_N25
\outp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(2));

-- Location: LCCOMB_X10_Y3_N20
\clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~0_combout\ = (!\Equal9~0_combout\ & (\Equal10~0_combout\ & (!\Equal8~2_combout\ & !outp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \Equal8~2_combout\,
	datad => outp(2),
	combout => \clk_out~0_combout\);

-- Location: LCCOMB_X10_Y3_N14
\clk_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~6_combout\ = (\Equal8~1_combout\ & ((\switch[2]~input_o\ & (\switch[1]~input_o\)) # (!\switch[2]~input_o\ & ((!\switch[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \switch[2]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \clk_out~6_combout\);

-- Location: LCCOMB_X11_Y3_N26
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\Equal12~1_combout\ & (\switch[5]~input_o\ & (!\switch[6]~input_o\ & !\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \switch[5]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X13_Y3_N2
\Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((i0(0) & i0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(0),
	datab => i0(1),
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X13_Y3_N4
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (i5(2) & (!\Add5~1_cout\)) # (!i5(2) & ((\Add5~1_cout\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1_cout\) # (!i5(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X13_Y3_N0
\i5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~0_combout\ = (\Add5~2_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~2_combout\,
	datad => \Equal5~9_combout\,
	combout => \i5~0_combout\);

-- Location: FF_X13_Y3_N1
\i5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(2));

-- Location: LCCOMB_X13_Y3_N6
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (i5(3) & (\Add5~3\ $ (GND))) # (!i5(3) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((i5(3) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(3),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X13_Y3_N7
\i5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(3));

-- Location: LCCOMB_X13_Y3_N8
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (i5(4) & (!\Add5~5\)) # (!i5(4) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!i5(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X13_Y3_N9
\i5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(4));

-- Location: LCCOMB_X13_Y3_N10
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (i5(5) & (\Add5~7\ $ (GND))) # (!i5(5) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((i5(5) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(5),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X14_Y3_N16
\i5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~1_combout\ = (!\Equal5~9_combout\ & \Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~8_combout\,
	combout => \i5~1_combout\);

-- Location: FF_X14_Y3_N17
\i5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(5));

-- Location: LCCOMB_X13_Y3_N12
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (i5(6) & (!\Add5~9\)) # (!i5(6) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!i5(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(6),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X13_Y3_N13
\i5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(6));

-- Location: LCCOMB_X13_Y3_N14
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (i5(7) & (\Add5~11\ $ (GND))) # (!i5(7) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((i5(7) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(7),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X13_Y3_N15
\i5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(7));

-- Location: LCCOMB_X13_Y3_N16
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (i5(8) & (!\Add5~13\)) # (!i5(8) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!i5(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(8),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X13_Y3_N17
\i5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(8));

-- Location: LCCOMB_X13_Y3_N18
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (i5(9) & (\Add5~15\ $ (GND))) # (!i5(9) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((i5(9) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X13_Y3_N19
\i5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(9));

-- Location: LCCOMB_X13_Y3_N20
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (i5(10) & (!\Add5~17\)) # (!i5(10) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!i5(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(10),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X14_Y3_N6
\i5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~2_combout\ = (!\Equal5~9_combout\ & \Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~18_combout\,
	combout => \i5~2_combout\);

-- Location: FF_X14_Y3_N7
\i5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(10));

-- Location: LCCOMB_X13_Y3_N22
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (i5(11) & (\Add5~19\ $ (GND))) # (!i5(11) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((i5(11) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X13_Y3_N23
\i5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(11));

-- Location: LCCOMB_X13_Y3_N24
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (i5(12) & (!\Add5~21\)) # (!i5(12) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!i5(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(12),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X14_Y3_N30
\i5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~3_combout\ = (!\Equal5~9_combout\ & \Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~22_combout\,
	combout => \i5~3_combout\);

-- Location: FF_X14_Y3_N31
\i5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(12));

-- Location: LCCOMB_X13_Y3_N26
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (i5(13) & (\Add5~23\ $ (GND))) # (!i5(13) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((i5(13) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X14_Y3_N20
\i5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~4_combout\ = (\Add5~24_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~24_combout\,
	datad => \Equal5~9_combout\,
	combout => \i5~4_combout\);

-- Location: FF_X14_Y3_N21
\i5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(13));

-- Location: LCCOMB_X13_Y3_N28
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (i5(14) & (!\Add5~25\)) # (!i5(14) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!i5(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(14),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X14_Y3_N2
\i5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~5_combout\ = (!\Equal5~9_combout\ & \Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~26_combout\,
	combout => \i5~5_combout\);

-- Location: FF_X14_Y3_N3
\i5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(14));

-- Location: LCCOMB_X13_Y3_N30
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (i5(15) & (\Add5~27\ $ (GND))) # (!i5(15) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((i5(15) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(15),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X14_Y3_N12
\i5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i5~6_combout\ = (!\Equal5~9_combout\ & \Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~28_combout\,
	combout => \i5~6_combout\);

-- Location: FF_X14_Y3_N13
\i5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(15));

-- Location: LCCOMB_X14_Y3_N22
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (i5(15) & (i5(14) & (i5(12) & i5(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(15),
	datab => i5(14),
	datac => i5(12),
	datad => i5(13),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X14_Y3_N28
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (i5(10) & (!i5(9) & (!i5(8) & !i5(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(10),
	datab => i5(9),
	datac => i5(8),
	datad => i5(11),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X14_Y3_N18
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!i5(7) & (i5(5) & (!i5(6) & !i5(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(7),
	datab => i5(5),
	datac => i5(6),
	datad => i5(4),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X14_Y3_N8
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (i5(2) & (!i5(3) & (\Equal0~0_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(2),
	datab => i5(3),
	datac => \Equal0~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X13_Y2_N0
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (i5(16) & (!\Add5~29\)) # (!i5(16) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!i5(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(16),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: FF_X13_Y2_N1
\i5[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(16));

-- Location: LCCOMB_X13_Y2_N2
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (i5(17) & (\Add5~31\ $ (GND))) # (!i5(17) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((i5(17) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(17),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: FF_X13_Y2_N3
\i5[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(17));

-- Location: LCCOMB_X13_Y2_N4
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (i5(18) & (!\Add5~33\)) # (!i5(18) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!i5(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(18),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: FF_X13_Y2_N5
\i5[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(18));

-- Location: LCCOMB_X13_Y2_N6
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (i5(19) & (\Add5~35\ $ (GND))) # (!i5(19) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((i5(19) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(19),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: FF_X13_Y2_N7
\i5[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(19));

-- Location: LCCOMB_X13_Y2_N8
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (i5(20) & (!\Add5~37\)) # (!i5(20) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!i5(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(20),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: FF_X13_Y2_N9
\i5[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(20));

-- Location: LCCOMB_X13_Y2_N10
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (i5(21) & (\Add5~39\ $ (GND))) # (!i5(21) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((i5(21) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(21),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X13_Y2_N11
\i5[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(21));

-- Location: LCCOMB_X13_Y2_N12
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (i5(22) & (!\Add5~41\)) # (!i5(22) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!i5(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(22),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X13_Y2_N13
\i5[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(22));

-- Location: LCCOMB_X13_Y2_N14
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (i5(23) & (\Add5~43\ $ (GND))) # (!i5(23) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((i5(23) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(23),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: FF_X13_Y2_N15
\i5[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(23));

-- Location: LCCOMB_X14_Y2_N30
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!i5(20) & (!i5(23) & (!i5(22) & !i5(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(20),
	datab => i5(23),
	datac => i5(22),
	datad => i5(21),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X14_Y2_N8
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (!i5(16) & (!i5(19) & (!i5(18) & !i5(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(16),
	datab => i5(19),
	datac => i5(18),
	datad => i5(17),
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X13_Y2_N16
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (i5(24) & (!\Add5~45\)) # (!i5(24) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!i5(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(24),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X13_Y2_N17
\i5[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(24));

-- Location: LCCOMB_X13_Y2_N18
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (i5(25) & (\Add5~47\ $ (GND))) # (!i5(25) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((i5(25) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(25),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X13_Y2_N19
\i5[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(25));

-- Location: LCCOMB_X13_Y2_N20
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (i5(26) & (!\Add5~49\)) # (!i5(26) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!i5(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(26),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: FF_X13_Y2_N21
\i5[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(26));

-- Location: LCCOMB_X13_Y2_N22
\Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (i5(27) & (\Add5~51\ $ (GND))) # (!i5(27) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((i5(27) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(27),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: FF_X13_Y2_N23
\i5[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(27));

-- Location: LCCOMB_X14_Y2_N4
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!i5(24) & (!i5(25) & (!i5(26) & !i5(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(24),
	datab => i5(25),
	datac => i5(26),
	datad => i5(27),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X13_Y2_N24
\Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (i5(28) & (!\Add5~53\)) # (!i5(28) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!i5(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(28),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: FF_X13_Y2_N25
\i5[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(28));

-- Location: LCCOMB_X13_Y2_N26
\Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (i5(29) & (\Add5~55\ $ (GND))) # (!i5(29) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((i5(29) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(29),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: FF_X13_Y2_N27
\i5[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(29));

-- Location: LCCOMB_X13_Y2_N28
\Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (i5(30) & (!\Add5~57\)) # (!i5(30) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!i5(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i5(30),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: FF_X13_Y2_N29
\i5[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(30));

-- Location: LCCOMB_X13_Y2_N30
\Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = i5(31) $ (!\Add5~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i5(31),
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: FF_X13_Y2_N31
\i5[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i5(31));

-- Location: LCCOMB_X14_Y2_N10
\Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!i5(29) & (!i5(30) & (!i5(28) & !i5(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i5(29),
	datab => i5(30),
	datac => i5(28),
	datad => i5(31),
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X14_Y2_N0
\Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (\Equal5~5_combout\ & (\Equal5~4_combout\ & (\Equal5~6_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~6_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X14_Y3_N24
\Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\Equal5~3_combout\ & (\Equal5~2_combout\ & (\Equal5~1_combout\ & \Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X14_Y3_N26
\outp[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[5]~4_combout\ = outp(5) $ (\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => outp(5),
	datad => \Equal5~9_combout\,
	combout => \outp[5]~4_combout\);

-- Location: FF_X11_Y3_N17
\outp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \outp[5]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(5));

-- Location: LCCOMB_X20_Y3_N2
\Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY((i0(1) & i0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(1),
	datab => i0(0),
	datad => VCC,
	cout => \Add4~1_cout\);

-- Location: LCCOMB_X20_Y3_N4
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (i4(2) & (!\Add4~1_cout\)) # (!i4(2) & ((\Add4~1_cout\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1_cout\) # (!i4(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(2),
	datad => VCC,
	cin => \Add4~1_cout\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X19_Y3_N8
\i4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~0_combout\ = (!\Equal4~9_combout\ & \Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~9_combout\,
	datad => \Add4~2_combout\,
	combout => \i4~0_combout\);

-- Location: FF_X19_Y3_N9
\i4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(2));

-- Location: LCCOMB_X20_Y3_N6
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (i4(3) & (\Add4~3\ $ (GND))) # (!i4(3) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((i4(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X20_Y3_N7
\i4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(3));

-- Location: LCCOMB_X20_Y3_N8
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (i4(4) & (!\Add4~5\)) # (!i4(4) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!i4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X20_Y3_N9
\i4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(4));

-- Location: LCCOMB_X20_Y3_N10
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (i4(5) & (\Add4~7\ $ (GND))) # (!i4(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((i4(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X20_Y3_N11
\i4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(5));

-- Location: LCCOMB_X20_Y3_N12
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (i4(6) & (!\Add4~9\)) # (!i4(6) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!i4(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X19_Y3_N26
\i4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~1_combout\ = (\Add4~10_combout\ & !\Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~10_combout\,
	datac => \Equal4~9_combout\,
	combout => \i4~1_combout\);

-- Location: FF_X19_Y3_N27
\i4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(6));

-- Location: LCCOMB_X20_Y3_N14
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (i4(7) & (\Add4~11\ $ (GND))) # (!i4(7) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((i4(7) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X20_Y3_N15
\i4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(7));

-- Location: LCCOMB_X20_Y3_N16
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (i4(8) & (!\Add4~13\)) # (!i4(8) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!i4(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X19_Y3_N16
\i4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~2_combout\ = (!\Equal4~9_combout\ & \Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~9_combout\,
	datad => \Add4~14_combout\,
	combout => \i4~2_combout\);

-- Location: FF_X19_Y3_N17
\i4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(8));

-- Location: LCCOMB_X20_Y3_N18
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (i4(9) & (\Add4~15\ $ (GND))) # (!i4(9) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((i4(9) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(9),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X20_Y3_N0
\i4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~3_combout\ = (\Add4~16_combout\ & !\Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~16_combout\,
	datac => \Equal4~9_combout\,
	combout => \i4~3_combout\);

-- Location: FF_X20_Y3_N1
\i4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(9));

-- Location: LCCOMB_X20_Y3_N20
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (i4(10) & (!\Add4~17\)) # (!i4(10) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!i4(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(10),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X19_Y3_N6
\i4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~4_combout\ = (!\Equal4~9_combout\ & \Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~9_combout\,
	datad => \Add4~18_combout\,
	combout => \i4~4_combout\);

-- Location: FF_X19_Y3_N7
\i4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(10));

-- Location: LCCOMB_X20_Y3_N22
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (i4(11) & (\Add4~19\ $ (GND))) # (!i4(11) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((i4(11) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(11),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X19_Y3_N20
\i4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~5_combout\ = (!\Equal4~9_combout\ & \Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~9_combout\,
	datad => \Add4~20_combout\,
	combout => \i4~5_combout\);

-- Location: FF_X19_Y3_N21
\i4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(11));

-- Location: LCCOMB_X20_Y3_N24
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (i4(12) & (!\Add4~21\)) # (!i4(12) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!i4(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(12),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: FF_X20_Y3_N25
\i4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(12));

-- Location: LCCOMB_X20_Y3_N26
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (i4(13) & (\Add4~23\ $ (GND))) # (!i4(13) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((i4(13) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X20_Y3_N27
\i4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(13));

-- Location: LCCOMB_X20_Y3_N28
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (i4(14) & (!\Add4~25\)) # (!i4(14) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!i4(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(14),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X20_Y3_N29
\i4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(14));

-- Location: LCCOMB_X20_Y3_N30
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (i4(15) & (\Add4~27\ $ (GND))) # (!i4(15) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((i4(15) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(15),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X20_Y3_N31
\i4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(15));

-- Location: LCCOMB_X19_Y3_N12
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!i4(15) & (!i4(12) & (!i4(13) & !i4(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(15),
	datab => i4(12),
	datac => i4(13),
	datad => i4(14),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X19_Y3_N2
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (i4(10) & (i4(11) & (i4(9) & i4(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(10),
	datab => i4(11),
	datac => i4(9),
	datad => i4(8),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X19_Y3_N28
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (i4(6) & (!i4(4) & (!i4(5) & !i4(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(6),
	datab => i4(4),
	datac => i4(5),
	datad => i4(7),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X19_Y3_N14
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!i4(3) & (i4(2) & (\Equal0~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(3),
	datab => i4(2),
	datac => \Equal0~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X20_Y2_N0
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (i4(16) & (!\Add4~29\)) # (!i4(16) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!i4(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(16),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X19_Y3_N30
\i4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i4~6_combout\ = (!\Equal4~9_combout\ & \Add4~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~9_combout\,
	datad => \Add4~30_combout\,
	combout => \i4~6_combout\);

-- Location: FF_X19_Y3_N31
\i4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(16));

-- Location: LCCOMB_X20_Y2_N2
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (i4(17) & (\Add4~31\ $ (GND))) # (!i4(17) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((i4(17) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(17),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X20_Y2_N3
\i4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(17));

-- Location: LCCOMB_X20_Y2_N4
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (i4(18) & (!\Add4~33\)) # (!i4(18) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!i4(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(18),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X20_Y2_N5
\i4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(18));

-- Location: LCCOMB_X20_Y2_N6
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (i4(19) & (\Add4~35\ $ (GND))) # (!i4(19) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((i4(19) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(19),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X20_Y2_N7
\i4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(19));

-- Location: LCCOMB_X19_Y3_N24
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (!i4(18) & (!i4(17) & (i4(16) & !i4(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(18),
	datab => i4(17),
	datac => i4(16),
	datad => i4(19),
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X20_Y2_N8
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (i4(20) & (!\Add4~37\)) # (!i4(20) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!i4(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(20),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: FF_X20_Y2_N9
\i4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(20));

-- Location: LCCOMB_X20_Y2_N10
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (i4(21) & (\Add4~39\ $ (GND))) # (!i4(21) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((i4(21) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(21),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X20_Y2_N11
\i4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(21));

-- Location: LCCOMB_X20_Y2_N12
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (i4(22) & (!\Add4~41\)) # (!i4(22) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!i4(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(22),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: FF_X20_Y2_N13
\i4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(22));

-- Location: LCCOMB_X20_Y2_N14
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (i4(23) & (\Add4~43\ $ (GND))) # (!i4(23) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((i4(23) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(23),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X20_Y2_N15
\i4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(23));

-- Location: LCCOMB_X20_Y2_N16
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (i4(24) & (!\Add4~45\)) # (!i4(24) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!i4(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(24),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X20_Y2_N17
\i4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(24));

-- Location: LCCOMB_X20_Y2_N18
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (i4(25) & (\Add4~47\ $ (GND))) # (!i4(25) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((i4(25) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(25),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X20_Y2_N19
\i4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(25));

-- Location: LCCOMB_X20_Y2_N20
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (i4(26) & (!\Add4~49\)) # (!i4(26) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!i4(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(26),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X20_Y2_N21
\i4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(26));

-- Location: LCCOMB_X20_Y2_N22
\Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (i4(27) & (\Add4~51\ $ (GND))) # (!i4(27) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((i4(27) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(27),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X20_Y2_N23
\i4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(27));

-- Location: LCCOMB_X20_Y2_N24
\Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (i4(28) & (!\Add4~53\)) # (!i4(28) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!i4(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(28),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: FF_X20_Y2_N25
\i4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(28));

-- Location: LCCOMB_X20_Y2_N26
\Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (i4(29) & (\Add4~55\ $ (GND))) # (!i4(29) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((i4(29) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(29),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X20_Y2_N27
\i4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(29));

-- Location: LCCOMB_X20_Y2_N28
\Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (i4(30) & (!\Add4~57\)) # (!i4(30) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!i4(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i4(30),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: FF_X20_Y2_N29
\i4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(30));

-- Location: LCCOMB_X20_Y2_N30
\Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = i4(31) $ (!\Add4~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i4(31),
	cin => \Add4~59\,
	combout => \Add4~60_combout\);

-- Location: FF_X20_Y2_N31
\i4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i4(31));

-- Location: LCCOMB_X19_Y2_N0
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!i4(31) & (!i4(30) & (!i4(29) & !i4(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(31),
	datab => i4(30),
	datac => i4(29),
	datad => i4(28),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X19_Y2_N26
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!i4(26) & (!i4(24) & (!i4(25) & !i4(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(26),
	datab => i4(24),
	datac => i4(25),
	datad => i4(27),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X19_Y2_N24
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!i4(23) & (!i4(21) & (!i4(20) & !i4(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i4(23),
	datab => i4(21),
	datac => i4(20),
	datad => i4(22),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X19_Y3_N10
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (\Equal4~4_combout\ & (\Equal4~7_combout\ & (\Equal4~6_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \Equal4~7_combout\,
	datac => \Equal4~6_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X19_Y3_N4
\Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~3_combout\ & (\Equal4~2_combout\ & (\Equal4~1_combout\ & \Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal4~8_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X11_Y3_N14
\outp[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[4]~5_combout\ = outp(4) $ (\Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(4),
	datad => \Equal4~9_combout\,
	combout => \outp[4]~5_combout\);

-- Location: FF_X11_Y3_N15
\outp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(4));

-- Location: LCCOMB_X11_Y3_N4
\Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\Equal12~1_combout\ & (!\switch[7]~input_o\ & (!\switch[6]~input_o\ & !\switch[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \switch[7]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[5]~input_o\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X11_Y3_N6
\clk_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~2_combout\ = (\Equal12~2_combout\ & (((!outp(4))))) # (!\Equal12~2_combout\ & (\Equal13~0_combout\ & (!outp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => outp(5),
	datac => outp(4),
	datad => \Equal12~2_combout\,
	combout => \clk_out~2_combout\);

-- Location: LCCOMB_X11_Y8_N0
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = i7(0) $ (VCC)
-- \Add7~1\ = CARRY(i7(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X10_Y8_N6
\i7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~5_combout\ = (\Add7~0_combout\) # (\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~0_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~5_combout\);

-- Location: FF_X11_Y8_N23
\i7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \i7~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(0));

-- Location: LCCOMB_X11_Y8_N2
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (i7(1) & (!\Add7~1\)) # (!i7(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!i7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: FF_X11_Y8_N3
\i7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(1));

-- Location: LCCOMB_X11_Y8_N4
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (i7(2) & (\Add7~3\ $ (GND))) # (!i7(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((i7(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X10_Y8_N28
\i7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~6_combout\ = (\Add7~4_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~4_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~6_combout\);

-- Location: FF_X10_Y8_N29
\i7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(2));

-- Location: LCCOMB_X11_Y8_N6
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (i7(3) & (!\Add7~5\)) # (!i7(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!i7(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: FF_X11_Y8_N7
\i7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(3));

-- Location: LCCOMB_X11_Y8_N8
\Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (i7(4) & (\Add7~7\ $ (GND))) # (!i7(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((i7(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X10_Y8_N12
\i7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~7_combout\ = (\Add7~8_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~8_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~7_combout\);

-- Location: FF_X10_Y8_N13
\i7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(4));

-- Location: LCCOMB_X11_Y8_N10
\Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (i7(5) & (!\Add7~9\)) # (!i7(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!i7(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X10_Y8_N14
\i7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~8_combout\ = (\Add7~10_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~10_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~8_combout\);

-- Location: FF_X10_Y8_N15
\i7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(5));

-- Location: LCCOMB_X11_Y8_N12
\Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (i7(6) & (\Add7~11\ $ (GND))) # (!i7(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((i7(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X10_Y8_N16
\i7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~9_combout\ = (\Add7~12_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~12_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~9_combout\);

-- Location: FF_X10_Y8_N17
\i7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(6));

-- Location: LCCOMB_X11_Y8_N14
\Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (i7(7) & (!\Add7~13\)) # (!i7(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!i7(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X11_Y8_N15
\i7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(7));

-- Location: LCCOMB_X10_Y8_N30
\Equal7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (i7(1) & (!i7(2) & (!i7(7) & i7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(1),
	datab => i7(2),
	datac => i7(7),
	datad => i7(0),
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X10_Y8_N22
\Equal7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (i7(4) & (i7(6) & (i7(5) & !i7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(4),
	datab => i7(6),
	datac => i7(5),
	datad => i7(3),
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X11_Y8_N16
\Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (i7(8) & (\Add7~15\ $ (GND))) # (!i7(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((i7(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X12_Y8_N30
\i7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~4_combout\ = (\Add7~16_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~16_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~4_combout\);

-- Location: FF_X12_Y8_N31
\i7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(8));

-- Location: LCCOMB_X11_Y8_N18
\Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (i7(9) & (!\Add7~17\)) # (!i7(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!i7(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X12_Y8_N20
\i7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~3_combout\ = (\Add7~18_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~18_combout\,
	datad => \Equal7~10_combout\,
	combout => \i7~3_combout\);

-- Location: FF_X12_Y8_N21
\i7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(9));

-- Location: LCCOMB_X11_Y8_N20
\Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (i7(10) & (\Add7~19\ $ (GND))) # (!i7(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((i7(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X11_Y8_N21
\i7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(10));

-- Location: LCCOMB_X11_Y8_N22
\Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (i7(11) & (!\Add7~21\)) # (!i7(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!i7(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X12_Y8_N26
\i7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~2_combout\ = (!\Equal7~10_combout\ & \Add7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Add7~22_combout\,
	combout => \i7~2_combout\);

-- Location: FF_X12_Y8_N27
\i7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(11));

-- Location: LCCOMB_X11_Y8_N24
\Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (i7(12) & (\Add7~23\ $ (GND))) # (!i7(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((i7(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: FF_X11_Y8_N25
\i7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(12));

-- Location: LCCOMB_X11_Y8_N26
\Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (i7(13) & (!\Add7~25\)) # (!i7(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!i7(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: FF_X11_Y8_N27
\i7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(13));

-- Location: LCCOMB_X11_Y8_N28
\Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (i7(14) & (\Add7~27\ $ (GND))) # (!i7(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((i7(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X12_Y8_N22
\i7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~1_combout\ = (!\Equal7~10_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Add7~28_combout\,
	combout => \i7~1_combout\);

-- Location: FF_X12_Y8_N23
\i7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(14));

-- Location: LCCOMB_X11_Y8_N30
\Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (i7(15) & (!\Add7~29\)) # (!i7(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!i7(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X12_Y8_N12
\i7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i7~0_combout\ = (!\Equal7~10_combout\ & \Add7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Add7~30_combout\,
	combout => \i7~0_combout\);

-- Location: FF_X12_Y8_N13
\i7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(15));

-- Location: LCCOMB_X12_Y8_N8
\Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (i7(8) & (i7(9) & (i7(11) & !i7(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(8),
	datab => i7(9),
	datac => i7(11),
	datad => i7(10),
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X12_Y8_N24
\Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!i7(13) & !i7(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i7(13),
	datad => i7(12),
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X12_Y8_N18
\Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (i7(14) & (i7(15) & (\Equal7~6_combout\ & \Equal7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(14),
	datab => i7(15),
	datac => \Equal7~6_combout\,
	datad => \Equal7~5_combout\,
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X11_Y7_N0
\Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (i7(16) & (\Add7~31\ $ (GND))) # (!i7(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((i7(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X11_Y7_N1
\i7[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(16));

-- Location: LCCOMB_X11_Y7_N2
\Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (i7(17) & (!\Add7~33\)) # (!i7(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!i7(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: FF_X11_Y7_N3
\i7[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(17));

-- Location: LCCOMB_X11_Y7_N4
\Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (i7(18) & (\Add7~35\ $ (GND))) # (!i7(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((i7(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: FF_X11_Y7_N5
\i7[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(18));

-- Location: LCCOMB_X11_Y7_N6
\Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (i7(19) & (!\Add7~37\)) # (!i7(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!i7(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: FF_X11_Y7_N7
\i7[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(19));

-- Location: LCCOMB_X11_Y7_N8
\Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (i7(20) & (\Add7~39\ $ (GND))) # (!i7(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((i7(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: FF_X11_Y7_N9
\i7[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(20));

-- Location: LCCOMB_X11_Y7_N10
\Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (i7(21) & (!\Add7~41\)) # (!i7(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!i7(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: FF_X11_Y7_N11
\i7[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(21));

-- Location: LCCOMB_X11_Y7_N12
\Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (i7(22) & (\Add7~43\ $ (GND))) # (!i7(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((i7(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: FF_X11_Y7_N13
\i7[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(22));

-- Location: LCCOMB_X11_Y7_N14
\Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (i7(23) & (!\Add7~45\)) # (!i7(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!i7(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: FF_X11_Y7_N15
\i7[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(23));

-- Location: LCCOMB_X11_Y7_N16
\Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (i7(24) & (\Add7~47\ $ (GND))) # (!i7(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((i7(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: FF_X11_Y7_N17
\i7[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(24));

-- Location: LCCOMB_X11_Y7_N18
\Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (i7(25) & (!\Add7~49\)) # (!i7(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!i7(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: FF_X11_Y7_N19
\i7[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(25));

-- Location: LCCOMB_X11_Y7_N20
\Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (i7(26) & (\Add7~51\ $ (GND))) # (!i7(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((i7(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: FF_X11_Y7_N21
\i7[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(26));

-- Location: LCCOMB_X11_Y7_N22
\Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (i7(27) & (!\Add7~53\)) # (!i7(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!i7(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: FF_X11_Y7_N23
\i7[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(27));

-- Location: LCCOMB_X10_Y8_N10
\Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!i7(27) & (!i7(24) & (!i7(26) & !i7(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(27),
	datab => i7(24),
	datac => i7(26),
	datad => i7(25),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X11_Y7_N24
\Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (i7(28) & (\Add7~55\ $ (GND))) # (!i7(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((i7(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: FF_X11_Y7_N25
\i7[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(28));

-- Location: LCCOMB_X11_Y7_N26
\Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (i7(29) & (!\Add7~57\)) # (!i7(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!i7(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: FF_X11_Y7_N27
\i7[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(29));

-- Location: LCCOMB_X11_Y7_N28
\Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (i7(30) & (\Add7~59\ $ (GND))) # (!i7(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((i7(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i7(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: FF_X11_Y7_N29
\i7[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(30));

-- Location: LCCOMB_X11_Y7_N30
\Add7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = i7(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i7(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: FF_X11_Y7_N31
\i7[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i7(31));

-- Location: LCCOMB_X10_Y8_N24
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!i7(30) & (!i7(28) & (!i7(29) & !i7(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(30),
	datab => i7(28),
	datac => i7(29),
	datad => i7(31),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X10_Y8_N4
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!i7(22) & (!i7(20) & (!i7(21) & !i7(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(22),
	datab => i7(20),
	datac => i7(21),
	datad => i7(23),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X10_Y7_N22
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!i7(18) & (!i7(17) & (!i7(16) & !i7(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i7(18),
	datab => i7(17),
	datac => i7(16),
	datad => i7(19),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X10_Y8_N18
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~1_combout\ & (\Equal7~0_combout\ & (\Equal7~2_combout\ & \Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~2_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X10_Y8_N20
\Equal7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~8_combout\ & (\Equal7~9_combout\ & (\Equal7~7_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~8_combout\,
	datab => \Equal7~9_combout\,
	datac => \Equal7~7_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X10_Y7_N4
\outp[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[7]~6_combout\ = outp(7) $ (\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(7),
	datad => \Equal7~10_combout\,
	combout => \outp[7]~6_combout\);

-- Location: FF_X10_Y7_N5
\outp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(7));

-- Location: LCCOMB_X15_Y4_N2
\Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((i0(0) & i0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(0),
	datab => i0(1),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X15_Y4_N4
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (i6(2) & (!\Add6~1_cout\)) # (!i6(2) & ((\Add6~1_cout\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1_cout\) # (!i6(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(2),
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X14_Y4_N8
\i6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~0_combout\ = (!\Equal6~9_combout\ & \Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datac => \Add6~2_combout\,
	combout => \i6~0_combout\);

-- Location: FF_X14_Y4_N9
\i6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(2));

-- Location: LCCOMB_X15_Y4_N6
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (i6(3) & (\Add6~3\ $ (GND))) # (!i6(3) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((i6(3) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(3),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: FF_X15_Y4_N7
\i6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(3));

-- Location: LCCOMB_X15_Y4_N8
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (i6(4) & (!\Add6~5\)) # (!i6(4) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!i6(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(4),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: FF_X15_Y4_N9
\i6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(4));

-- Location: LCCOMB_X15_Y4_N10
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (i6(5) & (\Add6~7\ $ (GND))) # (!i6(5) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((i6(5) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(5),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X15_Y4_N11
\i6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(5));

-- Location: LCCOMB_X15_Y4_N12
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (i6(6) & (!\Add6~9\)) # (!i6(6) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!i6(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(6),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: FF_X15_Y4_N13
\i6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(6));

-- Location: LCCOMB_X15_Y4_N14
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (i6(7) & (\Add6~11\ $ (GND))) # (!i6(7) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((i6(7) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(7),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: FF_X15_Y4_N15
\i6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(7));

-- Location: LCCOMB_X15_Y4_N16
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (i6(8) & (!\Add6~13\)) # (!i6(8) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!i6(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(8),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X14_Y4_N6
\i6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~1_combout\ = (!\Equal6~9_combout\ & \Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datad => \Add6~14_combout\,
	combout => \i6~1_combout\);

-- Location: FF_X14_Y4_N7
\i6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(8));

-- Location: LCCOMB_X15_Y4_N18
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (i6(9) & (\Add6~15\ $ (GND))) # (!i6(9) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((i6(9) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(9),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: FF_X15_Y4_N19
\i6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(9));

-- Location: LCCOMB_X15_Y4_N20
\Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (i6(10) & (!\Add6~17\)) # (!i6(10) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!i6(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(10),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: FF_X15_Y4_N21
\i6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(10));

-- Location: LCCOMB_X15_Y4_N22
\Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (i6(11) & (\Add6~19\ $ (GND))) # (!i6(11) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((i6(11) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(11),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X14_Y4_N16
\i6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~2_combout\ = (!\Equal6~9_combout\ & \Add6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datad => \Add6~20_combout\,
	combout => \i6~2_combout\);

-- Location: FF_X14_Y4_N17
\i6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(11));

-- Location: LCCOMB_X14_Y4_N22
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (i6(8) & (i6(11) & (!i6(10) & !i6(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(8),
	datab => i6(11),
	datac => i6(10),
	datad => i6(9),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X15_Y4_N24
\Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (i6(12) & (!\Add6~21\)) # (!i6(12) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!i6(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(12),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X14_Y4_N28
\i6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~3_combout\ = (!\Equal6~9_combout\ & \Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datad => \Add6~22_combout\,
	combout => \i6~3_combout\);

-- Location: FF_X14_Y4_N29
\i6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(12));

-- Location: LCCOMB_X15_Y4_N26
\Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (i6(13) & (\Add6~23\ $ (GND))) # (!i6(13) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((i6(13) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(13),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: FF_X15_Y4_N27
\i6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(13));

-- Location: LCCOMB_X15_Y4_N28
\Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (i6(14) & (!\Add6~25\)) # (!i6(14) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!i6(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(14),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X15_Y4_N0
\i6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~4_combout\ = (!\Equal6~9_combout\ & \Add6~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datad => \Add6~26_combout\,
	combout => \i6~4_combout\);

-- Location: FF_X15_Y4_N1
\i6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(14));

-- Location: LCCOMB_X15_Y4_N30
\Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (i6(15) & (\Add6~27\ $ (GND))) # (!i6(15) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((i6(15) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(15),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X14_Y4_N26
\i6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i6~5_combout\ = (\Add6~28_combout\ & !\Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~28_combout\,
	datad => \Equal6~9_combout\,
	combout => \i6~5_combout\);

-- Location: FF_X14_Y4_N27
\i6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(15));

-- Location: LCCOMB_X14_Y4_N4
\Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (i6(15) & (i6(12) & (i6(14) & !i6(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(15),
	datab => i6(12),
	datac => i6(14),
	datad => i6(13),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X15_Y3_N0
\Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (i6(16) & (!\Add6~29\)) # (!i6(16) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!i6(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(16),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: FF_X15_Y3_N1
\i6[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(16));

-- Location: LCCOMB_X15_Y3_N2
\Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (i6(17) & (\Add6~31\ $ (GND))) # (!i6(17) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((i6(17) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(17),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: FF_X15_Y3_N3
\i6[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(17));

-- Location: LCCOMB_X15_Y3_N4
\Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (i6(18) & (!\Add6~33\)) # (!i6(18) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!i6(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(18),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: FF_X15_Y3_N5
\i6[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(18));

-- Location: LCCOMB_X15_Y3_N6
\Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (i6(19) & (\Add6~35\ $ (GND))) # (!i6(19) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((i6(19) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(19),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: FF_X15_Y3_N7
\i6[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(19));

-- Location: LCCOMB_X15_Y3_N8
\Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (i6(20) & (!\Add6~37\)) # (!i6(20) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!i6(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(20),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: FF_X15_Y3_N9
\i6[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(20));

-- Location: LCCOMB_X15_Y3_N10
\Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (i6(21) & (\Add6~39\ $ (GND))) # (!i6(21) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((i6(21) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(21),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X15_Y3_N11
\i6[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(21));

-- Location: LCCOMB_X15_Y3_N12
\Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (i6(22) & (!\Add6~41\)) # (!i6(22) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!i6(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(22),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: FF_X15_Y3_N13
\i6[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(22));

-- Location: LCCOMB_X15_Y3_N14
\Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (i6(23) & (\Add6~43\ $ (GND))) # (!i6(23) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((i6(23) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(23),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: FF_X15_Y3_N15
\i6[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(23));

-- Location: LCCOMB_X15_Y3_N16
\Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (i6(24) & (!\Add6~45\)) # (!i6(24) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!i6(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(24),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X15_Y3_N17
\i6[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(24));

-- Location: LCCOMB_X15_Y3_N18
\Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (i6(25) & (\Add6~47\ $ (GND))) # (!i6(25) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((i6(25) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(25),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X15_Y3_N19
\i6[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(25));

-- Location: LCCOMB_X15_Y3_N20
\Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (i6(26) & (!\Add6~49\)) # (!i6(26) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!i6(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(26),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X15_Y3_N21
\i6[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(26));

-- Location: LCCOMB_X15_Y3_N22
\Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (i6(27) & (\Add6~51\ $ (GND))) # (!i6(27) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((i6(27) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(27),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X15_Y3_N23
\i6[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(27));

-- Location: LCCOMB_X14_Y4_N10
\Equal6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!i6(25) & (!i6(24) & (!i6(26) & !i6(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(25),
	datab => i6(24),
	datac => i6(26),
	datad => i6(27),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X14_Y3_N0
\Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (!i6(18) & (!i6(16) & (!i6(17) & !i6(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(18),
	datab => i6(16),
	datac => i6(17),
	datad => i6(19),
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X14_Y3_N14
\Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!i6(21) & (!i6(23) & (!i6(22) & !i6(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(21),
	datab => i6(23),
	datac => i6(22),
	datad => i6(20),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X15_Y3_N24
\Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (i6(28) & (!\Add6~53\)) # (!i6(28) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!i6(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(28),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: FF_X15_Y3_N25
\i6[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(28));

-- Location: LCCOMB_X15_Y3_N26
\Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (i6(29) & (\Add6~55\ $ (GND))) # (!i6(29) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((i6(29) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(29),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X15_Y3_N27
\i6[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(29));

-- Location: LCCOMB_X15_Y3_N28
\Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (i6(30) & (!\Add6~57\)) # (!i6(30) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!i6(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i6(30),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X15_Y3_N29
\i6[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(30));

-- Location: LCCOMB_X15_Y3_N30
\Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = i6(31) $ (!\Add6~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i6(31),
	cin => \Add6~59\,
	combout => \Add6~60_combout\);

-- Location: FF_X15_Y3_N31
\i6[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i6(31));

-- Location: LCCOMB_X14_Y4_N20
\Equal6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (!i6(29) & (!i6(30) & (!i6(31) & !i6(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(29),
	datab => i6(30),
	datac => i6(31),
	datad => i6(28),
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X14_Y4_N14
\Equal6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (\Equal6~6_combout\ & (\Equal6~4_combout\ & (\Equal6~5_combout\ & \Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~6_combout\,
	datab => \Equal6~4_combout\,
	datac => \Equal6~5_combout\,
	datad => \Equal6~7_combout\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X14_Y4_N2
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!i6(7) & (!i6(4) & (!i6(6) & !i6(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(7),
	datab => i6(4),
	datac => i6(6),
	datad => i6(5),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!i6(3) & (i6(2) & (\Equal0~0_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i6(3),
	datab => i6(2),
	datac => \Equal0~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X14_Y4_N12
\Equal6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (\Equal6~2_combout\ & (\Equal6~3_combout\ & (\Equal6~8_combout\ & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \Equal6~3_combout\,
	datac => \Equal6~8_combout\,
	datad => \Equal6~1_combout\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X12_Y4_N20
\outp[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[6]~7_combout\ = outp(6) $ (\Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(6),
	datad => \Equal6~9_combout\,
	combout => \outp[6]~7_combout\);

-- Location: FF_X12_Y4_N21
\outp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(6));

-- Location: LCCOMB_X11_Y3_N2
\clk_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~3_combout\ = (\switch[6]~input_o\ & ((\Equal13~1_combout\ & ((!outp(6)))) # (!\Equal13~1_combout\ & (!outp(7))))) # (!\switch[6]~input_o\ & (((!outp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \Equal13~1_combout\,
	datac => outp(7),
	datad => outp(6),
	combout => \clk_out~3_combout\);

-- Location: LCCOMB_X11_Y3_N16
\clk_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~5_combout\ = (\clk_out~2_combout\) # ((\clk_out~3_combout\ & \clk_out~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out~2_combout\,
	datab => \clk_out~3_combout\,
	datad => \clk_out~4_combout\,
	combout => \clk_out~5_combout\);

-- Location: LCCOMB_X20_Y6_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = i3(0) $ (VCC)
-- \Add3~1\ = CARRY(i3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i3(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X19_Y6_N6
\i3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~0_combout\ = (\Add3~0_combout\) # (\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \Equal3~10_combout\,
	combout => \i3~0_combout\);

-- Location: FF_X19_Y6_N7
\i3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(0));

-- Location: LCCOMB_X20_Y6_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (i3(1) & (!\Add3~1\)) # (!i3(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!i3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X19_Y6_N16
\i3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~3_combout\ = (\Add3~2_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datac => \Equal3~10_combout\,
	combout => \i3~3_combout\);

-- Location: FF_X19_Y6_N17
\i3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(1));

-- Location: LCCOMB_X20_Y6_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (i3(2) & (\Add3~3\ $ (GND))) # (!i3(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((i3(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X19_Y6_N8
\i3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~1_combout\ = (!\Equal3~10_combout\ & \Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~4_combout\,
	combout => \i3~1_combout\);

-- Location: FF_X19_Y6_N9
\i3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(2));

-- Location: LCCOMB_X20_Y6_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (i3(3) & (!\Add3~5\)) # (!i3(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!i3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X19_Y6_N14
\i3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~2_combout\ = (!\Equal3~10_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~6_combout\,
	combout => \i3~2_combout\);

-- Location: FF_X19_Y6_N15
\i3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(3));

-- Location: LCCOMB_X20_Y6_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (i3(4) & (\Add3~7\ $ (GND))) # (!i3(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((i3(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X20_Y6_N9
\i3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(4));

-- Location: LCCOMB_X20_Y6_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (i3(5) & (!\Add3~9\)) # (!i3(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!i3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X21_Y6_N12
\i3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~4_combout\ = (!\Equal3~10_combout\ & \Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datad => \Add3~10_combout\,
	combout => \i3~4_combout\);

-- Location: FF_X21_Y6_N13
\i3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(5));

-- Location: LCCOMB_X20_Y6_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (i3(6) & (\Add3~11\ $ (GND))) # (!i3(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((i3(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X20_Y6_N13
\i3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(6));

-- Location: LCCOMB_X20_Y6_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (i3(7) & (!\Add3~13\)) # (!i3(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!i3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X20_Y6_N15
\i3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(7));

-- Location: LCCOMB_X20_Y6_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (i3(8) & (\Add3~15\ $ (GND))) # (!i3(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((i3(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X21_Y6_N24
\i3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~5_combout\ = (\Add3~16_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~16_combout\,
	datad => \Equal3~10_combout\,
	combout => \i3~5_combout\);

-- Location: FF_X21_Y6_N25
\i3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(8));

-- Location: LCCOMB_X20_Y6_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (i3(9) & (!\Add3~17\)) # (!i3(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!i3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X20_Y6_N19
\i3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(9));

-- Location: LCCOMB_X20_Y6_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (i3(10) & (\Add3~19\ $ (GND))) # (!i3(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((i3(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X20_Y6_N21
\i3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(10));

-- Location: LCCOMB_X20_Y6_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (i3(11) & (!\Add3~21\)) # (!i3(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!i3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X20_Y6_N23
\i3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(11));

-- Location: LCCOMB_X20_Y6_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (i3(12) & (\Add3~23\ $ (GND))) # (!i3(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((i3(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X21_Y6_N8
\i3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~6_combout\ = (!\Equal3~10_combout\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datad => \Add3~24_combout\,
	combout => \i3~6_combout\);

-- Location: FF_X21_Y6_N9
\i3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(12));

-- Location: LCCOMB_X20_Y6_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (i3(13) & (!\Add3~25\)) # (!i3(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!i3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X21_Y6_N6
\i3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~7_combout\ = (\Add3~26_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~26_combout\,
	datad => \Equal3~10_combout\,
	combout => \i3~7_combout\);

-- Location: FF_X21_Y6_N7
\i3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(13));

-- Location: LCCOMB_X20_Y6_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (i3(14) & (\Add3~27\ $ (GND))) # (!i3(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((i3(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X20_Y6_N29
\i3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(14));

-- Location: LCCOMB_X20_Y6_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (i3(15) & (!\Add3~29\)) # (!i3(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!i3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: FF_X20_Y6_N31
\i3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(15));

-- Location: LCCOMB_X20_Y5_N0
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (i3(16) & (\Add3~31\ $ (GND))) # (!i3(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((i3(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X21_Y6_N20
\i3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3~8_combout\ = (!\Equal3~10_combout\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datad => \Add3~32_combout\,
	combout => \i3~8_combout\);

-- Location: FF_X21_Y6_N21
\i3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \i3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(16));

-- Location: LCCOMB_X20_Y5_N2
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (i3(17) & (!\Add3~33\)) # (!i3(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!i3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X20_Y5_N3
\i3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(17));

-- Location: LCCOMB_X20_Y5_N4
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (i3(18) & (\Add3~35\ $ (GND))) # (!i3(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((i3(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X20_Y5_N5
\i3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(18));

-- Location: LCCOMB_X20_Y5_N6
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (i3(19) & (!\Add3~37\)) # (!i3(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!i3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X20_Y5_N7
\i3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(19));

-- Location: LCCOMB_X20_Y5_N8
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (i3(20) & (\Add3~39\ $ (GND))) # (!i3(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((i3(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X20_Y5_N9
\i3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(20));

-- Location: LCCOMB_X20_Y5_N10
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (i3(21) & (!\Add3~41\)) # (!i3(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!i3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X20_Y5_N11
\i3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(21));

-- Location: LCCOMB_X20_Y5_N12
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (i3(22) & (\Add3~43\ $ (GND))) # (!i3(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((i3(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X20_Y5_N13
\i3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(22));

-- Location: LCCOMB_X20_Y5_N14
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (i3(23) & (!\Add3~45\)) # (!i3(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!i3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X20_Y5_N15
\i3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(23));

-- Location: LCCOMB_X20_Y5_N16
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (i3(24) & (\Add3~47\ $ (GND))) # (!i3(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((i3(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X20_Y5_N17
\i3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(24));

-- Location: LCCOMB_X20_Y5_N18
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (i3(25) & (!\Add3~49\)) # (!i3(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!i3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X20_Y5_N19
\i3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(25));

-- Location: LCCOMB_X20_Y5_N20
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (i3(26) & (\Add3~51\ $ (GND))) # (!i3(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((i3(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: FF_X20_Y5_N21
\i3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(26));

-- Location: LCCOMB_X20_Y5_N22
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (i3(27) & (!\Add3~53\)) # (!i3(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!i3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: FF_X20_Y5_N23
\i3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(27));

-- Location: LCCOMB_X20_Y5_N24
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (i3(28) & (\Add3~55\ $ (GND))) # (!i3(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((i3(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: FF_X20_Y5_N25
\i3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(28));

-- Location: LCCOMB_X20_Y5_N26
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (i3(29) & (!\Add3~57\)) # (!i3(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!i3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X20_Y5_N27
\i3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(29));

-- Location: LCCOMB_X20_Y5_N28
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (i3(30) & (\Add3~59\ $ (GND))) # (!i3(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((i3(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i3(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: FF_X20_Y5_N29
\i3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(30));

-- Location: LCCOMB_X20_Y5_N30
\Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = i3(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i3(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: FF_X20_Y5_N31
\i3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i3(31));

-- Location: LCCOMB_X21_Y5_N4
\Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!i3(29) & (!i3(30) & (!i3(31) & !i3(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(29),
	datab => i3(30),
	datac => i3(31),
	datad => i3(28),
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X21_Y5_N22
\Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!i3(24) & (!i3(26) & (!i3(25) & !i3(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(24),
	datab => i3(26),
	datac => i3(25),
	datad => i3(27),
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X21_Y6_N22
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!i3(4) & (i3(5) & (!i3(6) & !i3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(4),
	datab => i3(5),
	datac => i3(6),
	datad => i3(7),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X21_Y6_N14
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (i3(8) & (!i3(10) & (!i3(9) & !i3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(8),
	datab => i3(10),
	datac => i3(9),
	datad => i3(11),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X19_Y6_N22
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (i3(0) & (i3(2) & (i3(3) & !i3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(0),
	datab => i3(2),
	datac => i3(3),
	datad => i3(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X21_Y6_N16
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (i3(13) & (!i3(14) & (i3(12) & !i3(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(13),
	datab => i3(14),
	datac => i3(12),
	datad => i3(15),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X21_Y6_N26
\Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~1_combout\ & (\Equal3~2_combout\ & (\Equal3~0_combout\ & \Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~3_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!i3(20) & (!i3(23) & (!i3(22) & !i3(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(20),
	datab => i3(23),
	datac => i3(22),
	datad => i3(21),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X21_Y6_N18
\Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!i3(17) & (i3(16) & (!i3(19) & !i3(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(17),
	datab => i3(16),
	datac => i3(19),
	datad => i3(18),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X21_Y6_N28
\Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (\Equal3~6_combout\ & \Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~6_combout\,
	datad => \Equal3~5_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X21_Y6_N10
\Equal3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~9_combout\ & (\Equal3~8_combout\ & (\Equal3~4_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal3~8_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~7_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X19_Y6_N24
\outp[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp[3]~3_combout\ = outp(3) $ (\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => outp(3),
	datad => \Equal3~10_combout\,
	combout => \outp[3]~3_combout\);

-- Location: FF_X19_Y6_N25
\outp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outp(3));

-- Location: LCCOMB_X11_Y3_N20
\clk_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~7_combout\ = (\clk_out~6_combout\ & (\switch[3]~input_o\ & ((!outp(3))))) # (!\clk_out~6_combout\ & (((\clk_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \clk_out~6_combout\,
	datac => \clk_out~5_combout\,
	datad => outp(3),
	combout => \clk_out~7_combout\);

-- Location: LCCOMB_X11_Y3_N18
\clk_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~8_combout\ = (\clk_out~1_combout\) # ((\clk_out~0_combout\) # (\clk_out~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out~1_combout\,
	datab => \clk_out~0_combout\,
	datad => \clk_out~7_combout\,
	combout => \clk_out~8_combout\);

-- Location: LCCOMB_X11_Y3_N8
\clk_out$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out$latch~combout\ = (\clk_out~9_combout\ & ((\clk_out~8_combout\))) # (!\clk_out~9_combout\ & (\clk_out$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out$latch~combout\,
	datac => \clk_out~9_combout\,
	datad => \clk_out~8_combout\,
	combout => \clk_out$latch~combout\);

-- Location: LCCOMB_X12_Y3_N30
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\Equal8~2_combout\ & (((\Equal15~0_combout\) # (!\Equal14~0_combout\)) # (!\led[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[7]~2_combout\,
	datab => \Equal8~2_combout\,
	datac => \Equal14~0_combout\,
	datad => \Equal15~0_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X12_Y3_N20
\led[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[0]$latch~combout\ = (!\comb~2_combout\ & ((\Equal8~2_combout\) # (\led[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \Equal8~2_combout\,
	datad => \led[0]$latch~combout\,
	combout => \led[0]$latch~combout\);

-- Location: LCCOMB_X10_Y3_N26
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\clk_out~9_combout\ & !\Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out~9_combout\,
	datac => \Equal9~0_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X10_Y3_N16
\led[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[1]$latch~combout\ = (!\comb~3_combout\ & ((\Equal9~0_combout\) # (\led[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \comb~3_combout\,
	datad => \led[1]$latch~combout\,
	combout => \led[1]$latch~combout\);

-- Location: LCCOMB_X10_Y3_N4
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\clk_out~9_combout\ & !\Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out~9_combout\,
	datac => \Equal10~0_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X10_Y3_N12
\led[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[2]$latch~combout\ = (!\comb~4_combout\ & ((\Equal10~0_combout\) # (\led[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => \comb~4_combout\,
	datad => \led[2]$latch~combout\,
	combout => \led[2]$latch~combout\);

-- Location: LCCOMB_X9_Y3_N0
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\clk_out~9_combout\ & !\Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out~9_combout\,
	datac => \Equal11~0_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X10_Y3_N0
\led[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[3]$latch~combout\ = (!\comb~5_combout\ & ((\Equal11~0_combout\) # (\led[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datac => \comb~5_combout\,
	datad => \led[3]$latch~combout\,
	combout => \led[3]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N8
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\Equal12~2_combout\ & \clk_out~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal12~2_combout\,
	datac => \clk_out~9_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X12_Y3_N10
\led[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[4]$latch~combout\ = (!\comb~6_combout\ & ((\Equal12~2_combout\) # (\led[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal12~2_combout\,
	datac => \comb~6_combout\,
	datad => \led[4]$latch~combout\,
	combout => \led[4]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N26
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\clk_out~9_combout\ & !\Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out~9_combout\,
	datac => \Equal13~0_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X12_Y3_N12
\led[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[5]$latch~combout\ = (!\comb~7_combout\ & ((\Equal13~0_combout\) # (\led[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~7_combout\,
	datac => \Equal13~0_combout\,
	datad => \led[5]$latch~combout\,
	combout => \led[5]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N28
\comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ((\Equal8~2_combout\) # ((\Equal14~0_combout\ & \Equal15~0_combout\))) # (!\led[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[7]~2_combout\,
	datab => \Equal8~2_combout\,
	datac => \Equal14~0_combout\,
	datad => \Equal15~0_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X12_Y3_N4
\led[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[6]~3_combout\ = ((\Equal8~2_combout\) # ((!\Equal13~1_combout\) # (!\switch[6]~input_o\))) # (!\led[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[7]~2_combout\,
	datab => \Equal8~2_combout\,
	datac => \switch[6]~input_o\,
	datad => \Equal13~1_combout\,
	combout => \led[6]~3_combout\);

-- Location: LCCOMB_X12_Y3_N2
\led[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[6]$latch~combout\ = (!\comb~8_combout\ & ((\led[6]$latch~combout\) # (!\led[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~8_combout\,
	datac => \led[6]~3_combout\,
	datad => \led[6]$latch~combout\,
	combout => \led[6]$latch~combout\);

-- Location: LCCOMB_X12_Y3_N18
\comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\led[7]~2_combout\ & (!\Equal8~2_combout\ & (\Equal14~0_combout\ & \Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[7]~2_combout\,
	datab => \Equal8~2_combout\,
	datac => \Equal14~0_combout\,
	datad => \Equal15~0_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X12_Y3_N22
\comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ((\Equal8~2_combout\) # ((\switch[6]~input_o\ & \Equal13~1_combout\))) # (!\led[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[7]~2_combout\,
	datab => \Equal8~2_combout\,
	datac => \switch[6]~input_o\,
	datad => \Equal13~1_combout\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X12_Y3_N16
\led[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led[7]$latch~combout\ = (!\comb~10_combout\ & ((\comb~9_combout\) # (\led[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~9_combout\,
	datac => \comb~10_combout\,
	datad => \led[7]$latch~combout\,
	combout => \led[7]$latch~combout\);

-- Location: UNVM_X0_Y22_N40
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

-- Location: ADCBLOCK_X25_Y34_N0
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

-- Location: ADCBLOCK_X25_Y33_N0
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

ww_clk_out <= \clk_out~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


