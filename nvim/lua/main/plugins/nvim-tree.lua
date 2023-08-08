-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("Plugin [nvim-tree] is not installed")
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = false,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable = false,
		ignore = false,
		timeout = 500,
	},
})
