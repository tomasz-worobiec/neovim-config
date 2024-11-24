return {
    'junegunn/fzf.vim',
    keys = {
        {
            '<leader>ff',
            '<cmd>Files<cr>',
            desc = 'Find file (fzf)',
        },
        {
            '<leader>fg',
            '<cmd>RG<cr>',
            desc = 'Grep (fzf)',
        },
        {
            '<leader>fb',
            '<cmd>Buffers<cr>',
            desc = 'Find opened buffer (fzf)',
        },
    },
    dependencies = {
        'junegunn/fzf'
    },
}
