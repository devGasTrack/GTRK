#!/bin/bash

# Define directories
SRC_DIR="../Firmware/src"
INC_DIR="../include"
BUILD_DIR="../build/build_files"

# Create build directory if it doesn't exist
cd build
mkdir -p "$BUILD_DIR"

# Compile source files into object files
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/main.c" -o "$BUILD_DIR/main.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/utils.c" -o "$BUILD_DIR/utils.rel"

# Link object files
sdcc -mmcs51 "$BUILD_DIR/main.rel" "$BUILD_DIR/utils.rel" -o "$BUILD_DIR/main.ihx"

# Convert to HEX file
packihx "$BUILD_DIR/main.ihx" > "$BUILD_DIR/main.hex"
srec_cat "$BUILD_DIR/main.hex" -Intel -o "output.bin" -Binary
rm -rf $BUILD_DIR
