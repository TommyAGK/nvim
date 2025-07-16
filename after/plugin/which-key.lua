local wk = require("which-key")
local ts = require("telescope.builtin")
local tr = require("nvim-tree.api")
local lsp = require("lsp-zero")

-- which-key defaults to normal mode
wk.add({
    { "<leader>p",  group = "Telescope file browser" },
    { "<leader>b",  ts.buffers,                      desc = "Telescope buffers" },
    { "<leader>pf", ts.find_files,                   desc = "Find files" },
    { "<leader>pg", ts.git_files,                    desc = "Find files in git repo" },
    {
        "<leader>ps",
        function()
            ts.grep_string({ search = vim.fn.input("find word greplike > ") })
        end,
        desc = "Search for text"
    },
})

-- harpoon parts
local harpoon = require("harpoon")

wk.add({
    { "<C>",  group = "Harpoon stuff" },
    { "<C>e", desc = "View Harpoon list" },
    { "<C>h", desc = "View Harpoon list" },
    { "<C>n", desc = "View Harpoon list" },
    { "<C>s", desc = "View Harpoon list" },
    { "<C>t", desc = "View Harpoon list" },
})

wk.add({
    { "<C-S>N", desc = "Next buffer in harpoon" },
    { "<C-S>P", desc = "Previous buffer in harpoon" },
})


wk.add({
    { "<leader>rff", desc = "Remote file actions" },
})

-- LSP stuff
wk.add({
    --                    lsp_zero.buf.definition()
    { "gd", desc = "Go to definition" },
    { "gD", desc = "Go to declaration of element" },
    { "go", desc = "Go to type defintion" },
    { "gO", desc = "Display symbols in document" },
    { "gs", desc = "Display signature help" },
    { "gr", desc = "Go to references" },
    { "K",  desc = "Get info on element" },
    { "F2", desc = "refactor with new name" },
    { "F3", desc = "Format code, async" },
    { "F4", desc = "Code actions" },
})


-- generic leader namings
wk.add({
    { "<leader>Z", desc = "Zen" },
    { "<leader>a", desc = "Add file to harpoon jump list" },
    { "<leader>d", desc = "Dashboard" },
    { "<leader>g", desc = "Git" },
    { "<leader>r", desc = "Remote Host" },
    { "<leader>z", desc = "LSP" },
})

wk.add({
    { "<leader>e", vim.cmd.NvimTreeToggle, desc = "toggle nvim tree" },
})

wk.add({
    { "<leader>rf", desc = "remote file actions" },
})
