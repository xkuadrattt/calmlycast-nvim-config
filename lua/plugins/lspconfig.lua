return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.emmet_ls.setup({
				cmd = { "emmet-ls", "--stdio" },
				filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue" },
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true,
						},
					},
				},
			})
		end,
	},
}
