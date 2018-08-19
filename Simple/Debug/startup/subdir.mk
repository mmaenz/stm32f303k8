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
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -I"/Users/mmaenz/Projects/STM32/Simple/inc" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/core" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/device" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/STM32F3xx_Nucleo_32" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


