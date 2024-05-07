-- To enable a colorscheme, disable the vim.cmd command
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    config = function()
      require("rose-pine").setup({
        variant = "moon",
      })

      vim.cmd([[colorscheme rose-pine]])
    end
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    config = function()
      -- load colorscheme
      -- vim.cmd([[colorscheme tokyonight]]) -- Ok this one works
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
      })

      -- We need to call this after having defined our theme
      -- vim.cmd([[colorscheme catppuccin]])
    end
  }
}
