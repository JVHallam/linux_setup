# Distro:
Lubuntu: ( Ubuntu 20? )
* DE: LXQT

# General Commands:
* Get the OS Details
    * cat /etc/os-release

* Run all files in a directory
    * run-parts . --regex ".*\.sh"
    * All files must have #!/bin/bash in at the top

* Reversing scroll direction:
    * gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
    * this setting does nothing

# To Do
* File layouts:
    * Create a "utility" folder for scripts
    * put picom in there
    * have a picom.conf file in config
    * have the config file copy that to the ~/.config folder
    * have the picom.sh file run with that config

* Screen tearing And graphics:
    * Get the nvidia software running
    * Make sure that the settings are configured for the card and monitor correctly

* picom on startup
    * Get the picom.sh running on startup / As a service

* General:
    * Add in SSH key for github
