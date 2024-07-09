local api = require("remote-sshfs.api")

vim.keymap.set("n", "<leader>rc", api.connect, { desc = "Connect via ssh" })
vim.keymap.set("n", "<leader>rd", api.disconnect, { desc = "Disconnect from ssh" })
vim.keymap.set("n", "<leader>re", api.edit, { desc = "Edit ssh config" })

local builtin = require("telescope.builtin")
local connections = require("remote-sshfs.connections")
vim.keymap.set("n", "<leader>rff", function()
	if connections.is_connected then
		api.find_files()
	else
		builtin.find_files()
	end
end, { desc = "Find files on remote host" })

vim.keymap.set("n", "<leader>rfg", function()
	if connections.is_connected then
		api.live_grep()
	else
		builtin.live_grep()
	end
end, { desc = "Grep for text on remote host" })
