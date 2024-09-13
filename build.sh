
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
cd scripts

python3 Device_Generator.py "$SERIAL_NUMBER" "$MODEL"
python3 html_converter.py

cd ..
cd ..

cd build
mkdir -p "$BUILD_DIR"

sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/main.c" -o "$BUILD_DIR/main.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/utils.c" -o "$BUILD_DIR/utils.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/dev_info.c" -o "$BUILD_DIR/dev_info.rel"
sdcc -mmcs51 -c -I"$INC_DIR" "$SRC_DIR/WiFi_Module.c" -o "$BUILD_DIR/WiFi_Module.rel"

sdcc -mmcs51 "$BUILD_DIR/main.rel" "$BUILD_DIR/utils.rel" "$BUILD_DIR/dev_info.rel" "$BUILD_DIR/WiFi_Module.rel" -o "$BUILD_DIR/main.ihx"

packihx "$BUILD_DIR/main.ihx" > "$BUILD_DIR/main.hex"
srec_cat "$BUILD_DIR/main.hex" -Intel -o "output.bin" -Binary
python3 -m ch55xtool -f output.bin
rm -rf $BUILD_DIR
