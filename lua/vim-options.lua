vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.clipboard = "unnamedplus"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>cs", ":nohl<CR>", {})
