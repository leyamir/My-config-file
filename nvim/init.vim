call plug#begin()
	Plug 'neovim/nvim-lspconfig'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

lua require('_lsp')
lua require('_treesitter')
lua require('_neoscroll')
lua require('_indent')
lua require('_gruvbox')
 

if has('termguicolors')
  set termguicolors
endif
set laststatus=0
set noswapfile
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set cursorline
set nohlsearch
set clipboard=unnamedplus "make everthing yank/delete auto copy to system clipboard

let mapleader = " "
inoremap jj <ESC>
noremap <Left> 0
noremap <Right> $
noremap <M-h> 0
noremap <M-l> $
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
noremap <leader>e :e<space>
noremap <leader>h 4b
noremap <leader>j 4j
noremap <leader>k 4k
noremap <leader>l 4w

autocmd VimLeave * set guicursor=a:hor20 " set terminal cursor shape to underline after exit neovim
