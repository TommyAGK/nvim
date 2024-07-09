vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open built in file browser" })

-- copy paste
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy" })

-- format buffer with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file" })

-- map Ctrl-c to esc lol
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Escape!" })

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make file executable", silent = true })

-- space space is the same as :so which sources active file
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Source the file" })

-- go back to dashboard
vim.keymap.set("n", "<leader>db", function()
	vim.cmd("Alpha")
end, { desc = "Return to dashboard" })

-- move lines around
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
