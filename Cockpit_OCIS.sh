#!/bin/bash

# Update the package repository and upgrade installed packages
sudo zypper refresh
sudo zypper up

# Install Cockpit
sudo zypper in cockpit

# Install Cockpit extensions
sudo zypper in cockpit-storaged      # Storage management extension
sudo zypper in cockpit-networkmanager # Network Manager extension
sudo zypper in cockpit-machines      # Virtual Machines management extension
sudo zypper in cockpit-podman         # Podman containers management extension
sudo zypper in cockpit-selinux       # SELinux management extension
sudo zypper in cockpit-tukit         # Transactional Update kit extension

# Start and enable the Cockpit service
sudo systemctl enable --now cockpit.socket

# Open the firewall port for Cockpit (if it's not open)
sudo firewall-cmd --permanent --add-service=cockpit
sudo firewall-cmd --reload

# Enable and start the cockpit-ws service for WebSocket support (required for some extensions)
sudo systemctl enable --now cockpit-ws

echo "Cockpit and its extensions have been successfully installed."

