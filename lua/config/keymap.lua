local fzf = require("fzf-lua")

-- oil
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Open parent directory" })
--

-- fzf-lua
vim.keymap.set("n", "<leader>sf", function()
	fzf.files()
end, { desc = "Fzf filesystem" })

vim.keymap.set("n", "<leader>sg", function()
	fzf.live_grep()
end, { desc = "Fzf grep project" })

vim.keymap.set("n", "<leader>sd", function()
	fzf.diagnostics_document()
end, { desc = "Fzf diagnostics_document" })

vim.keymap.set("n", "<leader>sx", function()
	fzf.diagnostics_workspace()
end, { desc = "Fzf diagnostics_workspace" })

vim.keymap.set("n", "<leader>s/", function()
	fzf.grep_curbuf()
end, { desc = "Fzf search current buffer" })

vim.keymap.set("n", "<leader>sb", function()
	fzf.buffers()
end, { desc = "Fzf search buffer" })

--
