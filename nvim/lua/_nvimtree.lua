-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      custom_only = true,
      list = {
        -- user mappings go here
        { key = "<CR>",                           action = "edit" },
        { key = "<Tab>",                          action = "preview" },
        { key = "n",                              action = "create" },
        { key = "d",                              action = "trash" },
        { key = "r",                              action = "rename" },
        { key = "x",                              action = "cut" },
        { key = "c",                              action = "copy" },
        { key = "p",                              action = "paste" },
        { key = "s",                              action = "live_filter" },
        { key = "h",                              action = "toggle_dotfiles" },
      },
    },
  },
  renderer = {
    group_empty = true,
    indent_width = 0,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = true,
    },
  },
  live_filter = {
    prefix = "Search: ",
    always_show_folders = false,
  },
})
