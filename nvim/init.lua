vim.cmd([[
call plug#begin()
    Plug 'neovim/nvim-lspconfig'
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'phaazon/hop.nvim'
    Plug 'kyazdani42/nvim-web-devicons' 
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'sainnhe/everforest'
call plug#end()
]])
require('_lsp')
require('_treesitter')
require('_neoscroll')
require('_indent')
require('_hop')
require('_nvimtree')

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.everforest_background = "hard"
vim.g.everforest_better_performance = 1
vim.g.everforest_show_eob = 0
vim.cmd('colorscheme everforest')
vim.opt.number = true
vim.opt.ruler = false
vim.opt.laststatus = 0
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.hlsearch = false
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Left>", "0", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Right>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<M-h>", "0", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<M-l>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>f", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>h", ":HopWordCurrentLineBC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", ":HopWordAC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", ":HopWordBC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", ":HopWordCurrentLineAC<CR>", {noremap = true, silent = true})
vim.cmd('autocmd VimLeave * set guicursor=a:ver20')
