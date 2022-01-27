#include "uartInterface.h"
#include "advParser.h"
#include "utility.h"

ScanData lookForDeviceOfInterest(char *string, uint8_t* found) {
	int index = 0;
	int i;
	uint16_t serviceUUID = 0;
	ScanData data; 
	uint8_t* start = data.adv_data;
	uint8_t* advBuffer = start;

	
	isBLEScan(string, &data);
	// analyze advertisement data to find services

	while (!serviceUUID && (advBuffer - start) < data.adv_length){
		int length = advBuffer[index++];
		serviceUUID = getServiceUUID(&advBuffer, length, &index);
	}
	

	if(!serviceUUID){
		//printf("No advertisement found\n");
		*found = 0;
	}else{
		//printf("Service found with UUID: %.4x\n", serviceUUID);
		*found = 1;
	}

	return data;

}

uint8_t isBLEScan(uint8_t* buffer, ScanData* data){
	if(!strncmp(buffer, SCAN_PREFIX, 8)){
		buffer += 8;
		char advDataBuffer[512];
		uint8_t** splits;
		uint8_t* stringAddress;
		uint8_t** hexes;
		// split data types
		splits = split_string(buffer, ',', 0);
		// 1. get the address
		
		// we have to get rid of ""
		stringAddress = split_string(splits[0], '"', 0)[1];
		hexes = split_string(stringAddress, ':', 0);
		int i;
		for(i = 0; i < 6; i++){
			data->addr[i] = string_to_hex(hexes[i]);
		}
		// 2. get the rssi
		int length = strlen(splits[1])-1;
		// first is minus sign, we can ignore it

		data->rssi = 0;
		int power = 10;
		for(i = length-1; i >= 0; i--){
			data->rssi += (splits[1][length-i] - '0')*power;
			power /= 10;
		} 


		data->rssi *=-1;
		// 3. get the advertisement data
		strcpy(advDataBuffer, splits[2]);
		for(i = 0; advDataBuffer[i] != '\0'; i+=2){
			char hex[2];
			hex[0] = advDataBuffer[i];
			hex[1] = advDataBuffer[i+1];
			data->adv_data[i/2] = string_to_hex(hex);
		}

		data->adv_length = i/2;


		
		// 4. get the scan response data
		strcpy(advDataBuffer, splits[3]);
		for(i = 0; advDataBuffer[i] != '\0'; i+=2){
			char hex[2];
			hex[0] = advDataBuffer[i];
			hex[1] = advDataBuffer[i+1];
			data->scan_rsp_data[i/2] = string_to_hex(hex);
		}

		data->rsp_length = i/2;
		// 5. get the addr type
		data->addr_type = (uint8_t)(splits[4][0] - '0'); 
		// free everything
		for(i = 0; i < 5; i++){
			free(splits[i]);
			splits[i] = NULL;
		}

		free(splits);
		splits = NULL;

		free(stringAddress);
		stringAddress = NULL;

		for(i = 0; i < 6; i++){
			free(hexes[i]);
			hexes[i] = NULL;
		}

		free(hexes);
		hexes = NULL;

		return 1;
	}

	return 0;
}

uint16_t getServiceUUID(uint8_t* buffer[], int length, int* index){
	uint8_t type;
	uint16_t serviceUUID = 0;
	type = *(++(*buffer));
	if(type == 3){
		(*buffer)++;
		serviceUUID = *((uint16_t*)(*buffer)++);
	}else{
		*buffer+=length;
	}

	// convert from little endian to big endian

	return serviceUUID;
}
