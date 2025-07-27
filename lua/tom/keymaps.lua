local function map(mode, lhs, rhs, desc, opts)
	opts = opts or { silent = true }
	opts.desc = desc
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Helpers
local isVirtualTextEnabled = false
local function toggleVirtualText()
    isVirtualTextEnabled = not isVirtualTextEnabled;
    vim.diagnostic.config({ virtual_text = isVirtualTextEnabled })
end

-- Center on find
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Pane management
map('n', '<leader>q',   '<cmd>q<cr>',       'Close pane')
map('n', '<leader>v',   '<cmd>vsplit<cr>',  'Create vertical split')
map('n', '<leader>h',   '<cmd>split<cr>',   'Create horizontal split')

-- Buffer management
map('n', '<leader>bq',  '<cmd>bd<cr>',      'Close buffer')
map('n', '<leader>[',    '<cmd>bp<cr>',      'Previous buffer')
map('n', '<leader>]',    '<cmd>bn<cr>',      'Next buffer')

-- Toggle inline LSP messages
map('n', '<leader>+', toggleVirtualText, 'Next buffer')
