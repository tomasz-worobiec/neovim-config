return {
    'christoomey/vim-tmux-navigator',
    cmd = {
        'TmuxNavigateLeft',
        'TmuxNavigateDown',
        'TmuxNavigateUp',
        'TmuxNavigateRight',
    },
    init = function()
        vim.g.tmux_navigator_no_mappings = true
    end,
    keys = {
        {
            '<M-h>',
            '<cmd>TmuxNavigateLeft<cr>'
        },
        {
            '<M-j>',
            '<cmd>TmuxNavigateDown<cr>'
        },
        {
            '<M-k>',
            '<cmd>TmuxNavigateUp<cr>'
        },
        {
            '<M-l>',
            '<cmd>TmuxNavigateRight<cr>'
        },
    },
}
