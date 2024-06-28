return {
    {
    "rose-pine/neovim", 
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme rose-pine]])
    end,
},
{
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim" 
    },
},
{
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup({
            icons = false
            })
        end,
},
}
