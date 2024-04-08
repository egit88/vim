#!/bin/bash
cd ~/.vim/
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/egit88/vim.git
git remote set-url origin git@github.com:egit88/vim.git
# git push -u origin main


### vim v9.0.2190 on Amazon linux 2
# yum install luajit  luajit-devel lua-devel ruby-devel ncurses-devel
### Ubuntu 22.04 LTS
# luajit from source: https://luajit.org/install.html
# apt install lua5.4
# apt install ruby-full

### plug.vim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### Deno
# https://docs.deno.com/runtime/manual/getting_started/installation
# curl -fsSL https://deno.land/install.sh | sh
# .bashrc:
# export DENO_INSTALL="$HOME/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"

# ./configure --with-features=huge --enable-luainterp --enable-rubyinterp --with-luajit --enable-fail-if-missing
