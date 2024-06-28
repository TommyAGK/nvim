return {
    {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({with_sync = true })
    end,
    defaults = {
        lazy = false,
        version = nil
    },
    config = function()
        vim.cmd([[:TSUpdate]])
    end,
},
    {
        "nvim-treesitter/playground"
    }
}
