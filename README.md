/cockpit_podman.png
# Podman & Cockpit One Click Install Script
One click install script for installing Cockpit and dependencies for Podman, SELinux and Networking on OpenSUSE

This script installs Cockpit and the specified extensions, and it ensures that the necessary services are started and the firewall is configured. Please note that you can customize the list of extensions and packages to meet your specific server management needs.

I use this script to quickly spin up OpenSUSE based Podman conatiner systems with Cockpit Web UI. Feel free to use as you want.

## What does the script install by default?

Packages:
- `cockpit` Cockpit Web UI & Service
- `cockpit-storaged` The Storage management extension
- `cockpit-networkmanager` Network Manager extension
- `cockpit-machines` Virtual Machines management extension
- `cockpit-podman` Podman containers management extension
- `cockpit-selinux` SELinux management extension
- `cockpit-tukit` Transactional Update kit extension from OpenSUSE

## What else does the script do?
The script also adds firewall rules for cockpit, creates and runs the websocket for the service. After which you should have the service automatically start on boot.

## How to use?
Download the script (Cockpit_OCIS.sh) and then run `chmod +x Cockpit_OCIS.sh` and then run the file with the `./Cockpit_OCIS.sh` command, from within the same directory.
