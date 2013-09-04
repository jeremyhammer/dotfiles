#!/bin/bash

if which yum > /dev/null; then
    sudo yum -y install ctags cscope vim
elif which apt-get > /dev/null; then
    sudo apt-get install ctags cscope vim
fi
