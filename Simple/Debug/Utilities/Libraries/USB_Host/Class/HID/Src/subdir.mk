################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid.c \
../Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_keybd.c \
../Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_mouse.c \
../Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_parser.c 

OBJS += \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid.o \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_keybd.o \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_mouse.o \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_parser.o 

C_DEPS += \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid.d \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_keybd.d \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_mouse.d \
./Utilities/Libraries/USB_Host/Class/HID/Src/usbh_hid_parser.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Libraries/USB_Host/Class/HID/Src/%.o: ../Utilities/Libraries/USB_Host/Class/HID/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -DSTM32F30 -DSTM32F303K8Tx -DSTM32F3 -DNUCLEO_F303K8 -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -I"/Users/mmaenz/Projects/STM32/Simple/inc" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/core" -I"/Users/mmaenz/Projects/STM32/Simple/CMSIS/device" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc/Legacy" -I"/Users/mmaenz/Projects/STM32/Simple/HAL_Driver/Inc" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/STM32F3xx_Nucleo_32" -I"/Users/mmaenz/Projects/STM32/Simple/Utilities/Libraries" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


