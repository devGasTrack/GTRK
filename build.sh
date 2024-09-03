
SRC_DIR="../Firmware/src"
INC_DIR="../include"
BUILD_DIR="../build/build_files"

SERIAL_NUMBER="$1"
MODEL="$2"

if [ -z "$SERIAL_NUMBER" ] || [ -z "$MODEL" ]; then
    echo "Usage: $0 <SerialNumber> <Model>"
    exit 1
fi

cd Firmware
cd src

python3 Device_Generator.py "$SERIAL_NUMBER" "$MODEL"

cd ..
cd ..

cd build
mkdir -p "$BUILD_DIR"

sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/main.c" -o "$BUILD_DIR/main.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/utils.c" -o "$BUILD_DIR/utils.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/dev_info.c" -o "$BUILD_DIR/dev_info.rel"

sdcc -mmcs51 "$BUILD_DIR/main.rel" "$BUILD_DIR/utils.rel" "$BUILD_DIR/dev_info.rel" -o "$BUILD_DIR/main.ihx"

packihx "$BUILD_DIR/main.ihx" > "$BUILD_DIR/main.hex"
srec_cat "$BUILD_DIR/main.hex" -Intel -o "output.bin" -Binary
rm -rf $BUILD_DIR
