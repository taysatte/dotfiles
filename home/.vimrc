" Set leader key
let mapleader = " "

" Exit insert mode with [jk]
inoremap jk <ESC>

" Clear search highlights
nnoremap <leader>\ :nohl<CR>

" Write and quit current buffer
nnoremap <leader>wq :wq<CR>

" Increment/decrement numbers
nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

" Window management
nnoremap <leader>sv <C-w>v        " Split window vertically
nnoremap <leader>sh <C-w>s        " Split window horizontally
nnoremap <leader>se <C-w>=        " Make split windows equal size
nnoremap <leader>sx :close<CR>    " Close current split window

" Tab management
nnoremap <leader>to :tabnew<CR>   " Open new tab
nnoremap <leader>tx :tabclose<CR> " Close current tab
nnoremap <leader>tn :tabn<CR>     " Go to next tab
nnoremap <leader>tp :tabp<CR>     " Go to previous tab
nnoremap <leader>tf :tabnew %<CR> " Open current buffer in a new tab

" Delete single character without copying into register
nnoremap x "_x

" Center page after jumping
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Netrw remap
nnoremap <leader>pv :Ex<CR>

" Set netrw list style
let g:netrw_liststyle = 3

" Enable relative number and number
set relativenumber
set number

" Tabs & indentation
set tabstop=2         " 2 spaces for tabs (prettier default)
set shiftwidth=2      " 2 spaces for indent width
set expandtab         " Expand tab to spaces
set autoindent        " Copy indent from current line when starting new one

" Disable line wrapping
set nowrap

" Search settings
set ignorecase        " Ignore case when searching
set smartcase         " Case-sensitive if mixed case is used in search

" Highlight the cursor line
set cursorline

" Enable termguicolors for colorscheme to work (requires true color support)
set termguicolors
set background=dark   " Set background to dark for dark colorschemes
set signcolumn=yes    " Always show sign column to prevent text shifting

" Configure backspace
set backspace=indent,eol,start " Allow backspace on indent, end of line, or insert mode start

" Use system clipboard as the default register
set clipboard+=unnamedplus

" Split window settings
set splitright        " Vertical splits open to the right
set splitbelow        " Horizontal splits open to the bottom

" Remove fill chars
set fillchars=eob:\ 

