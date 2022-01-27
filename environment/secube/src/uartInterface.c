#include "uartInterface.h"

uint8_t sendCommand(struct output_buffer *commandBuffer, uint8_t hasStatus, uint16_t timeout)
{

	int i,ret;
	int maxReads = 0;
	char statusLine[512];
	// send immediately all data
	/* flush buffer */
	for (i = 0; i < 2048; i++)
	{
		inputBuffer.buffer[i] = 0;
	}
	int cmdLen = strlen(commandBuffer->buffer);
	ret = HAL_UART_Transmit(&(commandBuffer->huart), commandBuffer->buffer, cmdLen, HAL_MAX_DELAY);
	ret = readFromUart(&inputBuffer, timeout, 2048);
	if(hasStatus){
		while (maxReads < 10)
		{	// if there is something to read, i read it
			// if it was something important, i don't care
			// i was told that I have to check the status
			readLine(&inputBuffer, statusLine, 1);
			if (!strncmp("OK", statusLine, 2))
			{
				return 1; // OK
			}
			else if(!strncmp("ERROR", statusLine, 5))
			{
				return 0; // ERROR
			} 
			maxReads++;
		}

		return 0;

	}else{ 
		return 1; 
	}
}

// should return only the status of the UART connection
uint8_t logToDebugger(struct output_buffer *logBuffer, uint8_t flags)
{
	if(flags == CRNL){
		int bufLen = strlen(logBuffer->buffer);
		logBuffer->buffer[bufLen] = '\r';
		logBuffer->buffer[bufLen+1] = '\n';
	}
	HAL_UART_Transmit(&(logBuffer->huart), logBuffer->buffer, strlen(logBuffer->buffer), HAL_MAX_DELAY);
}

/* We parse line by line in this function
* We keep track of the availability of data in the input buffer
*/

size_t readLine(struct input_buffer *inputBuffer, char *line, uint8_t flush)
{
	int i, start, end;
	int counter = 0;

	/* read a single line from the inputBuffer
	* we read until a character like \n or \r is met
	*/

	start = inputBuffer->lastRead;
	end = inputBuffer->dataAvail+inputBuffer->lastRead;
	for (i = start; i < end &&
		!(inputBuffer->buffer[i] == '\n' || inputBuffer->buffer[i] == '\r'); i++)
	{
		line[i-inputBuffer->lastRead] = inputBuffer->buffer[i];
		inputBuffer->dataAvail--;
		counter++;
	}

	line[i-inputBuffer->lastRead] = '\0';
	// take care of single line termination character
	i++; // start of next string
	inputBuffer->dataAvail--;
	// take care of double line termination character
	if (inputBuffer->buffer[i] == '\n' || inputBuffer->buffer[i] == '\r')
	{
		// Consume data available
		inputBuffer->dataAvail--;
		i++;
	}
	inputBuffer->lastRead = i;

	if(inputBuffer->dataAvail){ 
		return 0;
	}else{
		return 1;
	}
}

uint8_t readFromUart(struct input_buffer *inputBuffer, int timeout, size_t bufferSize)
{
	uint8_t ret;
	int i;

	/* read from uart */
	ret = HAL_UART_Receive(&(inputBuffer->huart), inputBuffer->buffer, bufferSize, timeout);

	/* check data availability */
	for (inputBuffer->dataAvail = bufferSize; inputBuffer->dataAvail > 0; inputBuffer->dataAvail--)
	{
		if (inputBuffer->buffer[inputBuffer->dataAvail-1])
			break;
	}

	/* reset read offset */
	inputBuffer->lastRead = 0;

	return ret;
}
/**
  * @brief UART7 Initialization Function
  * @param None
  * @retval None
  */


void Error_Handler(void)
{
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1)
	{
	}
	/* USER CODE END Error_Handler_Debug */
}

void SystemClock_Config(void)
{

	RCC_OscInitTypeDef RCC_OscInitStruct;
	RCC_ClkInitTypeDef RCC_ClkInitStruct;

	__PWR_CLK_ENABLE();
	__HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
	RCC_OscInitStruct.HSEState = RCC_HSE_ON;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLM = 16;
	RCC_OscInitStruct.PLL.PLLN = 336;
	RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
	RCC_OscInitStruct.PLL.PLLQ = 7;
	HAL_RCC_OscConfig(&RCC_OscInitStruct);

	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
							  |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
	HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);

	HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_PLLCLK, RCC_MCODIV_2);

	HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

	HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

	/* SysTick_IRQn interrupt configuration */
	HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

void systemInit()
{

	HAL_Init();

	/* Configure the system clock */
	SystemClock_Config();

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_DMA_Init();
	//MX_ADC1_Init();
	MX_FMC_Init();
	MX_I2C2_Init();
	MX_SDIO_SD_Init();
	MX_SPI5_Init();
	MX_TIM4_Init();
	MX_USART1_UART_Init();
	MX_UART7_Init();
	MX_USART6_SMARTCARD_Init();
	MX_USB_DEVICE_Init();
	MX_CRC_Init();
	MX_RNG_Init();
}
