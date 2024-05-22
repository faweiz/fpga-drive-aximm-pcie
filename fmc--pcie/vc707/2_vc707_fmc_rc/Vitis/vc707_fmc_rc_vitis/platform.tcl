# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\M38172\Downloads\12022023\ngc\vc707_fmc_rc\Vitis\vc707_fmc_rc_vitis\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\M38172\Downloads\12022023\ngc\vc707_fmc_rc\Vitis\vc707_fmc_rc_vitis\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vc707_fmc_rc_vitis}\
-hw {C:\Users\M38172\Downloads\12022023\ngc\vc707_fmc_rc\Vivado\vc707_hpc1\fpgadrv_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/M38172/Downloads/12022023/ngc/vc707_fmc_rc/Vitis}

platform write
platform generate -domains 
platform active {vc707_fmc_rc_vitis}
bsp reload
platform generate
platform active {vc707_fmc_rc_vitis}
platform config -updatehw {D:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc707/2_vc707_fmc_rc/Vivado/vc707_hpc1/fpgadrv_wrapper.xsa}
platform generate
platform generate -domains 
platform clean
platform generate
