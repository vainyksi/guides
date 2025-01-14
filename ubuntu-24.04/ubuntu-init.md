
Initialize Ubuntu 24.04 development environment and basic tools.


#### Basic Ubuntu updates
```sh
lsb_release -a
uname -a
sudo apt update
sudo apt list --upgradable
sudo apt -y dist-upgrade
sudo apt -y install curl
```

#### Get & run initialization script
```sh
sudo apt -y install git gitk

mkdir ~/Downloads/init-ubuntu
cd ~/Downloads/init-ubuntu

#TODO reference specific file within public repository, so it is not needed to clone the whole repository
git clone https://github.com/vainyksi/guides.git
cd guides
git checkout ubuntu-24.04
./init-dev-env.sh
```


