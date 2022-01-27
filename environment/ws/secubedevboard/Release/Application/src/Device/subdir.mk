################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_FPGA.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_Aes.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_AesHmacSha256s.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_HmacSha256.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_aes256hmacsha256.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_sha256.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_communication_core.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_core.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_core_time.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_dispatcher_core.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_flash.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_keys.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_memory.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_security_core.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_sekey.c \
/Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_smartcard.c 

OBJS += \
./Application/src/Device/se3_FPGA.o \
./Application/src/Device/se3_algo_Aes.o \
./Application/src/Device/se3_algo_AesHmacSha256s.o \
./Application/src/Device/se3_algo_HmacSha256.o \
./Application/src/Device/se3_algo_aes256hmacsha256.o \
./Application/src/Device/se3_algo_sha256.o \
./Application/src/Device/se3_communication_core.o \
./Application/src/Device/se3_core.o \
./Application/src/Device/se3_core_time.o \
./Application/src/Device/se3_dispatcher_core.o \
./Application/src/Device/se3_flash.o \
./Application/src/Device/se3_keys.o \
./Application/src/Device/se3_memory.o \
./Application/src/Device/se3_security_core.o \
./Application/src/Device/se3_sekey.o \
./Application/src/Device/se3_smartcard.o 

C_DEPS += \
./Application/src/Device/se3_FPGA.d \
./Application/src/Device/se3_algo_Aes.d \
./Application/src/Device/se3_algo_AesHmacSha256s.d \
./Application/src/Device/se3_algo_HmacSha256.d \
./Application/src/Device/se3_algo_aes256hmacsha256.d \
./Application/src/Device/se3_algo_sha256.d \
./Application/src/Device/se3_communication_core.d \
./Application/src/Device/se3_core.d \
./Application/src/Device/se3_core_time.d \
./Application/src/Device/se3_dispatcher_core.d \
./Application/src/Device/se3_flash.d \
./Application/src/Device/se3_keys.d \
./Application/src/Device/se3_memory.d \
./Application/src/Device/se3_security_core.d \
./Application/src/Device/se3_sekey.d \
./Application/src/Device/se3_smartcard.d 


# Each subdirectory must supply rules for building sources it contributes
Application/src/Device/se3_FPGA.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_FPGA.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_FPGA.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_algo_Aes.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_Aes.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_algo_Aes.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_algo_AesHmacSha256s.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_AesHmacSha256s.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_algo_AesHmacSha256s.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_algo_HmacSha256.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_HmacSha256.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_algo_HmacSha256.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_algo_aes256hmacsha256.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_aes256hmacsha256.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_algo_aes256hmacsha256.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_algo_sha256.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_algo_sha256.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_algo_sha256.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_communication_core.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_communication_core.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_communication_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_core.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_core.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_core_time.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_core_time.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_core_time.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_dispatcher_core.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_dispatcher_core.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_dispatcher_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_flash.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_flash.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_flash.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_keys.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_keys.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_keys.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_memory.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_memory.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_memory.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_security_core.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_security_core.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_security_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_sekey.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_sekey.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_sekey.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/src/Device/se3_smartcard.o: /Users/nico/Desktop/SEcube\ firmware\ 2/environment/secube/src/Device/se3_smartcard.c Application/src/Device/subdir.mk
	arm-none-eabi-gcc "$<" -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/src/Device/se3_smartcard.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

