# PCIe RC to EP Design using VC707 or VC709
* FMC to FMC 
* FMC to PCIe 
* PCIe to PCIe

================================

## Description

This project is designed to form a high speed transceivers PCIe communication between two VC707 or two VC709 or VC707 to VC709 development kits. One board is acting as a PCIe End-Point(EP) device, another board as a Root-Complex(RC) device use either FMC or on-board PCIe connector. Following code/function have been implemented:

         VC709              VC707
- [ ] 1. VC709_PCIe_RC  <-> VC707_FMC_EP    
- [x] 2. VC709_PCIe_EP  <-> VC707_FMC_RC    (Working fine)

- [x] 3. VC709_FMC_RC   <-> VC707_PCIe_EP   (Working fine)
- [x] 4. VC709_FMC_EP   <-> VC707_PCIe_RC   (Working fine)

- [ ] 5. VC709_FMC_RC   <-> VC707_FMC_EP    (Need to test it after receive ITA)
- [ ] 6. VC709_FMC_EP   <-> VC707_FMC_RC    (Need to test it after receive ITA)

- [ ] 7. VC709_PCIe_RC  <-> VC707_PCIe_EP   (No Hardware available)
- [ ] 8. VC707_PCIe_EP  <-> VC707_PCIe_RC   (No Hardware available)


Reference Documents for Pinout:

* vc707: XC7VX485T-2FFG1761C 
	* [PG054](https://docs.xilinx.com/viewer/book-attachment/57DsW3ax89kYPhTGXzW0~g/lBuGChTktzPaNOF1Eq0v_w "PG054"):
		* Page 258 X1Y0(PCIe) X1Y1 (FMC)  

|           |           |     |        PCIe |     |  FMC  |             |
| ----------|-----------|-----|------------:|-----|-------|------------:|
|  RX_P(3)  |  RX_N(3)  |     |        AC6  |     |  B32  |         F4  |
|  RX_P(2)  |  RX_N(2)  |     |        AB4  |     |  B36  |         G2  |
|  RX_P(1)  |  RX_N(1)  |     |        AA6  |     |  A38  |         H4  |
|  RX_P(0)  |  RX_N(0)  |     |        Y4   |     |  A34  |         J2  |
|           |           |     |             |     |       |             |
|  TX_P(3)  |  TX_N(3)  |     |  X1Y8: W2   |     |  A14  |  X1Y20: H8  |
|  TX_P(2)  |  TX_N(2)  |     |  X1Y9: AA2  |     |  A18  |  X1Y21: G6  |
|  TX_P(1)  |  TX_N(1)  |     |  X1Y10:AC2  |     |  B16  |  X1Y22: F8  |
|  TX_P(0)  |  TX_N(0)  |     |  X1Y11:AE2  |     |  B12  |  X1Y23: E6  |
|           |           |     |             |     |       |             |
| REF_CLK_P |           |     |        AB8  |     |  B20  |         E10 |
| REF_CLK_N |           |     |        AB7  |     |  B21  |         E9  |
|           |           |     |             |     |       |             |
| PERST     |           |     |        AV35 |     |  G6   |         K39 |
|* RC is Output         | 
|* EP is Input          | 


* vc709: XC7VX690T-2FFG1761C 
	* [PG023](https://docs.xilinx.com/v/u/en-US/pg023_v7_pcie_gen3 "PG023"):
		* Page 241 X0Y1(PCIe) X0Y2(FMC)

|           |           |     |        PCIe |     |  FMC  |             |
| ----------|-----------|-----|------------:|-----|-------|------------:|
|  RX_P(3)  |  RX_N(3)  |     |        AC6  |     |  B32  |         F4  |
|  RX_P(2)  |  RX_N(2)  |     |        AB4  |     |  B36  |         G2  |
|  RX_P(1)  |  RX_N(1)  |     |        AA6  |     |  A38  |         H4  |
|  RX_P(0)  |  RX_N(0)  |     |        Y4   |     |  A34  |         J2  |
|           |           |     |             |     |       |             |
|  TX_P(3)  |  TX_N(3)  |     |  X1Y20:W2   |     |  A14  |  X1Y32: H8  |
|  TX_P(2)  |  TX_N(2)  |     |  X1Y21:AA2  |     |  A18  |  X1Y33: G6  |
|  TX_P(1)  |  TX_N(1)  |     |  X1Y22:AC2  |     |  B16  |  X1Y34: F8  |
|  TX_P(0)  |  TX_N(0)  |     |  X1Y23:AE2  |     |  B12  |  X1Y35: E6  |
|           |           |     |             |     |       |             |
| REF_CLK_P |           |     |        AB8  |     |  B20  |         E10 |
| REF_CLK_N |           |     |        AB7  |     |  B21  |         E9  |
|           |           |     |             |     |       |             |
| PERST     |           |     |        AV35 |     |  G6   |         K39 |
|* RC is Output         | 
|* EP is Input          | 

## VC709 PCIe RC Bug

In Vivado, the PCIe Gen3 IP core does not have a parameter called "C_INCLUDE_RC", instead it has "device_port_type"
	
### axipcie driver

	This project uses a modified version of the axipcie driver.
	The axipcie_v3_3 driver is attached to designs that use the AXI Memory Mapped to PCIe IP (axi_pcie) and designs that use the AXI PCIe Gen3 IP (axi_pcie3). However, the driver contains a bug that affects designs that use the AXI PCIe Gen3 IP.
	The script axipcie_v3_3/data/acipcie.tcl generates the xparameters.h and xaxipcie_g.c BSP sources that both contain a define called INCLUDE_RC. To determine the value of this define, the script reads a parameter of the PCIe IP called CONFIG.INCLUDE_RC, however this parameter only exists in the AXI Memory Mapped to PCIe IP. Our modified version of the script uses the correct parameter to determine the value of INCLUDE_RC. Specifically, it reads the CONFIG.device_port_type parameter and compares it to the value that is expected for root complex designs: Root_Port_of_PCI_Express_Root_Complex.
	* From <https://refdesign.fpgadrive.com/en/latest/stand_alone.html#advanced-design-details> 


In order to get PCIe Root Complex in VC709 to work, we need to copy axipcie_v3_3/data/acipcie.tcl script from EmbeddedSw folder to E:\Xilinx\Vitis\2022.1\data\embeddedsw\XilinxProcessorIPLib\drivers\axipcie_v3_3\data folder

## Reference

* https://www.xilinx.com/products/boards-and-kits/ek-v7-vc707-g.html
* https://www.xilinx.com/products/boards-and-kits/dk-v7-vc709-g.html

* https://www.fpgadeveloper.com/2016/04/microblaze-pci-express-root-complex-design-in-vivado.html/
* https://www.fpgadrive.com/docs/fpga-drive-fmc-gen4/overview/
* https://refdesign.fpgadrive.com/en/latest/index.html

* https://github.com/faweiz/fpga-drive-aximm-pcie/tree/develop/fmc%20--%20pcie/Reference

* https://fmchub.github.io/appendix/VITA57_FMC_HPC_LPC_SIGNALS_AND_PINOUT.html


* https://www.xilinx.com/video/fpga/axi-pci-express-mig-subsystem-built-in-ipi.html