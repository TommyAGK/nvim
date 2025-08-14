require("render-markdown").setup({
	file_types = { "markdown", "quatro" },
	render_modes = { "n", "c", "t" },
	enable = true,
	injections = {
		gitcommit = {
			enabled = true,
			query = [[
            ((message) @injection.content
            (#set! injection.combined)
                    (#set! injection.include-children)
                    (#set! injection.language "markdown"))
            ]],
		},
	},
})
