#!/usr/bin/env bash
sudo usermod --shell /bin/zsh $USER
cp .zshrc /home/$USER/.zshrc