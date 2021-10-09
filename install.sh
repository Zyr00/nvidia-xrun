mp="modprobe.d/"
md="modules-load.d/"

install -dm 555 "/etc/X11/xorg.conf.d"
install -Dm 644 nvidia-xorg.conf "/etc/X11/nvidia-xorg.conf"
install -Dm 644 nvidia-xinitrc "$HOME/.nvidia-xinitrc"
install -Dm 755 nvidia-xrun "/usr/bin/nvidia-xrun"

for i in ${mp}*; do
  install -Dm 644 "${i}"  "/etc/${mp}"
done

for i in ${md}*; do
  install -Dm 644 "${i}"  "/etc/${md}"
done
