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

if !has("win32")
    set showbreak=↪       " Put the character to show a line has been wrapped
end

syntax on                 " Enable syntax highlighting.

"" Backup settings
"execute "set directory=" . g:vim_home_path . "/swap"
"execute "set backupdir=" . g:vim_home_path . "/backup"
"execute "set undodir=" . g:vim_home_path . "/undo"
"set backup
"set undofile
"set writebackup


" Search settings
set hlsearch   " Highlight results
set ignorecase " Ignore casing of searches
set incsearch  " Start showing results as you type
set smartcase  " Be smart about case sensitivity when searching

" Tab settings
set expandtab     " Expand tabs to the proper type and size
set tabstop=4     " Tabs width in spaces
set softtabstop=4 " Soft tab width in spaces
set shiftwidth=4  " Amount of spaces when shifting

" Tab completion settings
set wildmode=list:longest     " Matching the longest first
set wildignore+=.git,.hg,.svn " Ignore version control repos
set wildignore+=*.6           " Ignore Go compiled files
set wildignore+=*.pyc         " Ignore Python compiled files
set wildignore+=*.rbc         " Ignore Rubinius compiled files
set wildignore+=*.swp         " Ignore vim backups

"" GUI settings
"let g:dracula_italic = 0 " We don't support italics in our terminal
"packadd! dracula
"colorscheme dracula

" This is required to force 24-bit color since I use a modern terminal.
set termguicolors

if !has("gui_running")
    " vim hardcodes background color erase even if the terminfo file does
    " not contain bce (not to mention that libvte based terminals
    " incorrectly contain bce in their terminfo files). This causes
    " incorrect background rendering when using a color theme with a
    " background color.
    "
    " see: https://github.com/kovidgoyal/kitty/issues/108
    let &t_ut=''
endif

set guioptions=cegmt
if has("win32")
    set guifont=Inconsolata:h11
else
    set guifont=Monaco\ for\ Powerline:h12
endif

if exists("&fuopt")
    set fuopt+=maxhorz
endif

"----------------------------------------------------------------------
" Key Mappings
"----------------------------------------------------------------------
" Remap a key sequence in insert mode to kick me out to normal
" mode. This makes it so this key sequence can never be typed
" again in insert mode, so it has to be unique.
inoremap jj <esc>
inoremap jJ <esc>
inoremap Jj <esc>
inoremap JJ <esc>
inoremap jk <esc>
inoremap jK <esc>
inoremap Jk <esc>
inoremap JK <esc>

" Make j/k visual down and up instead of whole lines. This makes word
" wrapping a lot more pleasent.
map j gj
map k gk

" Shortcut to edit the vimrc
if has("nvim")
    nmap <silent> <leader>vimrc :e ~/nvim/init.vim<CR>
else
    nmap <silent> <leader>vimrc :e ~/.vimrc<CR>
endif

" Make navigating around splits easier
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
if has('nvim')
  " We have to do this to fix a bug with Neovim on OS X where C-h
  " is sent as backspace for some reason.
  nnoremap <BS> <C-W>h
endif

" Get rid of search highlights
noremap <silent><leader>/ :nohlsearch<cr>
