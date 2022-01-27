#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<string.h>


// Macros for accessing buffers
#define CMD_BUFFER commandBuffer->buffer
#define IN_BUFFER inputBuffer->buffer
#define LOG_BUFFER logBuffer->buffer

// Raw commands to be sent
#define BLE_CLIENT_START "AT+BLEINIT=1\r\n"
#define BLE_SCAN_START "AT+BLESCAN=1,3\r\n"
#define BLE_SCAN_STOP "AT+BLESCAN=0\r\n" 

// Macros to generate commands
#define BLE_CONNECT_COMMAND(S, I, A, T) sprintf(S, "AT+BLECONN=%d,\"%s\",1,%d\r\n", I, A, T)
#define BLE_SERVICE_DISCOVERY_COMMAND(S, C) sprintf(S, "AT+BLEGATTCPRIMSRV=%d\r\n", C)
#define BLE_CHAR_DISCOVERY_COMMAND(S, C, SE) sprintf(S, "AT+BLEGATTCCHAR=%d,%d\r\n", C, SE)
#define BLE_CHAR_READ_COMMAND(S, C, SE, CH) sprintf(S, "AT+BLEGATTCRD=%d,%d,%d\r\n", C, SE, CH)
#define BLE_DISCONN(S, C) sprintf(S, "AT+BLEDISCONN=%d\r\n", C)
#define BLE_ANSWER(S, C, SE, CH, R) sprintf(S, "AT+BLEGATTCWR=%d,%d,%d,,%d\r\n",C, SE, CH, strlen(R))

// Answers to our commands
#define BLE_SCAN_RESPONSE "+BLESCAN"
#define BLE_SERVICE_DISCOVERY_RESPONSE "+BLEGATTCPRIMSRV"
#define BLE_CHAR_DISCOVERY_RESPONSE "+BLEGATTCCHAR"
#define BLE_CHAR_READ_RESPONSE "+BLEGATTCRD"

// Command status
#define ERR_CODE "ERROR"
#define OK "OK"

// Name of the service we are syncing on 
#define SERVICE "0xA002"


void safeExit(uint8_t connIndex);