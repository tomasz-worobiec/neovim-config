return {
    'neovim/nvim-lspconfig',
    lazy = false,
    keys = {
        {
            'gd',
            function()
                vim.lsp.buf.definition()
            end,
            desc = 'Go to definition (LSP)'
        },
        {
            'gD',
            function()
                vim.lsp.buf.declaration()
            end,
            desc = 'Go to declaration (LSP)'
        },
        {
            'go',
            function()
                vim.lsp.buf.type_definition()
            end,
            desc = 'Go to type definition (LSP)'
        },
        {
            'gi',
            function()
                vim.lsp.buf.implementation()
            end,
            desc = 'List implementations (LSP)'
        },
        {
            'gr',
            function()
                vim.lsp.buf.references()
            end,
            desc = 'List references (LSP)'
        },
        {
            'gR',
            function()
                vim.lsp.buf.rename()
            end,
            desc = 'Rename symbol (LSP)'
        },
        {
            'gs',
            function()
                vim.lsp.buf.signature_help()
            end,
            desc = 'Show signature (LSP)'
        },
    },
}
