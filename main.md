# Distro:
Ubuntu: 18.04.3 LTS ( Lubuntu )
* DE: LXDE

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
* Screen tearing And graphics:
    * Get the nvidia software running
    * Make sure that the settings are configured for the card and monitor correctly
    * Get the picom shit running on startup / As a service

* General:
    * Add in SSH key for github
