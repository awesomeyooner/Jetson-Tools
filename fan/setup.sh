#!/bin/bash -e

SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

echo "Allowing executables..."
sudo chmod +x $SCRIPT_DIR/create_service.sh
sudo chmod +x $SCRIPT_DIR/enable.sh
sudo chmod +x $SCRIPT_DIR/disable.sh
echo "Done!"

# Create and load the actual service file
sudo .$SCRIPT_DIR/create_service.sh

echo "All complete!"