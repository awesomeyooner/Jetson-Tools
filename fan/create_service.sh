#!/bin/bash

# Directory of .service files
SYSTEMD_DIR="/etc/systemd/system"

SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

SERVICE_NAME="jetson_fan.service"

echo "Creating ${SERVICE_NAME} at ${SCRIPT_DIR}..."

# Create the actual file
touch "${SCRIPT_DIR}/${SERVICE_NAME}"

# Populate the file contents
cat << EOF > $SCRIPT_DIR/$SERVICE_NAME
[Unit]
Description=Startup script to turn on the PWM fan

[Service]
Type=oneshot
ExecStart=$SCRIPT_DIR/enable.sh
ExecStop=$SCRIPT_DIR/disable.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

echo "Done!"

echo "Copying file to systemd path..."

# Copy the file to the systemd path
cp ${SCRIPT_DIR}/${SERVICE_NAME} ${SYSTEMD_DIR}/${SERVICE_NAME}

echo "Done!"

echo "Reloading Systemd-Daemon..."
sudo systemctl daemon-reload
echo "Done!"

echo "Enabling service..."
sudo systemctl enable jetson_fan.service
sudo systemctl start jetson_fan.service
sudo systemctl status jetson_fan.service
echo "Done!"

