# Tested Scripts:
* setup_configs.sh -> Correctly sets up vim path

# Screen and font sizes:
* xrandr - gets the size details

# Screen Tearing:
https://wiki.archlinux.org/title/Intel_graphics#Tearing
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo nano /etc/X11/xorg.conf.d/20-intel.conf

Section "Device"
   Identifier  "Intel Graphics"
   Driver      "intel"
   Option      "TearFree"    "true"
EndSection

What about vsync?
