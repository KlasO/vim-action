#!/bin/bash
# deploy-vim-action.sh 
# Simple script to copy the Vim syntax highlighting files to ~/.vim/*
set -x
if [ -d "~/.vim" ]
then
  cp -r $CODE_DIR/vim-action/ftdetect/* ~/.vim/ftdetect/ 
  cp -r $CODE_DIR/vim-action/ftplugin/* ~/.vim/ftplugin/
  cp -r $CODE_DIR/vim-action/syntax/* ~/.vim/syntax/
  cp -r $CODE_DIR/vim-action/indent/* ~/.vim/indent/
else
  mkdir -p ~/.vim/ftdetect && cp $CODE_DIR/vim-action/ftdetect/* ~/.vim/ftdetect/  || echo "ERROR!"
  mkdir -p ~/.vim/ftplugin && cp $CODE_DIR/vim-action/ftplugin/* ~/.vim/ftplugin/ || echo "ERROR!"
  mkdir -p ~/.vim/syntax && cp $CODE_DIR/vim-action/syntax/* ~/.vim/syntax/ || echo "ERROR!"
  mkdir -p ~/.vim/indent && cp $CODE_DIR/vim-action/indent/* ~/.vim/indent/ || echo "ERROR!"
fi
