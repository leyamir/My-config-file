local wk = require("which-key")
wk.register(
{
  ["<leader>"] = {
        name = "Easy Motion", -- optional group name
        h = { "<cmd>HopLine<cr>", "Move to line" }, 
        j = { "<cmd>HopWordAC<cr>", "Move to word below" }, 
        k = { "<cmd>HopWordBC<cr>", "Move to word above" }, 
        l = { "<cmd>HopWordCurrentLine<cr>", "Move to word in line" }, 

    f = {
        name = "File", -- optional group name
        t = { "<cmd>NvimTreeToggle<cr>", "Show file" }, 
        f = { "<cmd>NvimTreeFocus<cr>", "Show file" }, 
	}, 

    t = {
        name = "Task", -- optional group name
        t = { "<cmd>OverseerToggle<cr>", "Toggle task list" }, 
        r = { "<cmd>OverseerLoadBundle<cr>", "Run save task" }, 
        d = { "<cmd>OverseerDeleteBundle<cr>", "Delete save task" }, 
        n = { "<cmd>OverseerBuild<cr>", "Create new task" }, 
	}, 
  }, 

}, { prefix = "" }
)

