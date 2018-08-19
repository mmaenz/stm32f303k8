################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include Utilities/STM32F3xx_Nucleo_32/subdir.mk
-include Utilities/Libraries/fatfs/option/subdir.mk
-include Utilities/Libraries/fatfs/drivers/subdir.mk
-include Utilities/Libraries/fatfs/subdir.mk
-include Utilities/Libraries/USB_Host/Core/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/Template/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/MTP/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/MSC/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/HID/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/CDC/Src/subdir.mk
-include Utilities/Libraries/USB_Host/Class/AUDIO/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Core/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/Template/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/MSC/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/HID/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/DFU/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/CustomHID/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/CDC/Src/subdir.mk
-include Utilities/Libraries/USB_Device/Class/AUDIO/Src/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/Tasking/ARM_CM4F/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/RVDS/ARM_CM7/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/RVDS/ARM_CM4F/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/RVDS/ARM_CM3/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/RVDS/ARM_CM0/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/MemMang/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/IAR/ARM_CM7/r0p1/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/IAR/ARM_CM4F/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/IAR/ARM_CM3/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/IAR/ARM_CM0/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/GCC/ARM_CM3_MPU/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/GCC/ARM_CM3/subdir.mk
-include Utilities/Libraries/FreeRTOS/portable/GCC/ARM_CM0/subdir.mk
-include Utilities/Libraries/FreeRTOS/CMSIS_RTOS/subdir.mk
-include Utilities/Libraries/FreeRTOS/subdir.mk
-include Utilities/Libraries/subdir.mk
-include HAL_Driver/Src/subdir.mk
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

# All Target
all: Simple.elf

# Tool invocations
Simple.elf: $(OBJS) $(USER_OBJS) /Users/mmaenz/Projects/STM32/Simple/LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -T"/Users/mmaenz/Projects/STM32/Simple/LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -lm -o "Simple.elf" @"objects.list" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "Simple.elf" "Simple.bin"
	arm-none-eabi-size "Simple.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
