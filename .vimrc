set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" AutoCompletion
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

" Director Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Productivity
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'

" Typescript 
Plugin 'leafgarland/typescript-vim'

" Go plugins
Plugin 'fatih/vim-go'

" Rust plugins
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

call vundle#end()            " required
filetype plugin indent on    " required


" set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

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
set number
syntax on

set smartindent
set autoindent
set background=dark        " for the light version
colorscheme molokai 
let g:one_allow_italics = 1 " I love italic for comments

" All custom keys for vim
nnoremap <leader>fs :w<enter>
nnoremap <leader>qq :wq<enter>
nnoremap <leader>bb :CtrlP<enter>
" nnoremap <leader>ff :NERDTreeToggle<CR>
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>r :!%:p
nnoremap <leader>ww <C-W><C-W>
nnoremap <leader>fmt gg=G<enter>

set guifont="Ubuntu Mono":13


" Managing some splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Indent guides
" let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_conceallevel=1
" let g:indentLine_leadingSpaceEnabled=1
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'


set splitbelow 
set splitright 

" Auto pairs Options
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
" let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'", '':''}
let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'"}

" Change the way the cursor is in insert mode
" autocmd InsertEnter,InsertLeave * set cul!

let g:airline_theme='badwolf'


" Closing brackets
let g:AutoPairs = {}
let g:autoclose_on = 0

set visualbell t_vb=


"Rust formatting
let g:rustfmt_autosave = 1

" Type script formatting
let g:typescript_indent_disable = 1
