return{
	"rcarriga/nvim-notify",
	config = function ()
		vim.notify = require("notify")
		require("notify")("Semangat shifting career !!")
	end
}
