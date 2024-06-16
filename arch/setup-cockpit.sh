#!/bin/bash

# Packages
pacman -Sy cockpit cockpit-machines cockpit-packagekit cockpit-storaged --noconfirm
paru -S cockpit-docker --noconfirm

# Enable
systemctl enable --now cockpit.socket
