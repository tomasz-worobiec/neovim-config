return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup {
            mappings = {
                basic = false,
                extra = false
            }
        }
    end,
    keys = {
        {
            '<leader>c',
            '<Plug>(comment_toggle_linewise)',
            desc = 'Line comment, movement (comment)'
        },
        {
            '<leader>cc',
            '<Plug>(comment_toggle_linewise_current)',
            desc = 'Line comment, current line (comment)'
        },
        {
            '<leader>cb',
            '<Plug>(comment_toggle_blockwise)',
            desc = 'Block comment, movement (comment)'
        },
        -- Visual mode
        {
            '<leader>cc',
            '<Plug>(comment_toggle_linewise_visual)',
            mode = 'x',
            desc = 'Line comment, selection (comment)'
        },
        {
            '<leader>cb',
            '<Plug>(comment_toggle_blockwise_visual)',
            mode = 'x',
            desc = 'Block comment, selection (comment)'
        },
    }
}
