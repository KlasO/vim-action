#!/bin/bash
# deploy-vim-action.sh 
# Simple script to copy the Vim syntax highlighting files to ~/.vim/*
set -x
cp $CODE_DIR/vim-action/ftdetect/* ~/.vim/ftdetect/
cp $CODE_DIR/vim-action/ftplugin/* ~/.vim/ftplugin/
cp $CODE_DIR/vim-action/syntax/* ~/.vim/syntax/
cp $CODE_DIR/vim-action/indent/* ~/.vim/indent/
