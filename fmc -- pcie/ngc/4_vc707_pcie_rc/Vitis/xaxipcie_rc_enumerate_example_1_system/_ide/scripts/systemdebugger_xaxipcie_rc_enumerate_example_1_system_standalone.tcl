# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\M38172\Downloads\12022023\ngc\vc707_pcie_rc\Vitis\xaxipcie_rc_enumerate_example_1_system\_ide\scripts\systemdebugger_xaxipcie_rc_enumerate_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\M38172\Downloads\12022023\ngc\vc707_pcie_rc\Vitis\xaxipcie_rc_enumerate_example_1_system\_ide\scripts\systemdebugger_xaxipcie_rc_enumerate_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203A03571A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203A03571A-33687093-0"}
fpga -file C:/Users/M38172/Downloads/12022023/ngc/vc707_pcie_rc/Vitis/xaxipcie_rc_enumerate_example_1/_ide/bitstream/fpgadrv_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/M38172/Downloads/12022023/ngc/vc707_pcie_rc/Vitis/vc707_pcie_rc_Vitis/export/vc707_pcie_rc_Vitis/hw/fpgadrv_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/M38172/Downloads/12022023/ngc/vc707_pcie_rc/Vitis/xaxipcie_rc_enumerate_example_1/Debug/xaxipcie_rc_enumerate_example_1.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
