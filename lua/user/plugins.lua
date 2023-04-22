-- Additional Plugins
-- *** When making changes below, remember to :PackerCompile :LvimCacheReset and :LuaCacheClear ***
local colorscheme = require('user.plugins.catppuccin')

lvim.plugins = {
  colorscheme,
  require('user.plugins.copilot'),
  require('user.plugins.nvim-transparent'),
  require('user.plugins.lsp-inlayhints'),
  require('user.plugins.rust-tools'),
  require('user.plugins.auto-save'),
  require('user.plugins.bqf'),
  require('user.plugins.crates'),
  require('user.plugins.neotest'),
  require('user.plugins.fidget'),
  require('user.plugins.lsp-signature'),
  require('user.plugins.treesitter-context'),
  require('user.plugins.colorscheme-picker'),
  require('user.plugins.todo-comments'),
}
