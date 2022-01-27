#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "stm32f429xx.h"
#include "stm32f4xx_hal.h"
#include "adc.h"
#include "crc.h"
#include "dma.h"
#include "i2c.h"
#include "rng.h"
#include "sdio.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"
#include "fmc.h"
#include "se3_sekey.h"
#include "se3_core.h"
// UART mode flags
#define CRNL    0
#define NL      1

// Macros for channels

struct input_buffer{
    uint8_t buffer[2048];
    size_t lastRead;
    size_t dataAvail;
    UART_HandleTypeDef huart;
    // another field should be the huart structure that is bound to the buffer
};

struct output_buffer{
    uint8_t buffer[1024];
    size_t lastWrite;
    UART_HandleTypeDef huart;
    // another field should be the huart structure that is bound to the buffer
};

extern struct output_buffer commandBuffer;
extern struct input_buffer inputBuffer;
extern struct output_buffer logBuffer;
// UART structures


uint8_t initBuffers();
// this function should be in charge of returning the command status describe return status error
uint8_t sendCommand(struct output_buffer *commandBuffer, uint8_t hasStatus, uint16_t timeout); 
// should return only the status of the UART connection
uint8_t logToDebugger(struct output_buffer *logBuffer, uint8_t flags);
// read single line from input channel
size_t readLine(struct input_buffer *inputBuffer, char *line, uint8_t flush);
// read until buffer is full or until timeout from UART
uint8_t readFromUart(struct input_buffer *inputBuffer, int timeout, size_t bufferSize);
void systemInit();
void SystemClock_Config(void);
