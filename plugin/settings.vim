scriptencoding utf-8

set autoindent                        " maintain indent of current line
set backspace=indent,start,eol        " allow unrestricted backspacing in insert mode

if exists('$SUDO_USER')
  set nobackup                        " don't create root-owned files
  set nowritebackup                   " don't create root-owned files
else
  set backupdir=~/local/.vim/tmp/backup
  set backupdir+=~/.vim/tmp/backup    " keep backup files out of the way
  set backupdir+=.
endif


set cursorline                        " highlight current line

if exists('$SUDO_USER')
  set noswapfile                      " don't create root-owned files
else
  set directory=~/local/.vim/tmp/swap//
  set directory+=~/.vim/tmp/swap//    " keep swap files out of the way
  set directory+=.
endif

set expandtab                         " always use spaces instead of tabs

if has('folding')
  if has('windows')
    let &fillchars='vert: '           " less cluttered vertical window separators
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

set formatoptions+=n                  " smart auto-indenting inside numbered lists
set guifont=Source\ Code\ Pro\ Light:h13
set guioptions-=T                     " don't show toolbar
set hidden                            " allows you to hide buffers with unsaved changes without being prompted

set laststatus=2                      " always show status line
set lazyredraw                        " don't bother updating screen during macro playback
set list                              " show whitespace
set listchars=nbsp:⦸,tab:>-,extends:»,precedes:«,trail:•
set nojoinspaces                      " don't autoinsert two spaces after '.', '?', '!' for join command
set noshowmatch                       " don't jump between matching brackets
set number                            " show line numbers in gutter


set splitbelow                        " open horizontal splits below current window
set splitright                        " open vertical splits to the right of the current window
set switchbuf=usetab                  " try to reuse windows/tabs when switching buffers
set tabstop=2                         " spaces per tab
set textwidth=80                      " automatically hard wrap at 80 columns

if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile                    " don't create root-owned files
  else
    set undodir=~/local/.vim/tmp/undo
    set undodir+=~/.vim/tmp/undo      " keep undo files out of the way
    set undodir+=.
    set undofile                      " actually use undo files
  endif
endif

if has('viminfo')
  if exists('$SUDO_USER')
    set viminfo=                      " don't create root-owned files
  else
    if isdirectory('~/local/.vim/tmp')
      set viminfo+=n~/local/.vim/tmp/viminfo
    else
      set viminfo+=n~/.vim/tmp/viminfo " override ~/.viminfo default
    endif

    if !empty(glob('~/.vim/tmp/viminfo'))
      if !filereadable(expand('~/.vim/tmp/viminfo'))
        echoerr 'warning: ~/.vim/tmp/viminfo exists but is not readable'
      endif
    endif
  endif
endif

if has('mksession')
  if isdirectory('~/local/.vim/tmp')
    set viewdir=~/local/.vim/tmp/view
  else
    set viewdir=~/.vim/tmp/view       " override ~/.vim/view default
  endif
  set viewoptions=cursor,folds        " save/restore just these (with `:{mk,load}view`)
endif

if has('virtualedit')
  set virtualedit=block               " allow cursor to move where there is no text in visual block mode
endif
set visualbell t_vb=                  " stop annoying beeping for non-error errors
set whichwrap=b,h,l,s,<,>,[,],~       " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
set wildcharm=<C-z>                   " substitue for 'wildchar' (<Tab>) in macros
if has('wildignore')
  set wildignore+=*.o,*.rej           " patterns to ignore during file-navigation
endif
if has('wildmenu')
  set wildmenu                        " show options as list when switching buffers etc
endif
set wildmode=longest:full,full        " shell-like autocomplete to unambiguous portion
