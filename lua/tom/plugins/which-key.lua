return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        icons = {
            mappings = false
        },
        triggers = {}
    },
    keys = {
        {
            '<leader>?',
            function()
                require('which-key').show({ global = true })
            end,
            desc = 'Show keymaps (which-key)'
        }
    }
}
