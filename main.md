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
* Laptop:
    * Update my default font size, I have to squint to see this shit
    * Handle the screen tearing
    * Get all the work stuff working

* Desktop:
    * Validate that the above works
