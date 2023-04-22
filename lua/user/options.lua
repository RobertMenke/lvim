-- general
lvim.format_on_save = false
lvim.colorscheme = "catppuccin"
lvim.leader = "space"
-- Configure builtin plugins
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.project.active = true

-- Gitsigns 
lvim.builtin.gitsigns.opts.current_line_blame = true
lvim.builtin.gitsigns.opts.current_line_blame_opts.delay = 100

-- https://www.reddit.com/r/lunarvim/comments/ts3inr/how_do_i_remove_top_bar_after_dropping_the/
lvim.builtin.bufferline.active = false
vim.opt.showtabline = 0
vim.opt.timeoutlen = 250

-- close nvimtree when opening a file
lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true
lvim.builtin.nvimtree.setup.update_cwd = false
