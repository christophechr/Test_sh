clear
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

#update package
pacman -Suy

#install sox media player
pacman -S sox

#include media