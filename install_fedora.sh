#!/bin/bash

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf -y config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf -y copr enable neteler/GDAL
sudo dnf -y copr enable neteler/QGIS-2.18-Las-Palmas


sudo dnf -y update

# Terminal 
sudo dnf install -y git subversion curl
sudo dnf install -y htop espeak tmux autojump
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Python
sudo dnf install -y python3
sudo dnf install -y python-pip python-virtualenv
sudo pip install virtualenvwrapper
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.zshrc
echo 'alias python=python3' >> ~/.zshrc
echo 'export VIRTUALENV_PYTHON=/usr/bin/python3' >> ~/.zshrc

# Desktop
sudo dnf install -y gnome-tweak-tool
# sudo dnf search gnome-shell-extension
mkdir .themes
wget https://github.com/anmoljagetia/Flatabulous/archive/master.zip
unzip master.zip -d .themes
sudo dnf install -y https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm

# GIS
sudo dnf install -y gdal gdal-python gdal-devel proj-devel proj-epsg proj-nad geos-devel
sudo dnf install -y udunits2-devel



# Install and setup sublime
sudo dnf install -y sublime-text
wget --no-check-certificate https://sublime.wbond.net/Package%20Control.sublime-package -P ~/.config/sublime-text-3/Installed\ Packages/
# Add dictionaries
git clone https://github.com/titoBouzout/Dictionaries.git ~/.config/sublime-text-3/Packages/
# Install "Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git", "gitgutter", "side bar", "table editor",\
# "virtualenv", "Evernote", "boxy theme", "Dockerfile Syntax Highlighting"
# The line below doesn't work well
# echo '{"installed_packages":["Git​Gutter", "La​Te​XTools", "Sublime​REPL", "Monokai Extended", "Git"]}' > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings

# Others
sudo dnf install -y chromium

# text
sudo dnf install -y pandoc
sudo dnf install -y texlive-scheme-basic

# Multimedia
sudo dnf install -y vlc
# Spotify/popcorntime

# Networking
sudo dnf install -y openvpn easy-rsa

# Graphics
sudo dnf install -y imagemagick gthumb inkscape

# R and rstudio
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo dnf update
sudo dnf install -y r-base r-base-dev
sudo dnf install -y libcairo-dev

sudo dnf install -y gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb
sudo gdebi -n rstudio-0.99.903-amd64.deb
rm rstudio-0.99.903-amd64.deb


## Postgis
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo dnf update
sudo dnf install -y postgresql-9.5 pgadmin3 postgresql-contrib
sudo dnf install -y postgresql-9.5-postgis-2.2 pgadmin3 postgis


sudo dnf install -y ultra-flat-icons

# For google integration
sudo dnf install -y gnome-control-center gnome-online-accounts

# Git gui
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# Vim stuff
sudo dnf -y install build-essential cmake
sudo dnf -y install python-dev python3-dev
sudo dnf -y install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
wget https://raw.githubusercontent.com/loicdtx/dotfiles/master/.vimrc -P ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py

sudo dnf -fy install
