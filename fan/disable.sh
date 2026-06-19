#!/bin/bash

# Overclock
sudo /usr/bin/jetson_clocks

# Enable MAXN Mode
sudo nvpmodel -m 0

# Turn off fan
sudo sh -c 'echo 0 > /sys/devices/pwm-fan/target_pwm'