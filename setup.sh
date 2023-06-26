#!/bin/bash

clear

echo "Installing dependencies"
if pacman -V &> /dev/null; then
    sudo pacman -Syu "alacritty neovim vim tree fzf zip unzip wget curl gzip tar go go-tools nodejs npm xclip devtools"
fi

if dnf --version &> /dev/null; then
    sudo dnf update
    sudo dnf upgrade
    sudo dnf install "alacritty neovim vim tree fzf zip unzip wget curl gzip tar golang nodejs npm xclip devtools"
fi

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "VISUAL=vim" >> $HOME/.bashrc
echo "EDITOR=nvim" >> $HOME/.bashrc

dotfiles_path=$(pwd)
ln -vs $dotfiles_path/alacritty $HOME/.config
ln -vs $dotfiles_path/nvim $HOME/.config
ln -vs $dotfiles_path/zellij $HOME/.config
