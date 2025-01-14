#!/bin/bash

lsb_release -a
uname -a
sudo apt update
sudo apt list --upgradable
sudo apt -y dist-upgrade
sudo apt -y install curl


sudo apt -y install git gitk

mkdir ~/Downloads/init-ubuntu
cd ~/Downloads/init-ubuntu

#### create a directory for initialization, where all the installation files will be downloaded. This directory can be removed after the initialization, without polluting the system with installation packages.
mkdir init-workspace
cd init-workspace


--------------------------------------


#### set terminal window width to 180
profile=$(gsettings get org.gnome.Terminal.ProfilesList default) # get default profile
profile=${profile:1:-1} # remove leading and trailing single quotes
dconf write /org/gnome/terminal/legacy/profiles:/:$profile/default-size-columns "180" # set terminal window width for deafult profile
# dconf reset /org/gnome/terminal/legacy/profiles:/:$profile/default-size-columns # reset terminal window width for default profile




# initialize development environment

mkdir ~/apps
mkdir ~/apps/managedByAppImageLauncher
mkdir ~/projects
mkdir ~/VMs



#### prepare .desktop files
cp dev-environmment/.local-share-applications/*.desktop ~/.local/share/applications/
#TODO make this step independent of git repository
sed -i 's@{HOME_DIR}@'"$HOME"'@g' ~/.local/share/applications/*.desktop


#### prepare commands to run common apps
mkdir ~/bin
# cp -av dev-environmment/bin/* ~/bin/
ln -s ~/apps/idea/bin/idea.sh ~/bin/idea
ln -s ~/apps/Logseq/Logseq-linux-x64-0.9.13.AppImage ~/bin/logseq
ln -s ~/apps/apache-maven/bin/mvn ~/bin/mvn
ln -s ~/apps/obsidian/Obsidian-1.4.16.AppImage ~/bin/obsidian
#TODO actual apps not included


#### install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
sudo chmod -v 0644 /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo chmod 0644 /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


#### set ubuntu worksapces spann across all displays (not only the primary)
gsettings set org.gnome.mutter workspaces-only-on-primary false


#### set ubuntu clock to show seconds & weekday
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true


#### install Virtualbox 7.1.4
wget https://download.virtualbox.org/virtualbox/7.1.4/virtualbox-7.1_7.1.4-165100~Ubuntu~noble_amd64.deb
wget https://download.virtualbox.org/virtualbox/7.1.4/Oracle_VirtualBox_Extension_Pack-7.1.4.vbox-extpack
chmod +x virtualbox-7.1_7.1.4-165100~Ubuntu~noble_amd64.deb
sudo dpkg -i virtualbox-7.1_7.1.4-165100~Ubuntu~noble_amd64.deb
sudo apt install -y -f
sudo usermod -a -G vboxusers z004vxtz
#TODO needs restart to register MOKs

# extension pack needs to accept license
VBoxManage extpack install --replace Oracle_VirtualBox_Extension_Pack-7.1.4.vbox-extpack

# setup automatic update via apt
sudo bash -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" > /etc/apt/sources.list.d/virtualbox.list'
sudo chmod 644 /etc/apt/sources.list.d/virtualbox.list

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor
sudo chmod 644 /usr/share/keyrings/oracle-virtualbox-2016.gpg


#### Add template for an empty file for nautilus context-menu
touch ~/Templates/"New File"


#### install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
chmod +x google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb 
sudo apt install -y -f


#### Install Gnome Tweak tools & Gnome extensions manager
sudo apt-get install -y chrome-gnome-shell gnome-tweaks gnome-shell-extension-manager


#### Install PDF editor
wget https://code-industry.net/public/master-pdf-editor-5.9.86-qt5.x86_64.deb
sudo dpkg -i master-pdf-editor-5.9.84-qt5.x86_64.deb


#### Setup Spotify
sudo apt install -y curl
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
sudo chmod 644 /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo chmod 644 /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

--------------------------------------

# Initialize Development tools

sudo apt -y install git gitk

