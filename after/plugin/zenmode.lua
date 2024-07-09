vim.keymap.set("n", "<leader>Zz", function()
	require("zen-mode").setup({
		window = {
			width = 90,
			options = {},
		},
	})
	require("zen-mode").toggle()
	vim.wo.wrap = false
	vim.wo.number = true
	vim.wo.rnu = true
	ColorMyPencils()
end, { desc = "Zen-mode 90" })

vim.keymap.set("n", "<leader>ZZ", function()
	require("zen-mode").setup({
		window = {
			width = 80,
			options = {},
		},
	})
	require("zen-mode").toggle()
	vim.wo.wrap = false
	vim.wo.number = false
	vim.wo.rnu = false
	ColorMyPencils()
end, { desc = "Zen-mode 80" })
