# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Tony\Downloads\PCIe\fpga-drive-aximm-pcie\fmc--pcie\vc709\3_vc709_fmc_rc\Vitis\xaxipcie_rc_enumerate_example_1_system\_ide\scripts\systemdebugger_xaxipcie_rc_enumerate_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Tony\Downloads\PCIe\fpga-drive-aximm-pcie\fmc--pcie\vc709\3_vc709_fmc_rc\Vitis\xaxipcie_rc_enumerate_example_1_system\_ide\scripts\systemdebugger_xaxipcie_rc_enumerate_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203A0FB67A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203A0FB67A-33691093-0"}
fpga -file D:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc709/3_vc709_fmc_rc/Vitis/xaxipcie_rc_enumerate_example_1/_ide/bitstream/fpgadrv_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc709/3_vc709_fmc_rc/Vitis/vc709_fmc_rc_Vitis/export/vc709_fmc_rc_Vitis/hw/fpgadrv_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc709/3_vc709_fmc_rc/Vitis/xaxipcie_rc_enumerate_example_1/Debug/xaxipcie_rc_enumerate_example_1.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
