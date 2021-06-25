set_property  -dict {PACKAGE_PIN K3     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_dclk_in_n]     ;## FMC_HPC0_LA00_CC_N IO_L13N_T2L_N1_GC_QBC_66
set_property  -dict {PACKAGE_PIN K4     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_dclk_in_p]     ;## FMC_HPC0_LA00_CC_P IO_L13P_T2L_N0_GC_QBC_66
set_property  -dict {PACKAGE_PIN H5     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_idata_in_n]    ;## FMC_HPC0_LA03_N    IO_L22N_T3U_N7_DBC_AD0N_66
set_property  -dict {PACKAGE_PIN J5     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_idata_in_p]    ;## FMC_HPC0_LA03_P    IO_L22P_T3U_N6_DBC_AD0P_66
set_property  -dict {PACKAGE_PIN J1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_qdata_in_n]    ;## FMC_HPC0_LA04_N    IO_L21N_T3L_N5_AD8N_66
set_property  -dict {PACKAGE_PIN K1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_qdata_in_p]    ;## FMC_HPC0_LA04_P    IO_L21P_T3L_N4_AD8P_66
set_property  -dict {PACKAGE_PIN G2     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_strobe_in_n]   ;## FMC_HPC0_LA02_N    IO_L23N_T3U_N9_66
set_property  -dict {PACKAGE_PIN H2     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx1_strobe_in_p]   ;## FMC_HPC0_LA02_P    IO_L23P_T3U_N8_66

set_property  -dict {PACKAGE_PIN J2     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_dclk_in_n]     ;## FMC_HPC0_LA17_CC_N IO_L13N_T2L_N1_GC_QBC_67
set_property  -dict {PACKAGE_PIN J3     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_dclk_in_p]     ;## FMC_HPC0_LA17_CC_P IO_L13P_T2L_N0_GC_QBC_67
set_property  -dict {PACKAGE_PIN E1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_idata_in_n]    ;## FMC_HPC0_LA20_N    IO_L22N_T3U_N7_DBC_AD0N_67
set_property  -dict {PACKAGE_PIN D1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_idata_in_p]    ;## FMC_HPC0_LA20_P    IO_L22P_T3U_N6_DBC_AD0P_67
set_property  -dict {PACKAGE_PIN G1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_qdata_in_n]    ;## FMC_HPC0_LA19_N    IO_L23N_T3U_N9_67
set_property  -dict {PACKAGE_PIN F1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_qdata_in_p]    ;## FMC_HPC0_LA19_P    IO_L23P_T3U_N8_67
set_property  -dict {PACKAGE_PIN E4     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_strobe_in_n]   ;## FMC_HPC0_LA21_N    IO_L21N_T3L_N5_AD8N_67
set_property  -dict {PACKAGE_PIN E3     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports rx2_strobe_in_p]   ;## FMC_HPC0_LA21_P    IO_L21P_T3L_N4_AD8P_67

set_property  -dict {PACKAGE_PIN G4     IOSTANDARD LVDS}                          [get_ports tx1_dclk_out_n]    ;## FMC_HPC0_LA07_N    IO_L18N_T2U_N11_AD2N_66
set_property  -dict {PACKAGE_PIN H4     IOSTANDARD LVDS}                          [get_ports tx1_dclk_out_p]    ;## FMC_HPC0_LA07_P    IO_L18P_T2U_N10_AD2P_66
set_property  -dict {PACKAGE_PIN A3     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports tx1_dclk_in_n]     ;## FMC_HPC0_LA01_CC_N IO_L16N_T2U_N7_QBC_AD3N_66
set_property  -dict {PACKAGE_PIN A4     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports tx1_dclk_in_p]     ;## FMC_HPC0_LA01_CC_P IO_L16P_T2U_N6_QBC_AD3P_66
set_property  -dict {PACKAGE_PIN F3     IOSTANDARD LVDS}                          [get_ports tx1_idata_out_n]   ;## FMC_HPC0_LA08_N    IO_L17N_T2U_N9_AD10N_66
set_property  -dict {PACKAGE_PIN F2     IOSTANDARD LVDS}                          [get_ports tx1_idata_out_p]   ;## FMC_HPC0_LA08_P    IO_L17P_T2U_N8_AD10P_66
set_property  -dict {PACKAGE_PIN C3     IOSTANDARD LVDS}                          [get_ports tx1_qdata_out_n]   ;## FMC_HPC0_LA05_N    IO_L20N_T3L_N3_AD1N_66
set_property  -dict {PACKAGE_PIN D3     IOSTANDARD LVDS}                          [get_ports tx1_qdata_out_p]   ;## FMC_HPC0_LA05_P    IO_L20P_T3L_N2_AD1P_66
set_property  -dict {PACKAGE_PIN C2     IOSTANDARD LVDS}                          [get_ports tx1_strobe_out_n]  ;## FMC_HPC0_LA06_N    IO_L19N_T3L_N1_DBC_AD9N_66
set_property  -dict {PACKAGE_PIN D2     IOSTANDARD LVDS}                          [get_ports tx1_strobe_out_p]  ;## FMC_HPC0_LA06_P    IO_L19P_T3L_N0_DBC_AD9P_66

