clear
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

#update packages
dnf -y update

#install xwallpaper
dnf -y install xwallpaper

#create .china directory
mkdir ~/.china
cd ~/.china

#get background
wget https://github.com/christophechr/ChinaOS/assets/background.png
xwallpaper --zoom background.png

#install hymn
wget https://github.com/christophechr/ChinaOS/install_hymn.sh
