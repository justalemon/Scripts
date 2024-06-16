#!/bin/bash

# Install
pacman -Sy openssh

# Enable
systemctl enable --now sshd
