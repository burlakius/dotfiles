-- import bufferline safely
local status, bufferline = pcall(require, "bufferline")
if not status then
	print("Plugin [bufferline] is not installed")
	return
end

-- bufferline setup
bufferline.setup({
	options = {
		mode = "buffers", -- set to "tabs" to only show tabpages instead
		style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
		themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default

		-- close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
		close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"

		indicator = {

			style = "none",
		},

		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		truncate_names = true, -- whether or not tab names should be truncated
		tab_size = 20,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local result = " "
			for diagnostic_level, diangostic_count in pairs(diagnostics_dict) do
				local symbol = diagnostic_level == "error" and " "
					or (diagnostic_level == "warning" and " " or "󰛨 ")
				result = result .. symbol .. diangostic_count
			end
			return result
		end,

		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = false,
			},
		},
		color_icons = true, -- whether or not to add the filetype icon highlights

		show_buffer_icons = true, -- disable filetype icons for buffers
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
		persist_buffer_sort = false, -- whether or not custom sorted buffers should persist

		separator_style = "thin",
		enforce_regular_tabs = true,
		always_show_bufferline = false,
		hover = {
			enabled = true,
			delay = 100,
			reveal = { "close" },
		},
		sort_by = "insert_after_current",
	},
})
