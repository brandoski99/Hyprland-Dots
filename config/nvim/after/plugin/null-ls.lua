local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.clang_format,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.c", "*.h"},
	callback = function ()
		vim.lsp.buf.format({ async = false})
	end,
})

