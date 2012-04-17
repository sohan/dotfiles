#!/bin/bash
current_dir=`pwd`

#set up vim
cp "$current_dir"/vim/.vimrc ~/.vimrc
cp -r "$current_dir"/vim/.vim ~/.vim

#set up python
cp "$current_dir"/python/.pythonrc ~/.pythonrc

#set up screen
cp "$current_dir"/screen/.screenrc ~/.screenrc


#add to bashrc
cat "$current_dir"/bash/.bashrc >> ~/.bashrc

source ~/.bashrc
