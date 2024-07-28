return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = { theme = "material", section_separators = { left = "", right = "" } },
		})
	end,
}
