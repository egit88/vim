#!/bin/bash
cd ~/.vim/
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/egit88/vim.git
git remote set-url origin git@github.com:egit88/vim.git

# git push -u origin main
