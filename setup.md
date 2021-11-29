# Run the install_all.sh

# Setting up the graphics cards:
## NVIDIA:
* 

```bash
	nvidia_package=sudo ubuntu-drivers devices | grep nvidia | grep recommend | grep ": [^\s]*" -oPh | grep "n.*" -ohP
	sudo apt install -y $nvidia_package
```
