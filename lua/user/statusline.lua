lvim.builtin.lualine.options.globalstatus = true
local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
  { "filename", path = 1 },
}
