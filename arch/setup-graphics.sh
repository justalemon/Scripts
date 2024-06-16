#!/bin/bash

RED="\033[0;31m"
RESET="\033[0m"
PACKAGES=()

if lspci | grep -q "VGA compatible controller: Advanced Micro Devices, Inc."; then
    echo -e "Adding packages for ${RED}AMD${RESET}"
    PACKAGES+=(mesa)
    PACKAGES+=(lib32-mesa)
    PACKAGES+=(xf86-video-amdgpu)
    PACKAGEs+=(vulkan-radeon)
    PACKAGES+=(lib32-vulkan-radeon)
    PACKAGES+=(libva-mesa-driver)
    PACKAGES+=(lib32-libva-mesa-driver)
fi

pacman -Sy "${PACKAGES[@]}" --needed --noconfirm
