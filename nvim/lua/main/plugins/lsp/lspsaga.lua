-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	print("Plugin [lspsaga] is not installed")
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<CR>",
	},
	ui = {
		code_action = "",
	},
})
