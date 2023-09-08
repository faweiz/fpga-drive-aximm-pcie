# These constraints apply to the ZCU106 HPC1 with FPGA Drive FMC (single or dual version)
# ---------------------------------------------------------------------------------------
# NOTE: The ZCU106 HPC1 cannot support two SSDs, because it only has one MGT routed to
#       the FMC (HPC1) connector. Consequently, it can only support 1-lane PCIe.

# SSD1 PCI Express reset LA00_P_CC (perst_0) - IOSTANDARD determined by VADJ
set_property PACKAGE_PIN B18 [get_ports {perst_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {perst_0[0]}]

# SSD2 PCI Express reset LA04_P (perst_1) - IOSTANDARD determined by VADJ
# set_property PACKAGE_PIN J24 [get_ports {perst_1[0]}]
# set_property IOSTANDARD LVCMOS18 [get_ports {perst_1[0]}]

# PEDET_0 - LA00_N_CC - B19 - IOSTANDARD determined by VADJ
# PEDET_1 - LA04_N - H24 - IOSTANDARD determined by VADJ

# Disable signal for 3.3V power supply for SSD2 - LA07_P (disable_ssd2_pwr)
set_property PACKAGE_PIN D22 [get_ports disable_ssd2_pwr]
set_property IOSTANDARD LVCMOS18 [get_ports disable_ssd2_pwr]

# PCI Express reference clock 100MHz
# IOSTANDARD for GT reference clock does not need to be specified
# SSD1 ref clock connects to MGT bank 225, CLK0 input
set_property PACKAGE_PIN Y8 [get_ports {ref_clk_0_clk_p[0]}]
set_property PACKAGE_PIN Y7 [get_ports {ref_clk_0_clk_n[0]}]
create_clock -period 10.000 -name ref_clk_0_clk_p -waveform {0.000 5.000} [get_ports ref_clk_0_clk_p]
# SSD2 ref clock is left unconnected on the ZCU106 HPC1 connector

# MGT locations
# SSD1 HPC1_DP0 (PCIe lane 0) is connected to MGT bank 223 (X0Y0-X0Y3), specifically X0Y3
set_property LOC GTHE4_CHANNEL_X0Y3 [get_cells {*_i/xdma_0/inst/pcie4_ip_i/inst/*_gt_top_i/diablo_gt.diablo_gt_phy_wrapper/gt_wizard.gtwizard_top_i/*_xdma_0_0_pcie4_ip_gt_i/inst/gen_gtwizard_gthe4_top.*_xdma_0_0_pcie4_ip_gt_gtwizard_gthe4_inst/gen_gtwizard_gthe4.gen_channel_container[0].gen_enabled_channel.gthe4_channel_wrapper_inst/channel_inst/gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

# ZCU106 HPC1 transceivers for SSD1 are best aligned with PCIE_X0Y0
set_property LOC PCIE40E4_X0Y0 [get_cells *_i/xdma_0/inst/pcie4_ip_i/inst/*_pcie_4_0_pipe_inst/pcie_4_0_e4_inst]

