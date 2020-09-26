# nvidia-xrun
These utility scripts aim to make the life easier for nvidia cards users.
It started with a revelation that bumblebee in current state offers very poor performance. This solution offers a bit more complicated procedure but offers a full GPU utilization(in terms of linux drivers)

## Usage:
  1. switch to free tty
  2. login
  3. run `nvidia-xrun`
  4. enjoy

  Currently sudo is required as the script needs to wake up GPU, modprobe the nvidia driver and perform cleanup afterwards. For this we use bbswitch.

## Setting the right bus id
Usually the 1:0:0 bus is correct. If this is not your case(you can find out through lspci or bbswitch output mesages) you can create
a conf script in /etc/X11/nvidia-xorg.conf.d to set the proper bus id

    Section "Device"
        Identifier "nvidia"
        Driver "nvidia"
        BusID "PCI:2:0:0"
    EndSection

Also this way you can adjust some nvidia settings if you encounter issues:

    Section "Screen"
        Identifier "nvidia"
        Device "nvidia"
        #  Option "AllowEmptyInitialConfiguration" "Yes"
        #  Option "UseDisplayDevice" "none"
    EndSection
