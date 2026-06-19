#!/bin/bash

SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

echo "Allowing executables..."
sudo chmod +x create_service.sh
sudo chmod +x enable.sh
sudo chmod +x disable.sh
echo "Done!"

# Create and load the actual service file
sudo ./$SCRIPT_DIR/create_service.sh

echo "All complete!"