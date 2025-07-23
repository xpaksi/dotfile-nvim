-- nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>", { desc = "Open parent directory" })

-- vim related
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<tab>", ":bnext<CR>", { desc = "[T]ab [N]ext" })
vim.keymap.set("n", "<s-tab>", ":bprevious<CR>", { desc = "[T]ab [P]revious" })
