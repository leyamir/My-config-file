vim.opt.termguicolors = true
vim.cmd [[ highlight IndentBlanklineContextChar guifg=#DCD7BA gui=nocombine]]
require("indent_blankline").setup {
    show_current_context = true,
}
