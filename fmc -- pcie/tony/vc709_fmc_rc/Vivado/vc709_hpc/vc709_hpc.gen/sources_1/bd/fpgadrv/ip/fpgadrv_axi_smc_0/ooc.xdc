# aclk {FREQ_HZ 200000000 CLK_DOMAIN fpgadrv_mig_0_0_ui_clk PHASE 0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN fpgadrv_mig_0_0_ui_clk PHASE 0} aclk2 {FREQ_HZ 125000000 CLK_DOMAIN fpgadrv_axi_pcie_0_0_axi_aclk PHASE 0.0}
# Clock Domain: fpgadrv_mig_0_0_ui_clk
create_clock -name aclk -period 5.000 [get_ports aclk]
# Clock Domain: fpgadrv_axi_pcie_0_0_axi_aclk
create_clock -name aclk2 -period 8.000 [get_ports aclk2]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 2 [get_ports aclk1]
