#include "../include/dev_info.h"
#include <string.h>

void DeviceSerialNumber(char * sn){
    strcpy(sn, SERIAL_NUMBER);
}

void DeviceType(char * type){
    strcpy(type, MODEL);
}

void DeviceManufactureDate(char * date){
    strcpy(date, MANUFACTURE_DATE);
}