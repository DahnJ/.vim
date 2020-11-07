let mapleader = "<Space>"

" COLORS
syntax on

" SPACES AND TABS
set smartindent

" Python PEP-8-compliant
" set textwidth=79 " lines longer than 79 columns will be broken
set shiftwidth=4 " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4 " a hard TAB displays as 4 columns
set expandtab " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround " round indent to multiple of 'shiftwidth'
set autoindent " align the new line indent with the previous line


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

" Allow for ctrl+shift+c and ctrl+shift+v in Ubuntu
vnoremap <C-S-X> "+x
vnoremap <C-C> "+y




":help viminfo
