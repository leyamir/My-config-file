call plug#begin()
	Plug 'neovim/nvim-lspconfig'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
	Plug 'ellisonleao/gruvbox.nvim' 
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'folke/which-key.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'phaazon/hop.nvim'
    Plug 'stevearc/overseer.nvim'
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

lua require('_lsp')
lua require('_nvimtree')
lua require('_whichkey')
lua require('_treesitter')
lua require('_hop')
lua require('_overseer')
lua require('_gruvbox')
lua require('_neoscroll')
lua require('_indent')


set laststatus=0
set noruler
set noswapfile
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set number
set cursorline

let mapleader = " "
inoremap jj <ESC>
noremap <Left> 0
noremap <Right> $
noremap <M-h> 0
noremap <M-l> $








