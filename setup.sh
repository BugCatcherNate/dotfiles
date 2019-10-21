#!/bin/bash
# Dotfile setup
# Nathan Thompson 10/12/2019

#Pull latest from repo

git pull 

#Clone and install Vundle for vim plugin manager
rm -rf ~/.vim/bundle/Vundle.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Create directory for old dotfiles
rm -rf ~/olddotfiles
mkdir ~/olddotfiles

#Move old vimrc and replace with symlink from repo

mv ~/.vimrc ~/olddotfiles/.vimrc

ln -s ~/dotfiles/.vimrc ~/.vimrc

#Move old .ycm conf and replse with symlink from repo

mv ~/.vim/.ycm_extra_conf.py ~/olddotfiles/.ycm_extra_conf.py
ln -s ~/dotfiles/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

#Run Vundle Plugin Install

vim +PluginInstall +qall

#Install ycm config
#Install cmake
sudo apt-get install cmake
python ~/.vim/bundle/youcompleteme/install.py --all 

echo "Vimrc Installation Complete!"
