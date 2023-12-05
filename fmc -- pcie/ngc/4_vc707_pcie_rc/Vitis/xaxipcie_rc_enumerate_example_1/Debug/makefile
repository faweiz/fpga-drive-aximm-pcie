################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
xaxipcie_rc_enumerate_example_1.elf.size \


# All Target
all: xaxipcie_rc_enumerate_example_1.elf secondary-outputs

# Tool invocations
xaxipcie_rc_enumerate_example_1.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -LC:/Users/M38172/Downloads/12022023/ngc/vc707_pcie_rc/Vitis/vc707_pcie_rc_Vitis/export/vc707_pcie_rc_Vitis/sw/vc707_pcie_rc_Vitis/standalone_domain/bsplib/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -Wl,--gc-sections -o "xaxipcie_rc_enumerate_example_1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

xaxipcie_rc_enumerate_example_1.elf.size: xaxipcie_rc_enumerate_example_1.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size xaxipcie_rc_enumerate_example_1.elf  |tee "xaxipcie_rc_enumerate_example_1.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) xaxipcie_rc_enumerate_example_1.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents

-include ../makefile.targets
