################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/adc.c \
../Application/src/advParser.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/crc.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/dma.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/fmc.c \
../Application/src/gattInterface.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/gpio.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/i2c.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/main.c \
../Application/src/mainLoop.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/rng.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/sdio.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/se3_rand.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/se3_sdio.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/spi.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/stm32f4xx_hal_msp.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/stm32f4xx_it.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/tim.c \
../Application/src/uartInterface.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usart.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usb_device.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_conf.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_desc.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_storage_if.c \
../Application/src/utility.c 

OBJS += \
./Application/src/adc.o \
./Application/src/advParser.o \
./Application/src/crc.o \
./Application/src/dma.o \
./Application/src/fmc.o \
./Application/src/gattInterface.o \
./Application/src/gpio.o \
./Application/src/i2c.o \
./Application/src/main.o \
./Application/src/mainLoop.o \
./Application/src/rng.o \
./Application/src/sdio.o \
./Application/src/se3_rand.o \
./Application/src/se3_sdio.o \
./Application/src/spi.o \
./Application/src/stm32f4xx_hal_msp.o \
./Application/src/stm32f4xx_it.o \
./Application/src/tim.o \
./Application/src/uartInterface.o \
./Application/src/usart.o \
./Application/src/usb_device.o \
./Application/src/usbd_conf.o \
./Application/src/usbd_desc.o \
./Application/src/usbd_storage_if.o \
./Application/src/utility.o 

C_DEPS += \
./Application/src/adc.d \
./Application/src/advParser.d \
./Application/src/crc.d \
./Application/src/dma.d \
./Application/src/fmc.d \
./Application/src/gattInterface.d \
./Application/src/gpio.d \
./Application/src/i2c.d \
./Application/src/main.d \
./Application/src/mainLoop.d \
./Application/src/rng.d \
./Application/src/sdio.d \
./Application/src/se3_rand.d \
./Application/src/se3_sdio.d \
./Application/src/spi.d \
./Application/src/stm32f4xx_hal_msp.d \
./Application/src/stm32f4xx_it.d \
./Application/src/tim.d \
./Application/src/uartInterface.d \
./Application/src/usart.d \
./Application/src/usb_device.d \
./Application/src/usbd_conf.d \
./Application/src/usbd_desc.d \
./Application/src/usbd_storage_if.d \
./Application/src/utility.d 


# Each subdirectory must supply rules for building sources it contributes
Application/src/adc.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/adc.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/adc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/advParser.o: ../Application/src/advParser.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/advParser.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/crc.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/crc.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/crc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/dma.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/dma.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/dma.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/fmc.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/fmc.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/fmc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/gattInterface.o: ../Application/src/gattInterface.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/gattInterface.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/gpio.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/gpio.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/i2c.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/i2c.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/i2c.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/main.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/main.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/mainLoop.o: ../Application/src/mainLoop.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/mainLoop.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/rng.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/rng.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/rng.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/sdio.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/sdio.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/sdio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/se3_rand.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/se3_rand.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/se3_rand.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/se3_sdio.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/se3_sdio.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/se3_sdio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/spi.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/spi.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/spi.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/stm32f4xx_hal_msp.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/stm32f4xx_hal_msp.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/stm32f4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/stm32f4xx_it.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/stm32f4xx_it.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/tim.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/tim.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/uartInterface.o: ../Application/src/uartInterface.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/uartInterface.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/usart.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usart.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/usart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/usb_device.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usb_device.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/usb_device.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/usbd_conf.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_conf.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/usbd_conf.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/usbd_desc.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_desc.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/usbd_desc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/usbd_storage_if.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/usbd_storage_if.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/usbd_storage_if.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/utility.o: ../Application/src/utility.c Application/src/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/utility.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

