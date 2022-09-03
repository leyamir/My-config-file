local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }

vim.diagnostic.config {
  virtual_text = false,
  signs = false,
  underline = false,
}

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

local lspconfig = require('lspconfig')
vim.g.coq_settings = { auto_start = 'shut-up' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({}))
end

