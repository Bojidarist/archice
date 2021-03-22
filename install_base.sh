#!/bin/sh

# Make user directories
mkdir ~/Pictures
mkdir ~/Pictures/Wallpapers
mkdir ~/Videos
mkdir ~/Downloads
mkdir ~/Music
mkdir ~/Documents

# Install terminal packages
sudo pacman -Syu vim htop git konsole xterm --noconfirm
sudo pacman -S --needed base-devel --noconfirm

# Install network packages
sudo pacman -S networkmanager --noconfirm
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service

# Install audio packages
sudo pacman -S pulseaudio --noconfirm
sudo pacman -S pulseaudio-bluetooth --noconfirm
sudo pacman -S pavucontrol --noconfirm

# Install DE packages
sudo pacman -S xorg --noconfirm
sudo pacman -S xorg-xinit --noconfirm
sudo pacman -S xorg-server-utils --noconfirm
sudo pacman -S ttf-dejavu ttf-liberation --noconfirm
sudo pacman -S openbox --noconfirm
sudo pacman -S tint2 --noconfirm
sudo pacman -S feh --noconfirm
sudo pacman -S lxappearance --noconfirm
sudo pacman -S obconf --noconfirm
sudo pacman -S thunar --noconfirm
sudo pacman -S tumbler --noconfirm
sudo pacman -S ffmpegthumbnailer --noconfirm
sudo pacman -S deepin-compressor --noconfirm

# Install system tray packages
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S volumeicon --noconfirm
sudo pacman -S synapse --noconfirm
sudo pacman -S ibus --noconfirm

# Install other packages
sudo pacman -S firefox --noconfirm
sudo pacman -S mpv --noconfirm
sudo pacman -S deepin-image-viewer --noconfirm
sudo pacman -S cmus --noconfirm
sudo pacman -S libreoffice --noconfirm
sudo pacman -S imagemagick --noconfirm
sudo pacman -S flameshot --noconfirm
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl


# Copy config files and themes
mkdir ~/.config
cp .xinitrc ~/.xinitrc
cp .XResources ~/.XResources
mkdir ~/.themes && cp -r ./Themes/* ~/.themes
mkdir ~/.icons && cp -r ./Icons/* ~/.icons
mkdir -p ~/.config/synapse && cp ./Config/Synapse/config.json ~/.config/synapse/config.json
cp -r ./Config/Tint2 ~/.config/tint2
cp -r ./Config/VolumeIcon ~/.config/volumeicon
mkdir -p ~/.config/deepin && cp -r ./Config/Deepin/* ~/.config/deepin
cp -r ./Config/Openbox ~/.config/openbox
cp -r ./Config/GTK-3.0 ~/.config/gtk-3.0
cp -r ./Config/Flameshot ~/.config/flameshot
cp -r ./Config/Thunar ~/.config
mkdir -p ~/.local/share/konsole && cp ./Config/Konsole/Archice.profile ~/.local/share/konsole/Archice.profile
cp ./Config/Konsole/konsolerc ~/.config/konsolerc
cp ./Images/james-donovan-unsplash.jpg ~/Pictures/Wallpapers/bg.jpg

# Configure mime types
mkdir -p ~/.local/share/applications
cp -r ./Config/DesktopFiles/* ~/.local/share/applications

xdg-mime default Thunar.desktop inode/directory

# End
echo "Reboot your computer to finalize changes"