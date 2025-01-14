
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
mkdir ~/Downloads/init-ubuntu
cd ~/Downloads/init-ubuntu

wget https://raw.githubusercontent.com/vainyksi/guides/refs/heads/ubuntu-24.04/ubuntu-24.04/init-dev-env.sh
chmod +x init-dev-env.sh
./init-dev-env.sh
```


