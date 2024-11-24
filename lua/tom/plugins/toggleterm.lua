return {
    'akinsho/toggleterm.nvim',
    config = function ()
        require('toggleterm').setup {}
    end,
    keys = {
        {
            '<leader>t',
            '<cmd>ToggleTerm direction=float<cr>',
            desc = 'Show terminal',
        },
        {
            '<ESC>',
            '<C-\\><c-n>',
            mode = 't',
            desc = ' Enter normal mode',
        },
    }
}
