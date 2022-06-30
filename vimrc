let mapleader = "<Space>"

" COLORS
syntax on

" SPACES AND TABS
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set smartindent


" Backspace
set backspace=indent,eol,start

" PYTHON
"
" More stuff: https://realpython.com/vim-and-python-a-match-made-in-heaven/
let g:SimpylFold_docstring_preview=1

" Python PEP-8-compliant
" set textwidth=79 " lines longer than 79 columns will be broken
set shiftwidth=4 " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4 " a hard TAB displays as 4 columns
set expandtab " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround " round indent to multiple of 'shiftwidth'
set autoindent " align the new line indent with the previous line

" Other types of files
au BufNewFile,BufRead *.js, *.html, *.css, *.yaml
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" UI config
set number
set showcmd " shows last command
set cursorline " horizontal highlight on the current line
set wildmenu " graphical menu for autocomplete
set showmatch " highlight machint [{()}] - default

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Searching
set incsearch " search as characters are inputted
set hlsearch " highlight matches
set ignorecase 
set smartcase " switches to case-sensitive when using capital letters
nnoremap ,<space>  :nohlsearch<CR> 
" turn off highlighting at the moment


" Movement
" nmap oo o<Esc>k
" nmap OO O<Esc>j

" Mouse
set mouse=a


" See the filename at all times
set laststatus=2

" Allow for ctrl+shift+c and ctrl+shift+v in Ubuntu
vnoremap <C-S-X> "+x
vnoremap <C-C> "+y



" Folding
set foldenable " enable folding
set foldmethod=indent
set foldlevel=99
" see :help foldmethod for methods





":help viminfo


" Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' " folding management
Plugin 'vim-scripts/indentpython.vim' " Python indenting
" Python autocomplete
" Doesn't work cause needs Python..
" Plugin 'Valloric/YouCompleteMe', { 'commit':'d98f896' }
" Plugin 'vim-syntastic/syntastic' " Syntax highlight 
Plugin 'nvie/vim-flake8' " PEP8 compliant syntax

let python_highlight_all=1
syntax on


" All of Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" Clojure
nnoremap E :%Eval<CR>
