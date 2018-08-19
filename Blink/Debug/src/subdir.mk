################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32f3xx_it.c \
../src/syscalls.c \
../src/system_stm32f3xx.c \
../src/tm_stm32_delay.c 

OBJS += \
./src/main.o \
./src/stm32f3xx_it.o \
./src/syscalls.o \
./src/system_stm32f3xx.o \
./src/tm_stm32_delay.o 

C_DEPS += \
./src/main.d \
./src/stm32f3xx_it.d \
./src/syscalls.d \
./src/system_stm32f3xx.d \
./src/tm_stm32_delay.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F3 -DSTM32F30 -DSTM32F303K8Tx -DNUCLEO_F303K8 -DDEBUG -DSTM32F303x8 -DUSE_HAL_DRIVER -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/CMSIS/core" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/CMSIS/device" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/HAL_Driver/Inc" -I"/Users/mmaenz/.stm/nucleo-f303k8_hal_lib/Utilities/STM32F3xx_Nucleo_32" -I"/Users/mmaenz/Projects/STM32/Blink/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


