################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f30x.c 

OBJS += \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f30x.o 

C_DEPS += \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f30x.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F3 -DSTM32F30 -DSTM32F303K8Tx -DNUCLEO_F303K8 -DDEBUG -DSTM32F334x8 -DUSE_STDPERIPH_DRIVER -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CMSIS/core" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CMSIS/device" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/CPAL_Driver/inc" -I"/Users/mmaenz/.stm/nucleo-f303k8_stdperiph_lib/StdPeriph_Driver/inc" -I"/Users/mmaenz/Projects/STM32/SPL/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


