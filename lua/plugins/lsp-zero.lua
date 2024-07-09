return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		lazy = true,
		config = false,
		init = function()
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
	},
	{

		"williamboman/mason.nvim",
		lazy = false,
		config = true,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"L3MON4D3/LuaSnip",

			--snippets
			--"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_cmp()
			local cmp = require("cmp")
			local cmp_action = lsp_zero.cmp_action()
			cmp.setup({
				formatting = lsp_zero.cmp_format({ details = true }),
				mapping = cmp.mapping.preset.insert({
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-u>"] = cmp.mapping.scroll_docs(-4),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-f>"] = cmp_action.luasnip_jump_forward(),
					["<C-b>"] = cmp_action.luasnip_jump_backward(),
				}),
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()
			lsp_zero.on_attach(function(_, bufnr)
				--lsp_zero.default_keymaps({ buffer = bufnr })
				vim.keymap.set("n", "gd", function()
					lsp_zero.buf.definition()
				end, { desc = "Go to definition", buffer = bufnr, remap = true })
				vim.keymap.set("n", "K", function()
					vim.lsp_zero.buf.hover()
				end, { desc = "Show info on element", buffer = bufnr, remap = true })
				vim.keymap.set("n", "<leader>zi", function()
					vim.lsp_zero.buf.definition()
				end, { desc = "Workspace symbol", buffer = bufnr, remap = true })
				vim.keymap.set("n", "<leader>zs", function()
					vim.diagnostic.open_float()
				end, { desc = "Open diagnostics", buffer = bufnr, remap = true })
				vim.keymap.set("n", "[d", function()
					vim.diagnostic.goto_next()
				end, { desc = "Next element", buffer = bufnr, remap = true })
				vim.keymap.set("n", "]d", function()
					vim.diagnostic.goto_prev()
				end, { desc = "Previous element", buffer = bufnr, remap = true })
				vim.keymap.set("n", "<leader>za", function()
					vim.lsp_zero.buf.code_action()
				end, { desc = "Code actions", buffer = bufnr, remap = true })
				vim.keymap.set("n", "<leader>zr", function()
					vim.lsp_zero.buf.references()
				end, { desc = "Show references", buffer = bufnr, remap = true })
				vim.keymap.set("n", "<leader>zn", function()
					vim.lsp_zero.buf.rename()
				end, { desc = "Rename element", buffer = bufnr, remap = true })
				vim.keymap.set("i", "<C-space>", function()
					vim.lsp_zero.buf.signature_help()
				end, { desc = "Show signature help", buffer = bufnr, remap = true })
			end)
			require("mason-lspconfig").setup({
				ensure_installed = { "pylsp", "jsonls", "clangd", "lua_ls" },
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({})
					end,
				},
			})
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = {
								"vim",
								"require",
							},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})
		end,
	},
	-- "rafamdriz/friendly-snippets"}
	--    "hrsh7th/cmp-buffer",
	--    "hrsh7th/cmp-path",
	--    "hrsh7th/cmp-nvim-lua",
}
