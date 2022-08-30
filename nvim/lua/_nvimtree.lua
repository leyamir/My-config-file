require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "h", action = "toggle_dotfiles" },
        { key = "d", action = "remove" },
        { key = "r", action = "rename" },
        { key = "c", action = "copy" },
        { key = "p", action = "paste" },
        { key = "x", action = "cut" },
        { key = "a", action = "create" },
        { key = "f", action = "live_filter" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
