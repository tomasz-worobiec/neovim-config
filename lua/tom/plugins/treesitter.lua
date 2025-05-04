return {
    'nvim-treesitter/nvim-treesitter',
    commit = 'a3ca2e60563064cea008555d0b7d031430305b09',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                'c',
                'cpp',
                'c_sharp',
                'lua',
                'python',
                'rust',
                'vim',
                'vimdoc',
                'query',
                'markdown',
                'markdown_inline',
                'javascript',
            }
        }
    end
}
