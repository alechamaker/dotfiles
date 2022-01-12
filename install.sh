#!/bin/bash

mv ~/.bashrc ~/.bashrc_old
mv ~/.git ~/.git_old
mv ~/.gitconfig ~/.gitconfig_old
mv ~/.tmux ~/.tmux_old
mv ~/.tmux.config ~/.tmux.config_old
mv ~/.vim ~/.vim_old
mv ~/.viminfo ~/.viminfo_old
mv ~/.vimrc ~/.vimrc_old

cp -R ~/.bashrc ~/
cp -R ~/.git ~/
cp -R ~/.gitconfig ~/
cp -R ~/.tmux ~/
cp -R ~/.tmux.config ~/
cp -R ~/.vim ~/
cp -R ~/.viminfo ~/
cp -R ~/.vimrc ~/

