require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
    mappings = {
      list = {
        { key = "f", action = "" },
        { key = "u", action = "" }, 
        { key = "a", action = "toggle_dotfiles" },
        { key = "s", action = "live_filter" },
        { key = "c", action = "copy" },
        { key = "p", action = "paste" },
        { key = "x", action = "cut" },
        { key = "n", action = "create" },
        { key = "d", action = "remove" },
        { key = "r", action = "rename" },
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
