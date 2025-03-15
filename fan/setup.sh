#!/bin/bash

echo 'Adding .service file...'
cp ./jetson_fan.service /etc/systemd/system/jetson_fan.service

echo 'Allowing executables...'
sudo chmod +x enable.sh
sudo chmod +x disable.sh

echo 'Enabling and starting service...'
sudo systemctl enable jetson_fan.service
sudo systemctl start jetson_fan.service
sudo systemctl status jetson_fan.service

echo 'Finished!'