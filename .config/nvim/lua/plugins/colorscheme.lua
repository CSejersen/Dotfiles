return {
	-- "navarasu/onedark.nvim", priorrity = 1000,
	-- "catppuccin/nvim",
	"yorumicolors/yorumi.nvim",
	name = "yorumi",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("yorumi")
	end,
}
