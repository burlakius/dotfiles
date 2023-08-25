-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	print("Plugin [null_ls] is not installed")
	return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- configure null_ls
null_ls.setup({
	-- setup formatters & linters
	sources = {
		-- diagnostics.golangci_lint.with({
		-- 	method = null_ls.methods.DIAGNOSTICS,
		-- }),

		formatting.fixjson, -- json formatter

		formatting.stylua, -- lua formatter
		formatting.black, -- python formatter
		formatting.gofmt, -- go formatter

		formatting.beautysh, -- bash formatter

		formatting.prettier, -- frontend formatting
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
