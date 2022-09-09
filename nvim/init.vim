call plug#begin()
	Plug 'neovim/nvim-lspconfig'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'phaazon/hop.nvim'
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()

lua require('_lsp')
lua require('_treesitter')
lua require('_hop')
lua require('_neoscroll')
lua require('_indent')
 

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
colorscheme tokyonight-night

let mapleader = " "
inoremap jj <ESC>
noremap <Left> 0
noremap <Right> $
noremap <M-h> 0
noremap <M-l> $
noremap q :wq<CR>
noremap <leader>h :HopLineStart<CR>
noremap <leader>j :HopWordAC<CR>
noremap <leader>k :HopWordBC<CR>
noremap <leader>l :HopWordCurrentLine<CR>

autocmd VimLeave * set guicursor=a:hor20 " set terminal cursor shape to underline after exit neovim
