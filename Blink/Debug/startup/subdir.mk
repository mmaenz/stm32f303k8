################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f303x8.s 

OBJS += \
./startup/startup_stm32f303x8.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/CMSIS/core" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/CMSIS/device" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/HAL_Driver/Inc" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/Utilities/STM32F3xx_Nucleo_32" -I"/Users/mmaenz/Projects/STM32/Blink/inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


