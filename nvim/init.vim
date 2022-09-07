call plug#begin()
	Plug 'neovim/nvim-lspconfig'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'phaazon/hop.nvim'
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

lua require('_lsp')
lua require('_nvimtree')
lua require('_treesitter')
lua require('_hop')
lua require('_gruvbox')
lua require('_neoscroll')
lua require('_indent')


if has('termguicolors')
  set termguicolors
endif
set laststatus=0
set noruler
set noswapfile
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set number
set cursorline
set nohlsearch
set clipboard=unnamedplus "make everthing yank/delete auto copy to system clipboard

let mapleader = " "
inoremap jj <ESC>
noremap <Left> 0
noremap <Right> $
noremap <M-h> 0
noremap <M-l> $
noremap ft :NvimTreeToggle<CR>
noremap ff :NvimTreeFocus<CR>
noremap <leader>h :HopLine<CR>
noremap <leader>j :HopWordAC<CR>
noremap <leader>k :HopWordBC<CR>
noremap <leader>l :HopWordCurrentLine<CR>

autocmd VimLeave * set guicursor=a:hor20 " set terminal cursor shape to underline after exit neovim

