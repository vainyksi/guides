---
aliases: ubuntu-log
---

-
-
- Co potrebujem nastavit/nainstalovat na ciste ubuntu?
	- **update this list when configuring new system and something is missing**
	- software needed
		- to install:
			- htop
			- dropbox
			- tweak tool
			- gnome extensions
				- GTile to arrange windows
					- https://extensions.gnome.org/extension/28/gtile/
				- sound device chooser to chose sound devices
					- https://extensions.gnome.org/extension/906/sound-output-device-chooser/
				- clipboard history to save text copy-pasted
					- https://extensions.gnome.org/extension/779/clipboard-indicator/
			- meld
			- chrome
			- virtualbox
				- also enable usb-sharing -> ((644cff88-e945-464b-a2e6-36e8bd64d2ee))
				- see other notes in [[virtual-box]]
			- spotify
			- gimp
			- grub customizer
			- ~~wifi usb adapter (TP-LINK)~~
			  collapsed:: true
				- see how ((644cff88-45a5-421a-9bca-76dbfcfc3724))
				- -> not needed, as I have already new wifi card installed
			- vlc
			- git & gitk
			- sublime-text
				- https://www.sublimetext.com/docs/linux_repositories.html
				- ```
				  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
				  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
				  sudo apt-get update
				  sudo apt-get install sublime-text
				  ```
			- gaming
				- boosteroid
				- parsec
		- `.AppImage`s or unpacked archives:
			- logseq
			- Intellij Idea
				- maven helper
			- maven
			- discord
			- freecad & freecad asm3
			- obsidian
			- serviio
	- custom config
		- gnome tweaks
			- do not Suspend when laptop lid closed (should be provided by autostarted scripts)
		- `bin` directory with links to executable apps
			- *(check if the `wifi-install.sh` script is still needed)*
	- move data files from previous system's home
		- `bin`
		- `apps`
		- `Documents/`
		- `Downloads/` (clean out what is not needed anymore, categorize what stays)
		- `projects/`
		- `Templates/`
		- `.config`
			- `autostart`
			- `discord`
			- `obsidian`
			- `rmapi`
			- `sublime-text`
			- `google-chrome`
			- `JetBrains`
		- `.local/share/applications`
		- `.local/share/gnome-shell/extensions`
		- `.local/share/JetBrains/`
		- `.logseq/`
		- `.ssh/`
		- `.gitconfig`
		- `workspace`
		-
		- custom (most probably one-time):
			- `data-linux` - data to backup
			- `Libation` - audible books
			- `Pictures` - pictures not archived
			-
	-
	-
	-
	- custom fixes from ubuntu 20.04
		- if bluetooth headphones does not sound clearly (when it is unlistenable), it helped to install `pavucontrol`
			- ```
			  sudo apt-get install pavucontrol
			  ```
			- unfortunately, not every time - on ubuntu 20.04 it needed a restart or two, too
-
- the log what I changed or add recently is kept under refernece #ubuntu-log
-
-