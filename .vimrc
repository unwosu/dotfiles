set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required


let mapleader = " "


set nofoldenable
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set ignorecase
set smartcase
set hlsearch
set number
set tabstop=2
set shiftwidth=2
syntax on

set smartindent
set autoindent
set guifont=Inconsolata\ 12
" set cindent
" imap <C-Return> <CR><CR><C-o>k<Tab>
" imap <C-Return> <CR><CR><C-o>k<Tab>

colorscheme dracula

nnoremap <leader>fs :w<enter>
nnoremap <leader>qq :wq<enter>
nnoremap <leader>bb :CtrlP<enter>
nnoremap <leader>ff :NERDTreeToggle<CR>
nnoremap <leader>r :!%:p
nnoremap <leader>ww <C-W><C-W>


" Managing some splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set splitbelow 
set splitright 

" Auto pairs Options
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Change the way the cursor is in insert mode
" autocmd InsertEnter,InsertLeave * set cul!



" Closing brackets
let g:AutoPairs = {}
let g:autoclose_on = 0
