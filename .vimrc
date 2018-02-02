" :name: dasVimrc
" :author: Jani Šumak <jani.sumak@gmail.com>
" :version: 0.5
" :description: Base vim configuration

" Table:
"   1. Plugins
"   2. Usage
"   3. Appearance
"   4. Extra

"""""""""""""""
" 1. Plugins  "
"""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'           " Vundle

" Base plugins
Plugin 'tmhedberg/SimpylFold'               " Folding
Plugin 'scrooloose/nerdtree'                " File browsing
Plugin 'tpope/vim-fugitive'                 " Git integration
Plugin 'vim-airline/vim-airline'            " Powerline replacement
" Appearance
Plugin 'jnurmine/Zenburn'                   " Color scheme
Plugin 'altercation/vim-colors-solarized'   " Color scheme
Plugin 'vim-airline/vim-airline-themes'
" Python
Plugin 'davidhalter/jedi-vim'               " Jedi autocompletion for Python
Plugin 'scrooloose/syntastic'               " Syntax checked
Plugin 'nvie/vim-flake8'                    " Python Flake 8 checker
Plugin 'vim-scripts/indentpython.vim'       " Indentation
" HTML, XML
Plugin 'mattn/emmet-vim'                    " Expanding abbrevations, e.g. ul>li>a 
" Markdown
Plugin 'godlygeek/tabular'                  " Vim script for text filtering and alignment
Plugin 'plasticboy/vim-markdown'            " Markdown Vim Mode
" CSS3
Plugin 'lepture/vim-css'                    " CSS bundle for vim
" Javascript
Plugin 'pangloss/vim-javascript'            " Javascript highlitening
Plugin 'wookiehangover/jshint.vim'          " JavaScript Highlitening
Plugin 'posva/vim-vue'                      " VueJs components highlitening
Plugin 'heavenshell/vim-jsdoc'              " Propmpt for inserting JSDoc comments
" reStructuredText
Plugin 'Rykka/riv.vim'                      " Basic Vim plugin
" JSON
Plugin 'elzr/vim-json'                      " JSON linting and formating

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""
" 2. Usage  "
"""""""""""""

set nocompatible              " required
filetype on                   " required
filetype plugin indent on     " Indent according to file type
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

" Fix backspace problems
set backspace=2 " make backspace work like most other apps

" UTF-8 support
set encoding=utf-8

" File Type support
filetype plugin on

" Split position
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Prevent docstrning folding
let g:SimpylFold_docstring_preview=1

""""""""""""""""""
" 3. Appearance  "
""""""""""""""""""

" Numbered lines
set number

" Syntax
syntax on

" Highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" highlight matching paranthesis
set showmatch

" Show extra whitespace
set listchars=tab:••,trail:•,extends:>,precedes:<
set list

" Colorscheme
" Solarized hacks
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1

set background=dark
colorscheme solarized

"""""""""""""
" 4. Extra  "
"""""""""""""

" NERDTree ignore files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Autostart NERDTree when you open vim
autocmd VimEnter * NERDTree
