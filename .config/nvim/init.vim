" hello front end masters
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

" lsp plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" NeoVim Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

" colorscheme gruvbox
colorscheme PaperColor
" highlight Normal guibg=none

set background=dark

let mapleader = " "

