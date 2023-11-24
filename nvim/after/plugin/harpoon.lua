-- add some keymaps
local opts = { noremap = true, silent = true }

local nav_title = 'Navigation'
local timeout = 5

function HarpoonNavNext()
  require('harpoon.ui').nav_next()
  vim.api.nvim_command("lua vim.notify('Navigated to: ' .. vim.fn.bufname(), 'info', { title = '" .. nav_title .. "', timeout = '" .. timeout .. "' })")
end

function HarpoonNavPrev()
  require('harpoon.ui').nav_prev()
  vim.api.nvim_command("lua vim.notify('Navigated to: ' .. vim.fn.bufname(), 'info', { title = '" .. nav_title .. "', timeout = '" .. timeout .. "' })")
end

function HarpoonNavToFile(file)
  require ('harpoon.ui').nav_file(file)
  vim.api.nvim_command("lua vim.notify('Navigated to: ' .. vim.fn.bufname(), 'info', { title = '" .. nav_title .. "', timeout = '" .. timeout .. "' })")
end

function HarpoonAddToMarks()
  require('harpoon.mark').add_file()
  vim.api.nvim_command("lua vim.notify('File successfully added to Harpoon marks', 'success', { title = 'Sheeesh' })")
end

function HarpoonClearAll()
  require('harpoon.mark').clear_all()
  vim.api.nvim_command("lua vim.notify('All Harpoon marks cleared', 'success', { title = 'Sheeesh' })")
end

vim.keymap.set("n", "<leader>ha", ":lua HarpoonAddToMarks()<cr>", opts)
vim.keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
vim.keymap.set("n", "<leader>hn", ":lua HarpoonNavNext()<cr>", opts)
vim.keymap.set("n", "<leader>hp", ":lua HarpoonNavPrev()<cr>", opts)
vim.keymap.set("n", "<leader>hc", ":lua HarpoonClearAll()<cr>", opts)
vim.keymap.set("n", "<C-&>", ":lua HarpoonNavToFile(1)<cr>", opts)
vim.keymap.set("n", "<C-é>", ":lua HarpoonNavToFile(2)<cr>", opts)
vim.keymap.set("n", "<C-\">", ":lua HarpoonNavToFile(3)<cr>", opts)
vim.keymap.set("n", "<C-'>", ":lua HarpoonNavToFile(4)<cr>", opts)
