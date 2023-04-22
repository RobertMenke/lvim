-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["ss"] = { "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", "Symbols" }
lvim.builtin.which_key.mappings["sb"] = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings["z"] = {
  name = "Custom Mappings",
  s = { ":s#\\C\\(\\<\\u[a-z0-9]\\+\\|[a-z0-9]\\+\\)\\(\\u\\)#\\l\\1_\\l\\2#g<cr>", "camelCase to snake_case (line)" },
  S = { ":%s#\\C\\(\\<\\u[a-z0-9]\\+\\|[a-z0-9]\\+\\)\\(\\u\\)#\\l\\1_\\l\\2#g<cr>", "camelCase to snake_case (file)" }
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach" },
  f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run File" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Debug File" },
  l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Run Last" },
  L = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", "Debug Last" },
  n = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
  N = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Nearest" },
  o = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", "Output" },
  O = { "<cmd>lua require('neotest').output_panel.open()<cr>", "Output Panel" },
  S = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
  s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary" },
}

lvim.builtin.which_key.mappings["z"] = {
  name = "Custom Mappings",
  s = { ":s#\\C\\(\\<\\u[a-z0-9]\\+\\|[a-z0-9]\\+\\)\\(\\u\\)#\\l\\1_\\l\\2#g<cr>", "camelCase to snake_case (line)" },
  S = { ":%s#\\C\\(\\<\\u[a-z0-9]\\+\\|[a-z0-9]\\+\\)\\(\\u\\)#\\l\\1_\\l\\2#g<cr>", "camelCase to snake_case (file)" }
}

lvim.builtin.which_key.mappings["x"] = {
  name = "Trouble",
  x = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace diagnostics" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document diagnostics" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quick fix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Location list" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  t = { "<cmd>Trouble lsp_type_definitions<cr>", "Type definitions" },
}
