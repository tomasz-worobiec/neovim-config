local opt = vim.opt

opt.number          = true
opt.relativenumber  = true
opt.autoindent      = true
opt.cursorline      = true
opt.cursorlineopt   = 'both'
opt.cursorcolumn    = false
opt.ignorecase      = true
opt.splitright      = true
opt.splitbelow      = true
opt.wrap            = true
opt.expandtab       = true
opt.shiftwidth      = 4
opt.tabstop         = 4
opt.swapfile        = false
opt.signcolumn      = 'yes'

-- Map space as leader
vim.keymap.set('', '<space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw file manager
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Dont show LSP messages inline
vim.diagnostic.config({
	virtual_text = false,
})
