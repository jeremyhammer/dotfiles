#!/bin/sh

DOTFILE_PATH=`pwd`

mkdir -p ${DOTFILE_PATH}/.vim/autoload
ln -sf ../vim-pathogen/autoload/pathogen.vim ${DOTFILE_PATH}/.vim/autoload/pathogen.vim

cd
rm -rf .vim .gitconfig .vimrc .bash_profile .gvimrc .profile .subversion
ln -s ${DOTFILE_PATH}/.vim
ln -s ${DOTFILE_PATH}/.subversion
ln -s .vim/.vimrc
ln -s .vim/.gvimrc
ln -s ${DOTFILE_PATH}/.gitconfig
ln -s ${DOTFILE_PATH}/.bash_profile
ln -s ${DOTFILE_PATH}/.bash_profile .profile
