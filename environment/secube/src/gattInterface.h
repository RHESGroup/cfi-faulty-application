#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include "uartInterface.h"

/* SCHEME: the functions below should return something
 * 0: found the desired service
 * 1: nothing found
 * 2: error in the format of the string
 */

// function that finds the correct service
uint8_t findService(uint8_t* string, uint8_t* uuid, uint8_t* svcIndex);
// we assume that the characteristic is in place
// function that reads a characteristic
uint8_t readChar(uint8_t* valueContainer, uint8_t service, uint8_t connection);
void writeResponse(struct output_buffer* cmdBuffer, uint8_t response, uint8_t connIndex, uint8_t svcIndex);