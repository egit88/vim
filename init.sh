#!/bin/bash
cd ~/.vim/
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/egit88/vim.git
git remote set-url origin git@github.com:egit88/vim.git

# git push -u origin main

### vim-jetpack (https://github.com/tani/vim-jetpack)
# curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
### plug
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### vim v9.0.2190 on Amazon linux 2
# yum install luajit  luajit-devel lua-devel ruby-devel ncurses-devel
# ./configure --with-features=huge --enable-luainterp --enable-rubyinterp --with-luajit --enable-fail-if-missing
