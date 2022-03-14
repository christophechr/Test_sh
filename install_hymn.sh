clear
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

#install sox media player
dnf -y install sox

#get assets from github
wget https://github.com/christophechr/ChinaOS/assets/sound.mp3

#copy assets to .china
cp -r assets/ ~/.china

#include media
echo alias runsound="sox ~/.china/sound.mp3" >> $HOME/.bashrc
echo runsound >> $HOME/.bashrc

#reload bash
exec bash
