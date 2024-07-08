vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy paste
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- format buffer with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- map Ctrl-c to esc lol
vim.keymap.set("i", "<C-c>", "<Esc>")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- space space is the same as :so which sources active file
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- go back to dashboard
vim.keymap.set("n", "<leader>db", function()
	vim.cmd("Alpha")
end)
