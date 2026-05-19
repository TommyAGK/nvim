local wk = require("which-key")
local ts = require("telescope.builtin")
local tr = require("nvim-tree.api")

-- which-key defaults to normal mode
wk.add({
	{ "<leader>p", group = "Telescope file browser" },
	{ "<leader>b", ts.buffers, desc = "Telescope buffers" },
	{ "<leader>pf", ts.find_files, desc = "Find files" },
	{ "<leader>pg", ts.git_files, desc = "Find files in git repo" },
	{
		"<leader>ps",
		function()
			ts.grep_string({ search = vim.fn.input("find word greplike > ") })
		end,
		desc = "Search for text",
	},
	{
		"<leader>m",
		function()
			vim.cmd("Mason")
		end,
		desc = "Call mason, to modify LSP/linter/formatters",
	},
})

-- harpoon parts
wk.add({
	{ "<C-S>N", desc = "Next buffer in harpoon" },
	{ "<C-S>P", desc = "Previous buffer in harpoon" },
})

wk.add({
	{ "<leader>rff", desc = "Remote file actions" },
})

-- LSP stuff
wk.add({
	{ "^]", desc = "Go to definition" },
	{ "gD", desc = "Go to declaration of element" },
	{ "go", desc = "Go to type defintion" },
	{ "gO", desc = "Display symbols in document" },
	{ "gs", desc = "Display signature help" },
	{ "grr", desc = "Go to references" },
	{ "K", desc = "Get info on element" },
	{ "grn", desc = "refactor with new name" },
	{ "F3", desc = "Format code, async" },
	{ "F4", desc = "Code actions" },
})

-- leader namings
wk.add({
	{ "<leader>Z", desc = "Zen" },
	{ "<leader>a", desc = "Add file to harpoon jump list" },
	{ "<leader>d", desc = "Dashboard" },
	{ "<leader>g", desc = "Git" },
	{ "<leader>r", desc = "Remote Host" },
	{ "<leader>z", desc = "LSP" },
	{ "<leader>y", desc = "Yank, but more options" },
	{ "<leader>Y", desc = "Yank, but just put the whole line on clipboard" },
})

-- Folding stuff
wk.add({
	{ "zc", desc = "Close fold under cursor" },
	{ "zo", desc = "Open fold under cursor" },
	{ "zf", desc = "Create a fold" },
	{ "za", desc = "Toggle between open and close current fold" },
	{ "zR", desc = "Open all folds in buffer" },
	{ "zM", desc = "Close all folds in buffer" },

	{ "zj", desc = "Move down one fold" },
	{ "zk", desc = "Move up one fold" },
})

-- neovim defaults, just better
wk.add({
	{ "f", desc = "Jump to..." },
})

wk.add({
	{ "<leader>e", vim.cmd.NvimTreeToggle, desc = "toggle nvim tree" },
})

wk.add({
	{ "<leader>rf", desc = "remote file actions" },
})
