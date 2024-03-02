""""""""""""""""""
"""   .vimrc   """
""""""""""""""""""
set shellslash              " Windowsでディレクトリパスの区切り文字に / を使えるようにする

" set history=500

let mapleader = "\<Space>"

set tabstop=4 shiftwidth=4 softtabstop=0
set expandtab              " タブを空白文字に展開

set wildmenu           " コマンド補完を強化
set wildmode=longest,list,full " リスト表示，最長マッチ

" 検索関連
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト
" ESCを二回押すことでハイライトを消す
nmap <silent> <ESC><ESC> :nohlsearch<CR>

" ファイル関連
set nobackup   " バックアップ取らない
set autoread   " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden     " 編集中でも他のファイルを開けるようにする

" ビープ音除去
set vb t_vb=

"表示関連
set showmatch         " 括弧の対応をハイライト
set showcmd           " 入力中のコマンドを表示
set number            " 行番号表示
set wrap              " 画面幅で折り返す
"set list              " 不可視文字表示
"set listchars=tab:>  " 不可視文字の表示方法
set notitle           " タイトル書き換えない
set scrolloff=5       " 行送り

" ステータスライン関連
set laststatus=2
set statusline=%-(%f%m%h%r%w%)%=%{&ff}\|%{&fenc}\ %y%l,%c\ %0P

" ウィンドウ関連
set splitbelow
set splitright

" 補完
set completeopt=longest,menuone,preview

" ==================== カラー ==================== "
colorscheme default          " カラースキーム
syntax on " シンタックスカラーリングオン
filetype indent on " ファイルタイプによるインデントを行う
filetype plugin on " ファイルタイプごとのプラグインを使う
" ポップアップメニューの色変える
"highlight Pmenu ctermbg=lightcyan ctermfg=black
"highlight PmenuSel ctermbg=blue ctermfg=black
"highlight PmenuSbar ctermbg=darkgray
"highlight PmenuThumb ctermbg=lightgray
highlight Comment ctermfg=blue

" 行番号のハイライト
set cursorline
highlight clear CursorLine

autocmd WinEnter    * set cursorline
autocmd WinLeave    * set nocursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

" ==================== カーソル ==================== "

" ==================== エンコーディング関連 ==================== "
set encoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932,sjis
set fileformats=unix,dos,mac

" ==================== キーマップ ==================== "
" 表示行単位で移動
noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

" コピー
" nnoremap Y y$

" search continue
" nnoremap <expr> n  'Nn'[v:searchforward]
" nnoremap <expr> N  'nN'[v:searchforward]

" ==================== baby-degu ==================== "
" 挿入モード解除キーの変更
inoremap jk <ESC>

" クリップボード連携（+clipboard環境）
set clipboard&
set clipboard^=unnamedplus

" ==================== プラグイン  ==================== "
if filereadable(expand('~/.vim/.vimrc.plugin'))
  source ~/.vim/.vimrc.plugin
endif

" ==================== Local Configuration ==================== "
if filereadable(expand('~/.vim/.vimrc.local'))
  source ~/.vim/.vimrc.local
endif
