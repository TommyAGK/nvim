vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy finder

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- theme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- A pretty list for showing diagnostics, references,
    -- telescope results, quickfix and location lists to
    -- help you solve all the trouble your code is causing.
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false
            }
        end
    })

    -- highlighting of code and stuff
    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate'
        })
    use('nvim-treesitter/playground')                                                          -- shows the code as seen by treesitter
    use {'theprimeagen/harpoon', branch = "harpoon2"} -- clever jumping
    use('mbbill/undotree')                                                                     -- bigass undo system
    use('tpope/vim-fugitive')                                                                  -- git plugin


    -- Beginning language Server stuff
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },   -- Required
            { 'williamboman/mason.nvim' }, -- Required
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Required
            { 'hrsh7th/cmp-path' }, -- Required
            { 'hrsh7th/cmp-nvim-lua' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required

            -- snippets
            { 'saadparwaiz1/cmp_luasnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Required

        }
    }
    -- end of language server stuff

    -- silly stuff
    use { 'eandrju/cellular-automaton.nvim' }
    -- focus you bastard
    use {'folke/zen-mode.nvim'}
end)
