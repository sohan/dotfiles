#!/bin/bash
set -eu
current_dir=`pwd`

#set up vim
cp "$current_dir"/vim/.vimrc "$HOME"/.vimrc
cp -r "$current_dir"/vim/.vim "$HOME"/.vim

#set up ctags
mkdir -p "$HOME"/.git_template/hooks
cp "$current_dir"/.git_template/hooks/* "$HOME"/.git_template/hooks/
git config --global alias.ctags '!.git/hooks/ctags'

#set up python
cp "$current_dir"/python/.pythonrc "$HOME"/.pythonrc

#set up screen
cp "$current_dir"/screen/.screenrc "$HOME"/.screenrc

#add to bashrc
cat "$current_dir"/bash/.bashrc >> "$HOME"/.bashrc

source "$HOME"/.bashrc
