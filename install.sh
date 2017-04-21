#!/bin/bash

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable


sudo apt-get update

sudo apt-get install -y python3
sudo apt-get install -y guake
sudo apt-get install -y git subversion curl
sudo apt-get install -y htop espeak
sudo apt-get install -y zsh
sudo apt-get install -y fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install -y tmux autojump

# Install and setup sublime
sudo apt-get install -y sublime-text-installer
wget --no-check-certificate https://sublime.wbond.net/Package%20Control.sublime-package -P ~/.config/sublime-text-3/Installed\ Packages/
# Add dictionaries
git clone https://github.com/titoBouzout/Dictionaries.git ~/.config/sublime-text-3/Packages/
# Install "Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git", "gitgutter", "side bar", "table editor",\
# "virtualenv", "Evernote", "boxy theme", "Dockerfile Syntax Highlighting"
# The line below doesn't work well
# echo '{"installed_packages":["Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git"]}' > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings


sudo apt-get install -y chromium-browser
sudo apt-get install -y qgis libgdal-dev libgeos++-dev 
sudo apt-get install -y texlive-full
sudo apt-get install -y pandoc
sudo apt-get install -y vlc
sudo apt-get install -y network-manager-vpnc network-manager-vpnc-gnome
sudo apt-get install -y imagemagick gthumb inkscape

# R and rstudio
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y r-base r-base-dev
sudo apt-get install -y libcairo-dev

sudo apt-get install -y gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb
sudo gdebi -n rstudio-0.99.903-amd64.deb
rm rstudio-0.99.903-amd64.deb

# Python
sudo apt-get install -y python-pip python-scipy python-numpy python-virtualenv
sudo pip install virtualenvwrapper
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.zshrc

# Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get install -y dropbox


## Postgis
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-9.5 pgadmin3 postgresql-contrib
sudo apt-get install -y postgresql-9.5-postgis-2.2 pgadmin3 postgis

# Flatabulous theme
wget http://archive.getdeb.net/ubuntu/pool/apps/u/ubuntu-tweak/ubuntu-tweak_0.8.7-1~getdeb2~xenial_all.deb && sudo dpkg -i ubuntu-tweak_0.8.7-1~getdeb2~xenial_all.deb
wget https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb && sudo dpkg -i Flatabulous-Theme.deb
sudo add-apt-repository -y ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y ultra-flat-icons

# For google integration
sudo apt-get install -y gnome-control-center gnome-online-accounts

# Git gui
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# Vim stuff
sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev
sudo apt-get -y install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
wget https://raw.githubusercontent.com/loicdtx/dotfiles/master/.vimrc -P ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py

sudo apt-get -fy install
