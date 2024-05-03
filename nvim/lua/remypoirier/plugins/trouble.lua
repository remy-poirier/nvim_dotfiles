return {
  "folke/trouble.nvim",
  branch = "dev", -- IMPORTANT!
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>tn",
      "<cmd>Trouble diagnostics next skip_groups=true jump=true",
      desc = "Next Diagnostic (Trouble)",
    },
    {
      "<leader>tp",
      "<cmd>Trouble diagnostics previous skip_groups=true jump=true",
      desc = "Previous diagnostic (Trouble)",
    }
  },
  opts = {}, -- for default options, refer to the configuration section for custom setup.
}
