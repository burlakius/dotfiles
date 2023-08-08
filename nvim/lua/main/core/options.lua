local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursoreline
opt.cursorline = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-", "_")

opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- the encoding written to a file
opt.fileencoding = "utf-8"

-- scroll
opt.scrolloff = 10

-- mouse move event
opt.mousemoveevent = true
