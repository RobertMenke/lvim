-- Disable virtual text
lvim.lsp.diagnostics.virtual_text = false

-- IMPORTANT: Select which servers should be configured manually. Requires `:LvimCacheReset` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })
