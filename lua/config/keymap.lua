-- nvimtree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>E", ":Neotree toggle<CR>", { desc = "Open parent directory" })

-- vim related
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- fzf-lua related
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "Search files" })
vim.keymap.set("n", "<leader>sb", fzf.buffers, { desc = "Search buffers" })
vim.keymap.set("n", "<leader>ss", fzf.treesitter, { desc = "Search symbols" })
vim.keymap.set("n", "<leader>sg", fzf.live_grep_native, { desc = "Live grep project" })
vim.keymap.set("n", "<leader>sd", fzf.diagnostics_document, { desc = "Live grep project" })
vim.keymap.set("n", "<leader>sD", fzf.diagnostics_workspace, { desc = "Live grep project" })
