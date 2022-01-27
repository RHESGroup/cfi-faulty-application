
#include "utility.h"

uint8_t** split_string(uint8_t* buffer, char divisor, uint8_t isRaw){

 	int i, j, start;
	int numSplit = 0;
	int splitLen = 0;
	uint8_t** splits;
	int divPos[256]; // at most
	int len;

	if(isRaw){
		for(i = 0; buffer[i] != '\n' && buffer[i] != '\r'; i++){}
		len = i;
	}else{
		len = strlen(buffer);
	}

	// find how many splits there are
	for(i = 0; i < len; i++){
		if(buffer[i] == divisor){
			numSplit++;
		}
	}


	splits = (uint8_t**)malloc(sizeof(uint8_t*)*numSplit+1);
	if(splits == NULL){
		return NULL;
	}

	// find each divisor position
	// two support divisors at the beginning and end of string
	divPos[0] = -1; 
	divPos[numSplit+1] = len;
	j = 1;
	for(i = 0; i < len; i++){ 
		if(buffer[i] == divisor){
			divPos[j] = i;
			j++;
		} 
	}

	// We loop to parse pieces
	for(i = 0; i < numSplit+1; i++){
		splitLen = divPos[i+1] - divPos[i] - 1;
		start = divPos[i] + 1;
		splits[i] = (uint8_t*)malloc(splitLen+1);
		if(splits[i] == NULL){
			return NULL;
		}
		memcpy(splits[i], &buffer[start], splitLen);
		splits[i][splitLen] = '\0';
	} 
	
	if(splits == NULL){
		return NULL;
	} 
}

uint8_t string_to_hex(char* hex){
	int i;
	uint8_t bin = 0x0;
	for(i = 0; i < 2; i++){
		if(isalpha(hex[i])){
			hex[i] = tolower(hex[i]);
		}
		switch (hex[i]){
			case '0':
				bin |= 0x0 << 4 *(1-i); break;
			case '1':
				bin |= 0x1 << 4 *(1-i); break;
			case '2':
				bin |= 0x2 << 4 *(1-i); break;
			case '3':
				bin |= 0x3 << 4 *(1-i); break;
			case '4':
				bin |= 0x4 << 4 *(1-i); break;
			case '5':
				bin |= 0x5 << 4 *(1-i); break;
			case '6':
				bin |= 0x6 << 4 *(1-i); break;
			case '7':
				bin |= 0x7 << 4 *(1-i); break;
			case '8':
				bin |= 0x8 << 4 *(1-i); break;
			case '9':
				bin |= 0x9 << 4 *(1-i); break;
			case 'a':
				bin |= 0xa << 4 *(1-i); break;
			case 'b':
				bin |= 0xb << 4 *(1-i); break;
			case 'c':
				bin |= 0xc << 4 *(1-i); break;
			case 'd':
				bin |= 0xd << 4 *(1-i); break;
			case 'e':
				bin |= 0xe << 4 *(1-i); break;
			case 'f':
				bin |= 0xf << 4 *(1-i); break;
			default: 
				printf("Hex not valid\n");
				break; 
		}
	} 

	return bin;
}
