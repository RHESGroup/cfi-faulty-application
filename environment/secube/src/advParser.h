#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>
#include <math.h>


#define MAX_LENGTH 256
#define SCAN_PREFIX "+BLESCAN"

typedef struct scan_data {
	uint8_t addr[6];
	int8_t rssi;
	uint8_t adv_data[256];
	uint8_t adv_length;
	uint8_t scan_rsp_data[256];
	uint8_t rsp_length;
	uint8_t addr_type; 
} ScanData;

ScanData lookForDeviceOfInterest(char *string, uint8_t* found);
// function to select the line of BLESCAN. If BLESCAN, then fill with data 
uint8_t isBLEScan(uint8_t* buffer, ScanData* data);
// function to retrieve the 16-bit service UUID
uint16_t getServiceUUID(uint8_t** buffer, int length, int* index);