scriptencoding utf-8
set encoding=utf-8

"----------------------------------------------------------------------
" Basic Options
"----------------------------------------------------------------------
let mapleader=";"         " The <leader> key

set autoread              " Reload files that have not been modified
set autoindent            " Respect indentation when starting a new line.
set expandtab             " Expand tabs to spaces. Essential in Python.
set tabstop=4             " Number of spaces tab is counted for.
set shiftwidth=4          " Number of spaces to use for autoindent.
set backspace=2           " Fix backspace behavior on most terminals.
set colorcolumn=80        " Highlight 80 character limit
set hidden                " Allow buffers to be backgrounded without saved
set laststatus=2          " Always show the status bar
set t_Co=256              " Use 256 colors
set scrolloff=999         " Keep the cursor centered in the screen
set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set number
set ruler                 " Show the line number and column in the status bar
set title                 " Set the title for gvim
set list                  " Show invisible characters
set listchars=tab:›\ ,eol:¬,trail:⋅ "Set the characters for the invisibles

colorscheme murphy        " Change a colorscheme.

" settings
set directory=" . g:vim_home_path . "/swap"
set backupdir=" . g:vim_home_path . "/backup"
set undodir=" . g:vim_home_path . "/undo"
set backup
set undofile
set writebackup


syntax on                 " Enable syntax highlighting.
