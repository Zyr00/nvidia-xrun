install -dm 555 "/etc/X11/xorg.conf.d"
install -Dm 644 10-nvidia.conf "/etc/X11/nvidia-xorg.conf"
install -Dm 644 nvidia-xinitrc "$HOME/.nvidia-xinitrc"
install -Dm 755 nvidia-xrun "/usr/bin/nvidia-xrun"
