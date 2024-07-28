return{
	"akinsho/bufferline.nvim",
	config = function ()
		require("bufferline").setup({
			options = {
				themable = true,
				separator_style= "slant"
			}
		})
	end
}
