################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Libraries/USB_Host/Class/Template/Src/usbh_template.c 

OBJS += \
./Utilities/Libraries/USB_Host/Class/Template/Src/usbh_template.o 

C_DEPS += \
./Utilities/Libraries/USB_Host/Class/Template/Src/usbh_template.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Libraries/USB_Host/Class/Template/Src/%.o: ../Utilities/Libraries/USB_Host/Class/Template/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -DSTM32F30 -DSTM32F303K8Tx -DSTM32F3 -DNUCLEO_F303K8 -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -I"/Users/mmaenz/Projects/STM32/Simple/inc" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/core" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/device" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/STM32F3xx_Nucleo_32" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/Libraries" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


