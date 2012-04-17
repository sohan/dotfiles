#!/bin/bash
current_dir=`pwd`

#set up vim
cp "$current_dir"/.vimrc ~/.vimrc
cp -r "$current_dir"/.vim ~/.vim

#set up python
cp "$current_dir"/python/.pythonrc ~/.pythonrc

#add to bashrc
cat "$current_dir"/bash/.bashrc >> ~/.bashrc

source ~/.bashrc
