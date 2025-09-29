vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.g.mapleader = " "

vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>O")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "<", "<><Left>")
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "\"", "\"\"<Left>")

vim.keymap.set('n', '<C-s>', ':write<CR>')
vim.keymap.set('n', '<C-c>', ':quit<CR>')


vim.pack.add({
	{src = 'https://github.com/blazkowolf/gruber-darker.nvim', name = 'gruber-darker'},
	{src = 'https://github.com/neovim/nvim-lspconfig'},
	{src = 'https://github.com/williamboman/mason.nvim', name = 'mason' },
    {src = 'https://github.com/williamboman/mason-lspconfig.nvim', name = 'mason-lspconfig' },
})

require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
    },
    automatic_installation = true,
})

require("gruber-darker").setup({
    bold = true,
    italic = {
		strings = false,
        comments = false,
		operators = false,
		folds = false,
    },
})

vim.cmd.colorscheme("gruber-darker")

vim.cmd(":hi statusline guibg=NONE")
