#include "../include/dev_info.h"
#include <stdlib.h>
#include <string.h>

void DeviceSerialNumber(char * sn){
    if(sn != NULL) 
        strcpy(sn, SERIAL_NUMBER);
}

void DeviceType(char * type){
    if(type != NULL) 
        strcpy(type, MODEL);
}

void DeviceManufactureDate(char * date){
    if(date != NULL) 
        strcpy(date, MANUFACTURE_DATE);
}