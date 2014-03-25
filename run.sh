#!/bin/bash
set -eu
current_dir=`pwd`

#add to bashrc
cat "$current_dir"/bash/.bashrc >> "$HOME"/.bashrc

source "$HOME"/.bashrc
