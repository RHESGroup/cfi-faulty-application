#include "gattInterface.h"
#include "utility.h"
#include "mainLoop.h"

uint8_t findService(uint8_t* string, uint8_t* uuid, uint8_t* svcIndex){
    char** splits;
    splits = split_string(string, ',', 0);
    if(splits == NULL || splits[2] == NULL){
        return 2;
    }

    if(!strncmp(splits[2], SERVICE, strlen(SERVICE) )){
        *svcIndex = (uint8_t)atoi((char*)splits[1]);
        return 0; 
    }else{
        return 1;
    } 
}

uint8_t readChar(uint8_t* line, uint8_t service, uint8_t connection){
    char value[32];
    char** lineSplit;
    uint8_t len;
    BLE_CHAR_READ_COMMAND(commandBuffer.buffer, connection, service, 1);
    if(sendCommand(&commandBuffer, 0, 1000)){
        readLine(&inputBuffer, line, 0); // blank line
        if(!readLine(&inputBuffer, line, 0)){ // actual read
            lineSplit = split_string(line, ',', 1);
            len = atoi(lineSplit[1]);
            memcpy(value, lineSplit[2], len);
        }
    }

    if(!strncmp(value, "pandemia", strlen("pandemia"))){
        return 0;
    }else{
        return 1;
    } 
}

void writeResponse(struct output_buffer* cmdBuffer, uint8_t response, uint8_t connIndex, uint8_t svcIndex){
   char answer[128];
   switch(response){
       case 0: 
        BLE_ANSWER(cmdBuffer->buffer, connIndex, svcIndex, 2, "OK");
        sendCommand(cmdBuffer, 0, 1500);
        sprintf(cmdBuffer->buffer, "OK\r\n");
        sendCommand(cmdBuffer, 0, 500);
        break;
       case 1:
        BLE_ANSWER(cmdBuffer->buffer, connIndex, svcIndex, 2, "OUT");
        sendCommand(cmdBuffer, 0, 1500);
        sprintf(cmdBuffer->buffer, "OUT\r\n");
        sendCommand(cmdBuffer, 0, 500);
        break;
       default:
        BLE_ANSWER(cmdBuffer->buffer, connIndex, svcIndex, 2, "system error"); 
        sendCommand(cmdBuffer, 0, 1500);
        sprintf(cmdBuffer->buffer, "system error\r\n");
        sendCommand(cmdBuffer, 0,500);
        break;
   } 
}
