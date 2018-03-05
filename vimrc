execute pathogen#infect()
set guifont=Menlo:h12
set number
set ts=4
set showmatch
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
syntax on

filetype plugin indent on


" Turn on line numbers and row/column numbers.
set nu
set ruler

" Make vim echo commands as they are being entered.
set showcmd

" Set tabstops to two spaces and ensure tab characters are expanded into
" spaces.
set smarttab
set expandtab
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2

" Fix backspace key.
set bs=2

" Set up searching so that it jumps to matches as the word is being entered and
" is case-insensitive.
set incsearch
set ignorecase
set smartcase

" Uncomment the following lines to make
" vim automatically create a backup copy
" each time a file is edited.
"
" If you enable this feature, be sure to
"   
"   mkdir ~/codeBackups
"
" or it won't work.
"set backupdir=~/codeBackups
"set backup


" Enable TypeScript errors swiggles"
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Set color theme to dracula"
color dracula
let NERDTreeMapOpenInTab='<ENTER>'
