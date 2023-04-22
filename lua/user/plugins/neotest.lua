local plugin = {
  "nvim-neotest/neotest",
  event = { "BufReadPost", "BufNew" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    'nvim-neotest/neotest-go',
    "rouge8/neotest-rust",
    "haydenmeade/neotest-jest",
  },
  config = function()
    require("neotest").setup({
      discovery = { enabled = false },
      diagnostic = { enabled = true },
      icons = {
        expanded = '',
        child_prefix = '',
        child_indent = '',
        final_child_prefix = '',
        non_collapsible = '',
        collapsed = '',
        passed = '',
        running = '',
        failed = '',
        unknown = '',
      },
      adapters = {
        require('neotest-go'),
        require("neotest-rust")({}),
        require('neotest-jest')({
          jestCommand = "npm test --"
        }),
      },
    })
  end
}

return plugin
