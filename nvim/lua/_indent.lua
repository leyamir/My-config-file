vim.opt.termguicolors = true
vim.cmd [[ highlight IndentBlanklineContextChar guifg=#ebdbb2 gui=nocombine]]
require("indent_blankline").setup {
    show_current_context = true,
}
