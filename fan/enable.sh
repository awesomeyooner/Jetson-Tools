#!/bin/bash

# Overclock
sudo /usr/bin/jetson_clocks

# Enable MAXN Mode
sudo nvpmodel -m 0

# Turn on fan
sudo sh -c 'echo 255 > /sys/devices/pwm-fan/target_pwm'