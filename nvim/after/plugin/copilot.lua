-- Map copilot-next to ctrl-alt-${key} in insert mode
vim.keymap.set("i", "<C-S-n>", "<Plug>(copilot-next)", { noremap = false })
vim.keymap.set("i", "<C-S-p>", "<Plug>(copilot-previous)", { noremap = false })
vim.keymap.set("i", "<C-S-s>", "<Plug>(copilot-suggest)", { noremap = false })
