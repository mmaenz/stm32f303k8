################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32.s 

OBJS += \
./startup/startup_stm32.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CMSIS/core" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CMSIS/device" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CPAL_Driver/inc" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/StdPeriph_Driver/inc" -I"/Users/mmaenz/Projects/STM32/SPL/inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


