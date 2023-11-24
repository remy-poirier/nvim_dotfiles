vim.keymap.set("n", "<S-m>", vim.cmd.Ex)

-- Allow moving multiple lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Keep cursor position when using J (which wraps next line to this one)
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down and up half a screen, but keep cursor at the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep highlighting at the middle of the screen
vim.keymap.set("n", "n", "nzzzv")

-- Will paste word and will keep it in buffer clipboard (it will not be replaced by deleted word)
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>p", "\"_dP")

-- Will paste item from system clipboad inside buffer
vim.keymap.set("n", "<S-p>", "\"*p")
vim.keymap.set("v", "<S-p>", "\"*p")

-- Allow <leader>y to add content also to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<S-y>", '"+y')
vim.keymap.set("v", "<S-y>", '"+y')

-- Navigating back and forth to our files
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Quickfix window shortcut (used for example when using "gr" which is "go to references")
vim.keymap.set("n", "<leader>o", "<cmd>copen<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>ccl<CR>")
