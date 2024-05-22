# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Tony\Downloads\PCIe\fpga-drive-aximm-pcie\fmc--pcie\vc707\4_vc707_pcie_rc\Vitis\vc707_pcie_rc_Vitis\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Tony\Downloads\PCIe\fpga-drive-aximm-pcie\fmc--pcie\vc707\4_vc707_pcie_rc\Vitis\vc707_pcie_rc_Vitis\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vc707_pcie_rc_Vitis}\
-hw {D:\Tony\Downloads\PCIe\fpga-drive-aximm-pcie\fmc--pcie\vc707\4_vc707_pcie_rc\Vivado\vc707_hpc1\fpgadrv_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {D:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc707/4_vc707_pcie_rc/Vitis}

platform write
platform generate -domains 
platform active {vc707_pcie_rc_Vitis}
platform generate
bsp reload
