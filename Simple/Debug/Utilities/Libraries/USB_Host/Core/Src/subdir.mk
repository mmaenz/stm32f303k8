################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Libraries/USB_Host/Core/Src/usbh_conf.c \
../Utilities/Libraries/USB_Host/Core/Src/usbh_conf_template.c \
../Utilities/Libraries/USB_Host/Core/Src/usbh_core.c \
../Utilities/Libraries/USB_Host/Core/Src/usbh_ctlreq.c \
../Utilities/Libraries/USB_Host/Core/Src/usbh_ioreq.c \
../Utilities/Libraries/USB_Host/Core/Src/usbh_pipes.c 

OBJS += \
./Utilities/Libraries/USB_Host/Core/Src/usbh_conf.o \
./Utilities/Libraries/USB_Host/Core/Src/usbh_conf_template.o \
./Utilities/Libraries/USB_Host/Core/Src/usbh_core.o \
./Utilities/Libraries/USB_Host/Core/Src/usbh_ctlreq.o \
./Utilities/Libraries/USB_Host/Core/Src/usbh_ioreq.o \
./Utilities/Libraries/USB_Host/Core/Src/usbh_pipes.o 

C_DEPS += \
./Utilities/Libraries/USB_Host/Core/Src/usbh_conf.d \
./Utilities/Libraries/USB_Host/Core/Src/usbh_conf_template.d \
./Utilities/Libraries/USB_Host/Core/Src/usbh_core.d \
./Utilities/Libraries/USB_Host/Core/Src/usbh_ctlreq.d \
./Utilities/Libraries/USB_Host/Core/Src/usbh_ioreq.d \
./Utilities/Libraries/USB_Host/Core/Src/usbh_pipes.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Libraries/USB_Host/Core/Src/%.o: ../Utilities/Libraries/USB_Host/Core/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -DSTM32F30 -DSTM32F303K8Tx -DSTM32F3 -DNUCLEO_F303K8 -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -I"/Users/mmaenz/Projects/STM32/Simple/inc" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/core" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/device" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/STM32F3xx_Nucleo_32" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/Libraries" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


