clear
#get assets from github
wget https://github.com/christophechr/ChinaOS/assets/sound.mp3

#copy assets to .china
cp -r assets/ ~/.china

#include media
echo alias runsound="aplay ~/.china/sound.mp3" >> $HOME/.bashrc
echo runsound >> $HOME/.bashrc

#waiting end of music
watch -n 87

#reload bash
exec bash
