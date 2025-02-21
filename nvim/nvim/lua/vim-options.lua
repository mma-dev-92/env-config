vim.g.mapleader = " "

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.number = true
vim.wo.fillchars="eob: "

-- Highlighting current line
vim.opt.cursorline = true
vim.cmd([[ highlight CursorLine guibg=#2C2C2C ]])
