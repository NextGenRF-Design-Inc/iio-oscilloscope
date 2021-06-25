set_property  -dict {PACKAGE_PIN D5    IOSTANDARD LVCMOS18}  [get_ports dev_clk_in]                        ; #FMC_HPC0_CLK0_M2C_P  IO_L12P_T1U_N10_GC_66
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS}      [get_ports dev_mcs_fpga_out_n]                ; #FMC_HPC0_LA14_N      IO_L7N_T1L_N1_QBC_AD13N_66
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS}      [get_ports dev_mcs_fpga_out_p]                ; #FMC_HPC0_LA14_P      IO_L7P_T1L_N0_QBC_AD13P_66

set_property  -dict {PACKAGE_PIN D8    IOSTANDARD LVCMOS18}  [get_ports dgpio_0]                           ; #FMC_HPC0_LA16_P      IO_L5P_T0U_N8_AD14P_66
set_property  -dict {PACKAGE_PIN E5    IOSTANDARD LVCMOS18}  [get_ports dgpio_1]                           ; #FMC_HPC0_LA16_N      IO_L5N_T0U_N9_AD14N_66
set_property  -dict {PACKAGE_PIN D6    IOSTANDARD LVCMOS18}  [get_ports dgpio_2]                           ; #FMC_HPC0_LA15_N      IO_L6N_T0U_N11_AD6N_66
set_property  -dict {PACKAGE_PIN B7    IOSTANDARD LVCMOS18}  [get_ports dgpio_3]                           ; #FMC_HPC0_LA11_N      IO_L10N_T1U_N7_QBC_AD4N_66
set_property  -dict {PACKAGE_PIN B5    IOSTANDARD LVCMOS18}  [get_ports dgpio_4]                           ; #FMC_HPC0_LA09_N      IO_L24N_T3U_N11_66
set_property  -dict {PACKAGE_PIN A6    IOSTANDARD LVCMOS18}  [get_ports dgpio_5]                           ; #FMC_HPC0_LA10_N      IO_L15N_T2L_N5_AD11N_66
set_property  -dict {PACKAGE_PIN G5    IOSTANDARD LVCMOS18}  [get_ports dgpio_6]                           ; #FMC_HPC0_LA27_P      IO_L15P_T2L_N4_AD11P_67
set_property  -dict {PACKAGE_PIN E6    IOSTANDARD LVCMOS18}  [get_ports dgpio_7]                           ; #FMC_HPC0_LA26_P      IO_L24P_T3U_N10_67
set_property  -dict {PACKAGE_PIN D7    IOSTANDARD LVCMOS18}  [get_ports dgpio_8]                           ; #FMC_HPC0_LA28_P      IO_L10P_T1U_N6_QBC_AD4P_67
set_property  -dict {PACKAGE_PIN C7    IOSTANDARD LVCMOS18}  [get_ports dgpio_9]                           ; #FMC_HPC0_LA28_N      IO_L10N_T1U_N7_QBC_AD4N_67
set_property  -dict {PACKAGE_PIN C8    IOSTANDARD LVCMOS18}  [get_ports dgpio_10]                          ; #FMC_HPC0_LA11_P      IO_L10P_T1U_N6_QBC_AD4P_66
set_property  -dict {PACKAGE_PIN B6    IOSTANDARD LVCMOS18}  [get_ports dgpio_11]                          ; #FMC_HPC0_LA27_N      IO_L15N_T2L_N5_AD11N_67

#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS DIFF_TERM_ADV TERM_100}  [get_ports fpga_mcs_in_n]  ; #FMC_HPC0_LA32_N      IO_L6N_T0U_N11_AD6N_67
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS DIFF_TERM_ADV TERM_100}  [get_ports fpga_mcs_in_p]  ; #FMC_HPC0_LA32_P      IO_L6P_T0U_N10_AD6P_67
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS DIFF_TERM_ADV TERM_100}  [get_ports fpga_ref_clk_n] ; #FMC_HPC0_CLK1_M2C_N  IO_L12N_T1U_N11_GC_67
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVDS DIFF_TERM_ADV TERM_100}  [get_ports fpga_ref_clk_p] ; #FMC_HPC0_CLK1_M2C_P  IO_L12P_T1U_N10_GC_67
set_property  -dict {PACKAGE_PIN A9    IOSTANDARD LVCMOS18}  [get_ports gp_int]                            ; #FMC_HPC0_LA30_P      IO_L8P_T1L_N2_AD5P_67
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVCMOS18}  [get_ports mode]                              ; #FMC_HPC0_LA13_P      IO_L8P_T1L_N2_AD5P_66
set_property  -dict {PACKAGE_PIN A8    IOSTANDARD LVCMOS18}  [get_ports reset_trx]                         ; #FMC_HPC0_LA13_N      IO_L8N_T1L_N3_AD5N_66

set_property  -dict {PACKAGE_PIN A7    IOSTANDARD LVCMOS18}  [get_ports rx1_enable]                        ; #FMC_HPC0_LA10_P      IO_L15P_T2L_N4_AD11P_66
set_property  -dict {PACKAGE_PIN F6    IOSTANDARD LVCMOS18}  [get_ports rx2_enable]                        ; #FMC_HPC0_LA26_N      IO_L24N_T3U_N11_67

#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVCMOS18}  [get_ports sm_fan_tach]                       ; #FMC_HPC0_CLK0_M2C_N  IO_L12N_T1U_N11_GC_66

set_property  -dict {PACKAGE_PIN E8    IOSTANDARD LVCMOS18}  [get_ports spi_clk]                           ; #FMC_HPC0_LA12_P      IO_L9P_T1L_N4_AD12P_66
set_property  -dict {PACKAGE_PIN G6    IOSTANDARD LVCMOS18}  [get_ports spi_dio]                           ; #FMC_HPC0_LA29_N      IO_L9N_T1L_N5_AD12N_67
set_property  -dict {PACKAGE_PIN G7    IOSTANDARD LVCMOS18}  [get_ports spi_do]                            ; #FMC_HPC0_LA12_N      IO_L9N_T1L_N5_AD12N_66
set_property  -dict {PACKAGE_PIN F8    IOSTANDARD LVCMOS18}  [get_ports spi_en]                            ; #FMC_HPC0_LA15_P      IO_L6P_T0U_N10_AD6P_66

set_property  -dict {PACKAGE_PIN B9    IOSTANDARD LVCMOS18}  [get_ports tx1_enable]                        ; #FMC_HPC0_LA09_P      IO_L24P_T3U_N10_66
set_property  -dict {PACKAGE_PIN F7    IOSTANDARD LVCMOS18}  [get_ports tx2_enable]                        ; #FMC_HPC0_LA29_P      IO_L9P_T1L_N4_AD12P_67

#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVCMOS18}  [get_ports vadj_err]                          ; #FMC_HPC0_LA31_P      IO_L7P_T1L_N0_QBC_AD13P_67
#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVCMOS18}  [get_ports platform_status]                   ; #FMC_HPC0_LA31_N      IO_L7N_T1L_N1_QBC_AD13N_67

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx1_strobe_out_p]
set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports tx2_idata_out_p]

#set_property  -dict {PACKAGE_PIN     IOSTANDARD LVCMOS33} [get_ports tdd_sync]   ;#PMOD0_0 J55.1

