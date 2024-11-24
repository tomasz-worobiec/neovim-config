return {
	'folke/trouble.nvim',
    tag = 'v3.6.0',
    cmd = 'Trouble',
    config = function ()
        require('trouble').setup {}
    end,
    keys = {
        {
            '<leader>xx',
            '<cmd>Trouble diagnostics toggle<cr>',
            desc = 'Workspace diagnostics (Trouble)',
        },
        {
            '<leader>xb',
            '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
            desc = 'Buffer diagnostics (Trouble)',
        },
        {
            '<leader>cs',
            '<cmd>Trouble symbols toggle focus=true filter.buf=0<cr>',
            desc = 'Buffer symbols (Trouble)',
        }
    },
	dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
}
