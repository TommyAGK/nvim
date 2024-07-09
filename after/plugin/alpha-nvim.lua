local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[  /     /|\    /~\  |~\  |\  /| ]],
    [[ /     / | \  /   \ |  \ | \/ | ]],
    [[/___  /  |  \ \   / |  / | /\ | ]],
    [[   /     |     \ /  |_/  |/  \| ]],
    [[  /      |     / \  | \  |    | ]],
    [[ /       |    /   \ |  \ |    | ]],
}
dashboard.section.buttons.val = {
    dashboard.button("f", " Find file", ":Telescope find_files <CR>"),
    dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", " Find project", ":Telescope projects <CR>"),
    dashboard.button("r", " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("t", " Find text", ":Telescope live_grep <CR>"),
    dashboard.button("c", " Config", ":Telescope find_files cwd=~/.config/nvim/ <CR>"),
    dashboard.button("u", " Update", ":Lazy<CR>"),
    dashboard.button("q", " Quit", ":qa<CR>"),
}

local function footer()
    return [[Why problem make, when no problem have, don't want?
                       -- Tommy]]
end

local os = vim.loop.os_uname().sysname
if os == "Windows_NT" then
    --dashboard.section.buttons.val[6] = dashboard.button("c", " Edit nvim configs", ":e ~/AppData/Local/nvim/ <CR>")
    dashboard.section.buttons.val[6] =
        dashboard.button("c", " Edit nvim configs", ":Telescope find_files cwd=~/AppData/Local/nvim/ <CR>")
end

dashboard.section.footer.val = footer()

dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Macro"
dashboard.section.footer.opts.hl = "Type"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
