after install

- set terminal window size: 160x25
- `sudo apt update` `sudo apt dist-upgrade`
- install wifi driver
	- https://github.com/RinCat/RTL88x2BU-Linux-Driver

	- https://tutorialforlinux.com/2022/01/12/realtek-rtl8822bu-driver-ubuntu-22-04-installation-step-by-step-guide/2/
	- https://tutorialforlinux.com/2022/01/12/how-to-add-realtek-rtl8822bu-driver-ppa-for-ubuntu-based-systems/
	- `sudo add-apt-repository ppa:kelebek333/kablosuz`
	- `sudo apt install rtl8822bu-dkms`
	

### preapre dev environment

```
mkdir ~/apps
mkdir ~/apps/managedByAppImageLauncher

mkdir ~/bin
# cp -av dev-environmment/bin/* ~/bin/
ln -s ~/apps/idea/bin/idea.sh ~/bin/idea
ln -s ~/apps/Logseq/Logseq-linux-x64-0.9.13.AppImage ~/bin/logseq
ln -s ~/apps/apache-maven/bin/mvn ~/bin/mvn
ln -s ~/apps/obsidian/Obsidian-1.4.16.AppImage ~/bin/obsidian


mkdir ~/projects
mkdir ~/VMs
```

