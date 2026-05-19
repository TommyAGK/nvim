vim.lsp.config('lua_ls', {
    settings = {
        lua = {
            runtime = { version = 'LuaJTT' },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                },
            },
            telemetry = { enable = false },
        },
    },
})

vim.lsp.enable({'gopls', 'jsonls', 'lua_ls'})
