-- import nvim-colorizer safely
local status, colorizer = pcall(require, "colorizer")
if not status then
	print("Plugin [colorizer] is not installed")
	return
end

-- configure
colorizer.setup({
	"*",
}, {
	RGB = true, -- #RGB hex codes
	RRGGBB = true, -- #RRGGBB hex codes
	names = true, -- "Name" codes like Blue
	RRGGBBAA = true, -- #RRGGBBAA hex codes
	rgb_fn = false, -- CSS rgb() and rgba() functions
	hsl_fn = false, -- CSS hsl() and hsla() functions
	css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
	mode = "background", -- Set the display mode.
})
-- vim.defer_fn(function()
-- 	require("colorizer").attach_to_buffer(0)
-- end, 0)
