#include "mainLoop.h"
#include "gattInterface.h"
#include "advParser.h"


uint8_t mainLoop(struct input_buffer *inputBuffer, struct output_buffer *commandBuffer, struct output_buffer *logBuffer){
    // send init command
    ScanData scan;
    uint8_t connIndex = 0;
    uint8_t svcFound = 0;
    char line[1024];
    uint8_t svcIndex;
    strncpy(CMD_BUFFER, BLE_CLIENT_START, strlen(BLE_CLIENT_START));
    commandBuffer->lastWrite = strlen(BLE_CLIENT_START);
    
    if(!sendCommand(commandBuffer, 1, 1000)){
        sprintf(LOG_BUFFER, "Cannot init BLE client, something went wrong\n");
        logToDebugger(logBuffer, CRNL); 
    }

    // Start scanning on infinite loop
    while(1){
        // send AT command to start scan
        int found = 0;
        strncpy(CMD_BUFFER, BLE_SCAN_START, strlen(BLE_SCAN_START));
        commandBuffer->lastWrite = strlen(BLE_SCAN_START);
        
        if(!sendCommand(commandBuffer, 1, 3000)){
            sprintf(LOG_BUFFER, "Cannot scan, please try again later\n");
            logToDebugger(logBuffer, CRNL);
            return -1; 
        }


         // now we eavesdrop any interesting answer
        while(!found){
            if(!readLine(inputBuffer, line, 0)){
                scan = lookForDeviceOfInterest(line, &found);
                if(found){
                    sprintf(LOG_BUFFER, "Found device that wants to enter\n");
                    logToDebugger(logBuffer, CRNL);

                }
            }else{
                // scan again
                strncpy(CMD_BUFFER, BLE_SCAN_START, strlen(BLE_SCAN_START));
                commandBuffer->lastWrite = strlen(BLE_SCAN_START);
                
                if(!sendCommand(commandBuffer, 0, 3000)){
                    sprintf(LOG_BUFFER, "Cannot scan, please try again later\n");
                    logToDebugger(logBuffer, CRNL);
                    return -1; 
                }
            }
        }

        // device has been found, and its data have been stored in the proper data
        // structure. Time to connect

        char bleCmdTemplate[256];
        char addr[32];
        sprintf(addr, "%.2x:%.2x:%.2x:%.2x:%.2x:%.2x", scan.addr[0],
                                                scan.addr[1],
                                                scan.addr[2],
                                                scan.addr[3],
                                                scan.addr[4],
                                                scan.addr[5]);

        BLE_CONNECT_COMMAND(bleCmdTemplate, connIndex, addr, 5);
        sprintf(CMD_BUFFER, bleCmdTemplate);

        if(!sendCommand(commandBuffer, 1, 1000)){
            sprintf(LOG_BUFFER, "It seems that something went wrong during connection\nPlease try again later\n");
            logToDebugger(logBuffer, CRNL);
            continue;
        }

        // Now that we are connected, we can start to look for the service

        BLE_SERVICE_DISCOVERY_COMMAND(bleCmdTemplate, connIndex);
        sprintf(CMD_BUFFER, bleCmdTemplate);

        if(!sendCommand(commandBuffer, 0, 1000)){
            sprintf(LOG_BUFFER, "Cannot scan for services\n");
            logToDebugger(logBuffer, CRNL);
            safeExit(connIndex);
            continue;
        }

        while(!svcFound && !readLine(inputBuffer, line, 0)){
            // check that preamble is the one of the Service scan command
            int min = strlen(line) < strlen(BLE_SERVICE_DISCOVERY_RESPONSE) ? strlen(line) : strlen(BLE_SERVICE_DISCOVERY_RESPONSE);
            if(!strncmp(line, BLE_SERVICE_DISCOVERY_RESPONSE, min)){
                if(!findService(line, SERVICE, &svcIndex)){
                    svcFound = 1;
                }
            }
        }

        if(!svcFound){
            sprintf(LOG_BUFFER, "Could not find the desired service\n");
            logToDebugger(logBuffer, CRNL);
            safeExit(connIndex);
            continue;
        }else{
            // read characteristic 
            char line[128];
            if(!readChar(line, svcIndex, connIndex)){
                writeResponse(commandBuffer, 0, connIndex, svcIndex);
            }else{
                writeResponse(commandBuffer, 1, connIndex, svcIndex);
            }
            logToDebugger(logBuffer, CRNL);
        } 
        safeExit(connIndex);
    } 
}

void safeExit(uint8_t connIndex){
    BLE_DISCONN(commandBuffer.buffer, connIndex);
    sendCommand(&commandBuffer, 0, 1000);
}

// must be very careful when calling this function
// if called when no status is going to be displayed
// the system will remain stuck
