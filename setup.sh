#!/bin/bash 

# Disable IPv6 (run "cat /proc/sys/net/ipv6/conf/all/disable_ipv6" to test: 1 => disabled)
sudo bash -c "echo '#disable ipv6' >> /etc/sysctl.conf"
sudo bash -c "echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> /etc/sysctl.conf"
sudo bash -c "echo 'net.ipv6.conf.default.disable_ipv6 = 1' >> /etc/sysctl.conf"
sudo bash -c "echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> /etc/sysctl.conf"

# Configuring swappiness
sudo bash -c "echo 'vm.swappiness = 5' >> /etc/sysctl.conf"

# Adding useful repositories
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:synapse-core/testing -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo add-apt-repository ppa:n-muench/programs-ppa -y

curl -sL https://deb.nodesource.com/setup | sudo bash -

sudo apt-get install gdebi git numix-gtk-theme numix-icon-theme-circle qbittorrent typecatcher redshift synapse atom deluge curl zsh smplayer p7zip p7zip-full p7zip-rar ubuntu-restricted-extras arduino arduino-core arduino-mk sublime-text-installer synaptic spotify-client chromium-browser typecatcher gimp calibre audacious nautilus-open-terminal sox nodejs xclip gnome-shell-pomodoro python-pip gparted android-tools-fastboot android-tools-adb -y

sudo apt-get upgrade -y 

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
git config core.fileMode false
git config --global push.default simple

# Changing window button layout
gsettings set org.gnome.shell.overrides button-layout :minimize,close

# Configuring arduino (http://stackoverflow.com/a/20593949)
sudo chmod a+rw /dev/ttyACM0
sudo gpasswd -a $(whoami) dialout





