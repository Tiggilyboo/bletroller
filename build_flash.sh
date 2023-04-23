#!/bin/bash

# Compile binary
cargo objcopy --release -- -O binary bletroller.bin

# Flash it
sudo cargo blflash --release --initial-baud-rate 1000000 --baud-rate 1000000 --port /dev/ttyUSB0
