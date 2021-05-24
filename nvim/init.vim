" Set Leader Key to Space
let mapleader = " "
" Show matching brackets
set showmatch
" Highlight search results (Toggle)
set hlsearch!
" Convert tabs to white space
set expandtab
" See multiple spaces as tabstops so <BS> does the right thing
set softtabstop=4
" Number of columns occupied by a Tab char
set tabstop=4
" Autoindent widths
set shiftwidth=4
" Indent a new line the same amount as the line just typed
set autoindent
" Set hybrid numbering on
set number relativenumber
" Allow auto-indenting depending on file type
filetype plugin indent on
" Syntax highlighting
syntax on
" Allow mouse clicks
set mouse=a
" Encoding Type
set encoding=UTF-8
" Set settings for whitespace, EOL, tabs, trailing characters
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last Modified: \).*#\1' .
          \ strftime('%b %d, %Y') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

" CUSTOM KEY MAPPINGS
" Map Esc to 'kj'
imap kj <Esc>
" Remap Save
nnoremap <C-s> :w<CR>
" Move Current Line Down 
nnoremap <A-j> :m .+1<CR>==
" Move Current Line Up 
nnoremap <A-k> :m .-2<CR>==
" Open the File Explorer and focus on it
nnoremap <C-b> :NERDTreeToggle<CR>
" Remap whitespace, EOL, tabs, trailing chars toggle button
nnoremap <leader><Tab> :set list!<CR>
" Remap Pydocstring generator
nnoremap <leader>pydg :Pydocstring<CR>
" Remap toggling highlighting search results
nnoremap <leader>h :set hlsearch!<CR>

" Neovim Plugins
call plug#begin('~/.config/nvim/plugged')
" For File Explorer
Plug 'preservim/nerdtree'
" Do things with File Explorer when in Visual Mode
Plug 'PhilRunninger/nerdtree-visual-selection'
" File Type Highlighting in File Explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" For commenting in Normal Mode
Plug 'tpope/vim-commentary'
" For surronding words with {[("''")]} or tags
Plug 'tpope/vim-surround'
" Git Plugin
Plug 'tpope/vim-fugitive'
" Python Docstring Generator
Plug 'heavenshell/vim-pydocstring'
" Git status flags in File Explorer
Plug 'Xuyuanp/nerdtree-git-plugin'
" Status Line
Plug 'vim-airline/vim-airline'
" Status Line Themes
Plug 'vim-airline/vim-airline-themes'
" CSS Color Preview
Plug 'ap/vim-css-color'
" Material Color Scheme
Plug 'kaicataldo/material.vim', {'branch':'main'}
" Add icons to File Explorer (Always load as the last one)
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Set doq path
let g:pydocstring_doq_path = '~/.local/bin/doq'

" Color Scheme
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
let g:airline_theme = 'deus'
colorscheme material

