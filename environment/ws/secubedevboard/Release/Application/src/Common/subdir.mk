################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/aes256.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/crc16.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/pbkdf2.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/se3_common.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/sha256.c 

OBJS += \
./Application/src/Common/aes256.o \
./Application/src/Common/crc16.o \
./Application/src/Common/pbkdf2.o \
./Application/src/Common/se3_common.o \
./Application/src/Common/sha256.o 

C_DEPS += \
./Application/src/Common/aes256.d \
./Application/src/Common/crc16.d \
./Application/src/Common/pbkdf2.d \
./Application/src/Common/se3_common.d \
./Application/src/Common/sha256.d 


# Each subdirectory must supply rules for building sources it contributes
Application/src/Common/aes256.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/aes256.c Application/src/Common/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Common/aes256.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Common/crc16.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/crc16.c Application/src/Common/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Common/crc16.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Common/pbkdf2.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/pbkdf2.c Application/src/Common/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Common/pbkdf2.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Common/se3_common.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/se3_common.c Application/src/Common/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Common/se3_common.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Common/sha256.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Common/sha256.c Application/src/Common/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Common/sha256.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

