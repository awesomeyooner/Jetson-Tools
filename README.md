# Jetson-Tools
A place to store helpful tools for the NVIDIA Jetson Nano

## Features

The main feature is to create a `.service` file to automatically apply overclocks and enable the PWM fan

The name of the service is `jetson_fan`

```bash
$ sudo chmod +x /path/to/Jetson-Tools/fan/setup.sh
$ sudo ./path/to/Jetson-Tools/fan/setup.sh
```

`setup.sh` is the all-in-one script that creates the `.service` file and enables the service

You can check the status with

```bash
$ sudo systemctl status jetson_fan
```