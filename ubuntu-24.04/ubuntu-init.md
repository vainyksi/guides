
Initialize Ubuntu 24.04 development environment and basic tools.


## Basic Ubuntu updates
```sh
lsb_release -a
uname -a
sudo apt update
sudo apt list --upgradable
sudo apt -y dist-upgrade
sudo apt -y install curl
```

## Get & run initialization script
```sh
mkdir ~/Downloads/init-ubuntu
cd ~/Downloads/init-ubuntu

wget https://raw.githubusercontent.com/vainyksi/guides/refs/heads/ubuntu-24.04/ubuntu-24.04/init-dev-env.sh
chmod +x init-dev-env.sh
./init-dev-env.sh
```

## Steps after development environment initialization

#### Configure chrome to enable selection of multiple tabs

https://askubuntu.com/questions/1016945/cant-select-multiple-tabs-in-chrome

use `Classic` theme instead of the default `GTK` theme
change the theme settings in chrome://settings/appearance

## Smartcard Notes

**!!!=== work-in-progress ===!!!**

#### Usefull Commands for smartcard reader
```
pcsc_scan
```
```
pkcs15-tool --list-certificates
```
```
sudo systemctl status pcscd.service
```
```
lsusb | grep Smartcard
```

usefull tools:
```
pcsc_scan
p11-kit
pkcs15-tool
p11tool
```

