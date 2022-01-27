/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
#include "uartInterface.h"
#include "mainLoop.h"
#include "usart.h"
#include "se3_security_core.h"

uint8_t mainLoop(struct input_buffer *inputBuffer, struct output_buffer *commandBuffer, struct output_buffer *logBuffer);
struct input_buffer inputBuffer;
struct output_buffer commandBuffer;
struct output_buffer logBuffer;

static uint8_t pin[32] = {
		'h', 'e','l','l', 0,0,0,0, 0,0,0,0, 0,0,0,0,
		0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0,
};

uint32_t 						vectorTable_RAM[256] __attribute__(( aligned (0x200ul) ));
extern uint32_t 		g_pfnVectors[];                             /* vector table ROM  */

int main(void)
{

	//Remapping Interrupt Vector (overload the USB Loader Interrupt Vector)
	uint32_t i;
	for (i = 0; i < 256; i++) {
		vectorTable_RAM[i] = g_pfnVectors[i];            /* copy vector table to RAM */
	}

	__disable_irq();
	SCB->VTOR = (uint32_t)&vectorTable_RAM;
	__DSB();
	__enable_irq();

	systemInit();
	device_init();

	HAL_GPIO_WritePin(GPIOG, GPIO_PIN_3, GPIO_PIN_RESET);	//turn-on LED

	HAL_GPIO_WritePin(GPIOG, GPIO_PIN_2, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOG, GPIO_PIN_2, GPIO_PIN_RESET);
	uint16_t value2 = 2;
	uint16_t value4 = 4;
	uint16_t value8 = 8;
	uint16_t value16 = 16;
	uint32_t address = 0x60000000U;
//	for (;;){
//		//value = 2;
//		__asm ("MOV r8, %[address]"
//				:
//				: [address] "r" (address)
//		);
//		__asm ("STRH %[value], [r8]"
//				:
//				: [value] "r" (value2)
//		);
//		HAL_Delay(1000);
//		__asm ("STRH %[value], [r8]"
//				:
//				: [value] "r" (value4)
//		);
//		HAL_Delay(1000);
//		__asm ("STRH %[value], [r8]"
//				:
//				: [value] "r" (value8)
//		);
//		HAL_Delay(1000);
//		__asm ("STRH %[value], [r8]"
//				:
//				: [value] "r" (value16)
//		);
//		HAL_Delay(1000);
//	}

	inputBuffer.huart = huart7;
	commandBuffer.huart = huart7;
	logBuffer.huart = huart1;

	/* USER CODE BEGIN */
    sprintf(commandBuffer.buffer, "at+rst\r\n");
    sendCommand(&commandBuffer, 1, 3000);

	mainLoop(&inputBuffer, &commandBuffer, &logBuffer);
	device_loop();

	/* USER CODE END  */

	return 0;
}





/** System Clock Configuration
*/

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
