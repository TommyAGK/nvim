-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  vim.cmd('colorscheme rose-pine')

  use (
        'nvim-treesitter/nvim-treesitter',
	{  run = ':TSUpdate'
    })
    use ( 'nvim-treesitter/playground')
    use { 'theprimeagen/harpoon', branch = "harpoon2", requires = {{"nvim_lua/plenary.nvim"}}}
    use ( 'mbbill/undotree')
    use ( 'tpope/vim-fugitive')
    use {
          'VonHeikemen/lsp-zero.nvim',
           branch = 'v3.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Required
      'williamboman/mason.nvim',
     -- run = function()
     --   pcall(vim.cmd, 'MasonUpdate')
     -- end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'hrsh7th/cmp-buffer'}, -- Required
    {'hrsh7th/cmp-nvim-lua'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    {'saadparwaiz1/cmp_luasnip'}, -- Required
    {'rafamadriz/friendly-snippets'}, -- Required

  }
}
end)
