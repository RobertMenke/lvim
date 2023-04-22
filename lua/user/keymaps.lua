-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-n>"] = ":cn<CR>"
lvim.keys.normal_mode["<C-p>"] = ":cp<CR>"
-- Shorthand moving between splits
lvim.keys.normal_mode["<C-v>"] = "<C-w><C-v>"
lvim.keys.normal_mode["<C-s>"] = "<C-w><C-s>"
lvim.keys.normal_mode["<C-l>"] = "<C-w><C-l>"
lvim.keys.normal_mode["<C-h>"] = "<C-w><C-h>"
lvim.keys.normal_mode["<S-h>"] = "<cmd>bprevious<cr>"
lvim.keys.normal_mode["<S-l>"] = "<cmd>bnext<cr>"
-- Automatically focus nvim-tree
lvim.keys.normal_mode["<C-t>"] = "<cmd>:NvimTreeFocus<cr>"
