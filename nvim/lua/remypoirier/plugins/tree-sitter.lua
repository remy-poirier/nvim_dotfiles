return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "javascript", "html", "css", "csv", "graphql", "java", "javascript", "json", "json5", "prisma", "scala", "sql", "tsx", "typescript", "xml", "yaml" },
			indent = { enable = true },
			highlight = { enable = true },
			sync_install = false,
			auto_install = true,
			additional_vim_regex_highlighting = false,
      incremental_selection = { 
        enable = true,
        keymaps = {
          init_selection = "hi",
          node_incremental = "he",
          scope_incremental = "hc",
          node_decremental = "hr",
        }
      },
		})
	end
}
