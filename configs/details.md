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

To figure out what to put here:
lspci | grep VGA

## NVidia Graphics cards:
# Picom, to handle the composite stuff and vsync shit

* Dependencies:
    * sudo apt install -y libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

* requires: sudo apt get install -y gcc python3 meson ninja-build cmake
 
* Create a "compiled_from_source" repo in Docuements/Programming
    * Then you clone picom here

* buildling and installing
    * in the root
    * git submodule update --init --recursive
    * meson --buildtype=release . build
    * ninja -C build
    * ninja -C build install

* picom.conf
    * Setting:
        * vsync = true;
        * backend="glx";
    * doesn't work
        * ~/.config/picom/picom.conf

    * trying ~/.config/picom.conf

* Picom is installed to /usr/local/bin

* Need to get picom running at startup
* picom --experimental-backends

* Making picom a service:
    * /etc/systemd/system/picom.service

* sudo systemctl start picom 
* sudo systemctl status picom 
