syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

colorscheme murphy         " Change a colorscheme.

" settings
set directory=" . g:vim_home_path . "/swap"
set backupdir=" . g:vim_home_path . "/backup"
set undodir=" . g:vim_home_path . "/undo"
set backup
set undofile
set writebackup
