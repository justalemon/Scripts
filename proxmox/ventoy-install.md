# System Hang on boot after installing with Ventoy

After installing Proxmox (tried 8.2) with Ventoy, the system will hang after after running the "Autorun". This is caused by Ventoy adding an extra boot parameter in regular mode, and then Proxmox keeping it post-install.

The parameter that needs to removed is `rdinit=/vtoy/vtoy`. You can remove this parameter by removing it from `/etc/kernel/cmdline` and then running `proxmox-boot-tool refresh`.
