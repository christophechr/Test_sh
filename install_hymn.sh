clear

#create assets part
mkdir ~/.assets

#get assets from github
cd ~/.assets
wget https://github.com/christophechr/ChinaOS/assets/sound.mp3

#copy assets to .china
cp -r ~/.assets/ ~/.china
rm -rf ~/.assets
cd ~/

#include media
echo alias runsound="aplay -r 2500hz ~/.china/sound.mp3" >> $HOME/.bashrc
echo runsound >> $HOME/.bashrc

#waiting end of music
echo alias waitforsound="watch -n 87" >> $HOME/.bashrc
echo waitforsound >> $HOME/.bashrc

#reload bash
echo alias reload="exec bash" >> $HOME/.bashrc
echo reload >> $HOME/.bashrc
exec bash
