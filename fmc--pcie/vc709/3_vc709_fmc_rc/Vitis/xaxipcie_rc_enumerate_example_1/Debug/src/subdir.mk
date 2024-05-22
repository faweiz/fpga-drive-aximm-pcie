################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/xaxipcie_rc_enumerate_example.c 

OBJS += \
./src/xaxipcie_rc_enumerate_example.o 

C_DEPS += \
./src/xaxipcie_rc_enumerate_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -ID:/Tony/Downloads/PCIe/fpga-drive-aximm-pcie/fmc--pcie/vc709/3_vc709_fmc_rc/Vitis/vc709_fmc_rc_Vitis/export/vc709_fmc_rc_Vitis/sw/vc709_fmc_rc_Vitis/standalone_domain/bspinclude/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


