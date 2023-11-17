local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
-- We want to keep recent files only opened in working directory
vim.keymap.set('n', '<leader>fr', function()
 builtin.oldfiles({only_cwd = true})
end, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- remap some of the tsserver default keybindings that do not working as expected with monorepo
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
