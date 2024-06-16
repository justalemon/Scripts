#!/bin/bash

# Packages 
pacman -Sy docker docker-compose

# Enable
systemctl enable --now docker

# Add Permissions
usermod -aG docker $(whoami)
