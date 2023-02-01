#!/usr/bin/env bash

read -e -p "are you using nix os? [Y or N]" choice

[[ "$choice" == [Yy]* ]] && echo "skipping setting up nix" || sh <(curl -L https://nixos.org/nix/install) --daemon 

sleep 5

reset

nix-env --install zsh keepassxc kdesu kde-cli-tools scrot ulauncher github-desktop npm kdeconnect-kde kdenlive k3b virt-manager qemu ovmf libvirt dnsmasq feh swtpm meson gparted cmake kitty topgrade htop neovim helix vimplugins-vim-plug vscodium handbrake redshift spotify wireshark qbittorrent ferdi goxel bottles librewolf google-chrome brave rawtherapee celluloid audacity darktable inkscape gimp blender discord filezilla dosbox tor protonup-ng thunderbird wine gnome.nautilus signal-desktop flatpak

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install libdvdcss

flatpak install flathub com.github.tchx84.Flatseal com.obsproject.Studio/x86_64/stable

cd $HOME

git clone https://github.com/bevyengine/bevy

cd bevy

git checkout latest

cd $HOME

mkdir love

cd love

wget https://github.com/love2d/love/releases/download/11.4/love-11.4-x86_64.AppImage

cd $HOME

wget https://github.com/CryZe/obs-livesplit-one/releases/download/v0.2.0/obs-livesplit-one-v0.2.0-x86_64-unknown-linux-gnu.tar.gz

mkdir -p $HOME/.var/app/com.obsproject.Studio/config/obs-studio/plugins

tar -zxvf obs-livesplit-one-v0.2.0-x86_64-unknown-linux-gnu.tar.gz -C $HOME/.var/app/com.obsproject.Studio/config/obs-studio/plugins

cd $HOME

wget https://github.com/dimtpap/obs-pipewire-audio-capture/releases/download/1.0.5/linux-pipewire-audio-1.0.5-obs-27-compat.tar.gz

tar -zxvf linux-pipewire-audio-1.0.5-obs-27-compat.tar.gz -C $HOME/.var/app/com.obsproject.Studio/config/obs-studio/plugins

cd $HOME

sudo usermod -a -G libvirt "$(whoami)"

sudo usermod -a -G kvm "$(whoami)"

sudo virsh net-autostart default

topgrade