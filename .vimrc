"User Settings
set nocompatible
set wildmenu
set laststatus=2
set ruler
set number
set cursorline
set nowrap
set expandtab
set shiftwidth=4
set tabstop=4
set backspace=2
set mouse=a
set incsearch
set ignorecase
""User END


""Vundle Setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
""Vundle END

syntax enable
set background=dark

"" NERD Tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <C-n> :NERDTreeToggle<cr>
"" NERD Tree END

"" Tagbar 
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <C-t> :TagbarToggle<cr>
