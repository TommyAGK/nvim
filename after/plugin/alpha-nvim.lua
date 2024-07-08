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
	-- TODO fix this shitty "Find Projects"
	dashboard.button("p", " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
	dashboard.button("r", " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", " Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " Config", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("u", " Update", ":PackerSync<CR>"),
	dashboard.button("q", " Quit", ":qa<CR>"),
}
local function footer()
	return "Bråt tu ju bai storm dev"
end

dashboard.section.footer.val = footer()

dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Macro"
dashboard.section.footer.opts.hl = "Type"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
