return { "folke/trouble.nvim",
  branch = "dev", -- IMPORTANT!
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>tn",
      "<cmd>Trouble diagnostics next skip_groups=true jump=true<cr>",
      desc = "Next Diagnostic (Trouble)",
    },
    {
      "<leader>tp",
      "<cmd>Trouble diagnostics prev skip_groups=true jump=true<cr>",
      desc = "Previous diagnostic (Trouble)",
    }
  },
  opts = {}, -- for default options, refer to the configuration section for custom setup.
}
