local wk = require("which-key")
local ts = require("telescope.builtin")

-- which-key defaults to normal mode

-- telescope parts
-- wk.register({
-- 	["<leader>p"] = {
-- 		name = "telescope file browser",
-- 		f = { ts.find_files, "find files" },
-- 		g = { ts.git_files, "find files in git repo" },
-- 		s = {
-- 			function()
-- 				ts.grep_string({ search = vim.fn.input("find word greplike > ") })
-- 			end,
-- 			"Search for text",
-- 		},
-- 	},
-- })

wk.add({
    { "<leader>p",  group = "Telescope file browser" },
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

--wk.register({
--    ["<C>"] = {
--        name = "Harpoon stuff",
--        e = {
--            "view harpoon list",
--        },
--        h = {
--            "view harpoon list",
--        },
--        t = {
--            "view harpoon list",
--        },
--        n = {
--            "view harpoon list",
--        },
--        s = {
--            "view harpoon list",
--        },
--    },
--})
-- wk.register({
--     ["<C-S>"] = {
--         P = {
--             "Previous buffer in harpoon",
--         },
--         N = {
--             "Next buffer in harpoon",
--         },
--     },
-- })

-- ssh stuff
--wk.register({
--    ["<leader>rf"] = {
--        f = { "Remote file actions" },
--    },
--})

wk.add({
    { "<leader>rff", desc = "Remote file actions" },
})

-- LSP stuff
wk.add({
    { "K", desc = "Get info on element" },
})

--wk.register({
--    ["K"] = { "Get info on element" },
--})

-- generic leader namings
wk.add({
    { "<leader>Z", desc = "Zen" },
    { "<leader>a", desc = "Add file to harpoon jump list" },
    { "<leader>d", desc = "Dashboard" },
    { "<leader>g", desc = "Git" },
    { "<leader>r", desc = "Remote Host" },
    { "<leader>z", desc = "LSP" },
})
-- wk.register({
--     ["<leader>"] = {
--         a = { "Add file to harpoon jump list" },
--         r = { "Remote host" },
--         g = { "Git" },
--         d = { "Dashboard" },
--         Z = { "Zen" },
--         z = { "LSP" },
--     },
-- })
