-- plugins/telescope.lua:
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    require("telescope").setup {
      pickers = {
        live_grep = {
          glob_pattern = {"!*.lock", "!README.md"}
        }
      }
    }
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fs', function()
      builtin.live_grep()
    end)
    -- We want to keep recent files only opened in working directory
    vim.keymap.set('n', '<leader>fr', function()
      builtin.oldfiles({only_cwd = true})
    end, {})
    vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

    -- remap some of the tsserver default keybindings that do not working as expected with monorepo
    vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
    vim.keymap.set('n', 'gr', builtin.lsp_references, {})

    vim.keymap.set('n', '<leader>da', builtin.diagnostics, {})

    vim.keymap.set('n', '<leader>fws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({search = word})
    end)

    vim.keymap.set('n', '<leader>fWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({search = word})
    end)
  end
}
