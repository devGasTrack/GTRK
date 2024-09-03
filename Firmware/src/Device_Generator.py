import time
import os
import argparse

def generate_dev_settings(SerialNumber,Model):
    try:
        with open("../include/DevSettings.h", 'w') as file:
            unique_id = time.strftime('%Y%m%d_%H%M%S', time.gmtime())
            file.write(f"#ifndef _DEV_SETTINGS_{unique_id}\n")
            file.write(f"#define _DEV_SETTINGS_{unique_id}\n")
            file.write(f'\t#define SERIAL_NUMBER "{SerialNumber}"\n')
            file.write(f'\t#define MODEL "{Model}"\n')
            file.write(f'\t#define MANUFACTURE_DATE {unique_id}\n')
            file.write("#endif\n") 
        print(f"Device Settings has been created successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate DevSettings.h with provided parameters.")
    parser.add_argument("serial_number", type=str, help="The serial number to include in the settings.")
    parser.add_argument("model", type=str, help="The model to include in the settings.")
    
    args = parser.parse_args()
    generate_dev_settings(args.serial_number, args.model)