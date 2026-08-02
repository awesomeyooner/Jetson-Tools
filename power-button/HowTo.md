# How to add Power Button to Jetson Nano

```bash
sudo apt install -y acpid

sudo acpi_listen

# Press the button
# You should see an output with
# `button/power`
```

```bash
sudo touch /etc/acpi/events/powerbtn

sudo nano /etc/acpi/events/powerbtn

# Fill with the following
event=button/power
action=/etc/acpi/powerbtn.sh
```

```bash
sudo touch /etc/acpi/powerbtn.sh

sudo nano /etc/acpi/powerbtn.sh

# Fill with the following
#!/bin/bash
/sbin/shutdown -h now "Power button pressed"
```