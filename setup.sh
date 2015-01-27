#!/bin/bash 

# Disable IPv6
#sudo echo "#disable ipv6" | sudo tee -a /etc/sysctl.conf
#sudo echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
#sudo echo "net.ipv6.conf.default.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
#sudo echo "net.ipv6.conf.lo.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf

#Adding useful repositories
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:synapse-core/testing -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo add-apt-repository ppa:n-muench/programs-ppa -y


sudo apt-get update
sudo apt-get install gdebi git numix-gtk-theme numix-icon-theme-circle qbittorrent typecatcher redshift synapse atom deluge curl zsh smplayer p7zip p7zip-full p7zip-rar ubuntu-restricted-extras arduino arduino-core arduino-mk sublime-text-installer synaptic spotify-client nodejs chromium-browser typecatcher gimp calibre -y
#sudo apt-get install ttf-mscorefonts-installer --quiet -y

sudo apt-get dist-upgrade -y 

# Setting oh-my-zsh (zsh being an alternative to bash) https://github.com/robbyrussell/oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash
chsh -s $(which zsh) $(whoami)

# Git configuration
git config --global user.email "edmeral.aissam@gmail.com"
git config --global user.name "Aissam BELHACHMI"
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global alias.st 'status'
git config --global alias.ci 'commit'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'

# Configuring arduino (http://stackoverflow.com/a/20593949)
sudo chmod a+rw /dev/ttyACM0
sudo gpasswd -a $(whoami) dialout





