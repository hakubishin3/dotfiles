#!/bin/bash

mkdir -p bachup   # If you don't have backup dir
dotfile_path=$(pwd)
echo $dotfile_path

for f in .??*; do
    [[ $f == ".git" ]] && continue
    [[ $f == ".DS_Store" ]] && continue
    echo $f
    mv -f ~/$f ./bachup
    ln -s $dotfile_path/$f ~/$f
done
