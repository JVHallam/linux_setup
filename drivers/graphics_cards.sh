
# Check if it's an nvidia card
nvidia_vga=$(lspci | grep NVIDIA | grep VGA)

# If not empty
if [ -n "$nvidia_vga" ];
then
	nvidia_package=sudo ubuntu-drivers devices | grep nvidia | grep recommend | grep ": [^\s]*" -oPh | grep "n.*" -ohP
	sudo apt install -y $nvidia_package
	echo "penis"
fi
