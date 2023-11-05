vim.cmd.colorscheme "catppuccin"

require("catppuccin").setup({
	flavour = "macchiato",
})

-- We need to call this after having defined our theme
vim.cmd.colorscheme "catppuccin"