set_property  -dict {PACKAGE_PIN M1     IOSTANDARD LVDS}                          [get_ports tx2_dclk_out_n]    ;## FMC_HPC0_LA22_N    IO_L20N_T3L_N3_AD1N_67
set_property  -dict {PACKAGE_PIN M2     IOSTANDARD LVDS}                          [get_ports tx2_dclk_out_p]    ;## FMC_HPC0_LA22_P    IO_L20P_T3L_N2_AD1P_67
set_property  -dict {PACKAGE_PIN B1     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports tx2_dclk_in_n]     ;## FMC_HPC0_LA18_CC_N IO_L16N_T2U_N7_QBC_AD3N_67
set_property  -dict {PACKAGE_PIN B2     IOSTANDARD LVDS  DIFF_TERM_ADV TERM_100}  [get_ports tx2_dclk_in_p]     ;## FMC_HPC0_LA18_CC_P IO_L16P_T2U_N6_QBC_AD3P_67
set_property  -dict {PACKAGE_PIN P1     IOSTANDARD LVDS}                          [get_ports tx2_idata_out_n]   ;## FMC_HPC0_LA23_N    IO_L19N_T3L_N1_DBC_AD9N_67
set_property  -dict {PACKAGE_PIN N2     IOSTANDARD LVDS}                          [get_ports tx2_idata_out_p]   ;## FMC_HPC0_LA23_P    IO_L19P_T3L_N0_DBC_AD9P_67
set_property  -dict {PACKAGE_PIN R5     IOSTANDARD LVDS}                          [get_ports tx2_qdata_out_n]   ;## FMC_HPC0_LA25_N    IO_L17N_T2U_N9_AD10N_67
set_property  -dict {PACKAGE_PIN P5     IOSTANDARD LVDS}                          [get_ports tx2_qdata_out_p]   ;## FMC_HPC0_LA25_P    IO_L17P_T2U_N8_AD10P_67
set_property  -dict {PACKAGE_PIN N4     IOSTANDARD LVDS}                          [get_ports tx2_strobe_out_n]  ;## FMC_HPC0_LA24_N    IO_L18N_T2U_N11_AD2N_67
set_property  -dict {PACKAGE_PIN N5     IOSTANDARD LVDS}                          [get_ports tx2_strobe_out_p]  ;## FMC_HPC0_LA24_P    IO_L18P_T2U_N10_AD2P_67

# clocks

#create_clock -name ref_clk        -period  8.00 [get_ports fpga_ref_clk_p]

create_clock -name rx1_dclk_out   -period  2.034 [get_ports rx1_dclk_in_p]
create_clock -name rx2_dclk_out   -period  2.034 [get_ports rx2_dclk_in_p]
create_clock -name tx1_dclk_out   -period  2.034 [get_ports tx1_dclk_in_p]
create_clock -name tx2_dclk_out   -period  2.034 [get_ports tx2_dclk_in_p]

# Allow max skew of 0.5 ns between input clocks
set_clock_latency -source -early -0.25 [get_clocks rx1_dclk_out]
set_clock_latency -source -early -0.25 [get_clocks rx2_dclk_out]

set_clock_latency -source -late 0.25 [get_clocks rx1_dclk_out]
set_clock_latency -source -late 0.25 [get_clocks rx2_dclk_out]
