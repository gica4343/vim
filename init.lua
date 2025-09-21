vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.cmd(":hi statusline guibg=NONE")
