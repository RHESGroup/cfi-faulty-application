################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx '-D__packed="__attribute__((__packed__))"' '-D__weak=__attribute__((weak))' -DUSE_HAL_DRIVER -DDEBUG -c -I"/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include" -I"/Users/nico/Desktop/SEcube firmware 2/environment/secube/src" -I"/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/device/st/stm32f4xx/Include" -I"/Users/nico/Desktop/SEcube firmware 2/environment/drivers/stm32f4xx_hal_driver/Inc" -I"/Users/nico/Desktop/SEcube firmware 2/environment/secube/src/Common" -I"/Users/nico/Desktop/SEcube firmware 2/environment/secube/src/Device" -I"/Users/nico/Desktop/SEcube firmware 2/environment/middlewares/st/stm32_usb_device_library/class/msc/Inc" -I"/Users/nico/Desktop/SEcube firmware 2/environment/middlewares/st/stm32_usb_device_library/core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

