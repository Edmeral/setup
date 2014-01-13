#!/bin/bash 

#Disable ipv-
echo "#disable ipv6" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf

#Adding useful repositories
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
#sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo add-apt-repository ppa:ubuntu-wine/ppa ppa:chris-lea/node.js -y

sudo apt-get update

sudo apt-get install zsh smplayer firefox ubuntu-restricted-extras sublime-text-installer synaptic spotify-client nodejs -y

#Setting oh-my-zsh (zsh being an alternative to bash) https://github.com/robbyrussell/oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash
sudo chsh -s $(which zsh) $(whoami)





