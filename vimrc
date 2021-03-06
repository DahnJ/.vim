" Pathogen - for installing plugins into new directories
execute pathogen#infect()


let mapleader = "<Space>"

" COLORS
syntax on

" SPACES AND TABS
set tabstop=4  " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " hopefully stops > and < from shifting by two TABs
set expandtab " tab inesrts spaces, not tab
        
set autoindent
set smartindent

" UI config
set number
set showcmd " shows last command
set cursorline " horizontal highlight on the current line
set wildmenu " graphical menu for autocomplete
set showmatch " highlight machint [{()}] - default

" Searching
set incsearch " search as characters are inputted
set hlsearch " highlight matches
set ignorecase 
set smartcase " switches to case-sensitive when using capital letters
nnoremap ,<space>  :nohlsearch<CR> 
" turn off highlighting at the moment

" Folding
set foldenable " enable folding
" see :help foldmethod for methods

" Movement
" nmap oo o<Esc>k
" nmap OO O<Esc>j

" Mouse
set mouse=a


" See the filename at all times
set laststatus=2


":help viminfo
