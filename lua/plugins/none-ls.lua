return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local inlayhints = require('lsp-inlayhints')
		local function on_attach(client, bufnr)
			if client.server_capabilities.document_formatting then
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ async = true })
					end,
				})
			end
			inlayhints.on_attach(client, bufnr)
		end
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua.with({
					extra_args = { "--indent-width", "4" },
				}),
				null_ls.builtins.formatting.prettierd.with({
					extra_args = { "--tab-width", "4" },
				}),
			},
			on_attach = on_attach,
		})
	end,
}
