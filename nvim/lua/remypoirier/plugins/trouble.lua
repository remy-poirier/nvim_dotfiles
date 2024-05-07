return {
  "folke/trouble.nvim",

  branch = "dev", -- IMPORTANT!
  keys = {
    {
      "<leader>gt",
      "<cmd>Trouble diagnostics toggle focus=true<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>tn",
      "<cmd>Trouble diagnostics next skip_groups=true jump=true<cr>",
      desc = "Next Diagnostic (Trouble)",
    },
    {
      "<leader>tp",
      "<cmd>Trouble diagnostics prev skip_groups=true jump=tru<cr>",
      desc = "Previous diagnostic (Trouble)",
    },
  },
  opts = {
    auto_close = true, -- This should close the trouble window when items are empty
  }, -- for default options, refer to the configuration section for custom setup.
}
