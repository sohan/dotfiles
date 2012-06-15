#!/bin/bash
current_dir=`pwd`

#set up vim
cp "$current_dir"/vim/.vimrc "$HOME"/.vimrc
cp -r "$current_dir"/vim/.vim "$HOME"/vim

#set up python
cp "$current_dir"/python/.pythonrc "$HOME"/.pythonrc

#set up screen
cp "$current_dir"/screen/.screenrc "$HOME"/.screenrc


#add to bashrc
cat "$current_dir"/bash/.bashrc >> "$HOME"/.bashrc

source "$HOME"/.bashrc
