-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Plugin [mason] is not installed")
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("Plugin [mason-lspconfig] is not installed")
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("Plugin [mason-null-ls] is not installed")
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"lua_ls",

		"html",
		"cssls",
		"jsonls",

		"pyright",
		"gopls",
		"rust_analyzer",

		"bashls",
		"dockerls",
		"docker_compose_language_service",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"stylua", -- lua formatter
		"fixjson", -- json formatter

		"black", -- python formatter
		"beautysh", -- sh formatter

		"prettier", -- frontend
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
