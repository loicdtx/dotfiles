#!/bin/bash

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable


sudo apt-get update

sudo apt-get install guake
sudo apt-get install git subversion
sudo apt-get install htop espeak
sudo apt-get install zsh
sudo apt-get install fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install tmux autojump

# Install and setup sublime
sudo apt-get install sublime-text-installer
wget --no-check-certificate https://sublime.wbond.net/Package%20Control.sublime-package -P ~/.config/sublime-text-3/Installed\ Packages/
# Install "Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git"
# The line below doesn't work well
# echo '{"installed_packages":["Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git"]}' > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings


sudo apt-get install chromium-browser
sudo add-apt install qgis libgdal-dev 
sudo apt-get install texlive-full
sudo apt-get install pandoc
sudo apt-get install vlc
sudo apt-get install network-manager-vpnc network-manager-vpnc-gnome
sudo apt-get install imagemagick gthumb inkscape

# R and rstudio
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base r-base-dev

sudo apt-get install gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb
sudo gdebi -n rstudio-0.99.903-amd64.deb
rm rstudio-0.99.903-amd64.deb

# Python
sudo apt-get install python-pip python-scipy python-numpy python-virtualenv
sudo pip install virtualenvwrapper

# Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get install dropbox
