local wk = require("which-key")
local ts = require("telescope.builtin")

-- which-key defaults to normal mode

-- telescope parts
wk.register({
	["<leader>p"] = {
		name = "telescope file browser",
		f = { ts.find_files, "find files" },
		g = { ts.git_files, "find files in git repo" },
		s = {
			function()
				ts.grep_string({ search = vim.fn.input("find word greplike > ") })
			end,
			"Search for text",
		},
	},
})

-- harpoon parts
local harpoon = require("harpoon")

wk.register({
	["<C>"] = {
		name = "Harpoon stuff",
		e = {
			"view harpoon list",
		},
		h = {
			"view harpoon list",
		},
		t = {
			"view harpoon list",
		},
		n = {
			"view harpoon list",
		},
		s = {
			"view harpoon list",
		},
	},
})
wk.register({
	["<C-S>"] = {
		P = {
			"Previous buffer in harpoon",
		},
		N = {
			"Next buffer in harpoon",
		},
	},
})
-- ssh stuff
wk.register({
	["<leader>rf"] = {
		f = { "Remote file actions" },
	},
})

-- LSP stuff
wk.register({
	["K"] = { "Get info on element" },
})

-- generic leader namings
wk.register({
	["<leader>"] = {
		a = { "Add file to harpoon jump list" },
		r = { "Remote host" },
		g = { "Git" },
		d = { "Dashboard" },
		Z = { "Zen" },
		z = { "LSP" },
	},
})
