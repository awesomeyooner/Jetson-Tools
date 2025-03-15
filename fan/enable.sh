#!/bin/bash

# Overclock
sudo /usr/bin/jetson_clocks

# Turn on fan
sudo sh -c 'echo 255 > /sys/devices/pwm-fan/target_pwm'