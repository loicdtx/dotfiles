#!/bin/bash

sudo apt update
sudo apt install curl -y
# Add ppas
# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Pgadmin
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

sudo apt update

sudo apt install bat -y
sudo apt install build-essential -y
sudo apt install ca-certificates -y
sudo apt install cmake -y
sudo apt install csvkit -y
sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo apt install diffutils -y
sudo apt install gcc -y
sudo apt install gimp -y
sudo apt install git -y
sudo apt install git-lfs -y
sudo apt install google-chrome-stable -y
sudo apt install gnupg -y
sudo apt install graphviz -y
sudo apt install gthumb -y
sudo apt install gzip -y
sudo apt install htop -y
sudo apt install imagemagick -y
sudo apt install inkscape -y
sudo apt install libgdal-dev -y
sudo apt install libgeos-dev -y
sudo apt install libmagick++-dev -y
sudo apt install libproj-dev -y
sudo apt install libsecret-1-0 -y
sudo apt install libsecret-1-dev -y
sudo apt install libspatialindex-dev -y
sudo apt install libspatialite-dev -y
sudo apt install libudunits2-dev -y
sudo apt install libfontconfig1-dev -y
sudo apt install lsb-release -y
sudo apt install mendeleydesktop -y
sudo apt install ncview -y
sudo apt install netcdf-bin -y
sudo apt install nmap -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install p7zip-full -y
sudo apt install p7zip-rar -y
sudo apt install pandoc -y
sudo apt install pgadmin4-desktop -y
sudo apt install postgis -y
sudo apt install postgresql -y
sudo apt install postgresql-12 -y
sudo apt install postgresql-client-12 -y
sudo apt install python3-dev -y
sudo apt install qgis -y
sudo apt install r-base -y
sudo apt install r-base-dev -y
sudo apt install spatialite-bin -y
sudo apt install sqlitebrowser -y
sudo apt install sublime-text -y
sudo apt install texlive -y
sudo apt install texlive-latex-extra -y
sudo apt install vim -y
sudo apt install virtualenv -y
sudo apt install virtualenvwrapper -y
sudo apt install xournal -y
sudo apt install zoom -y
sudo apt install zsh -y

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker dutrilo
# Docker compose ?

# Rstudio
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2021.09.2-382-amd64.deb
sudo gdebi rstudio-server-2021.09.2-382-amd64.deb

sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret

# Vim stuff
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
wget https://raw.githubusercontent.com/loicdtx/dotfiles/master/.vimrc -P ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py

# Snap
sudo snap install telegram-desktop
sudo snap install spotify
