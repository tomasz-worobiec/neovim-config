return {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
        local lsp = require('lspconfig')

        -- C
        lsp.clangd.setup {
            cmd = { os.getenv('NVIM_LSP_CLANGD_CMD') or 'clangd' },
        }

        -- C#
        local omnisharp_extended = require('omnisharp_extended')
        lsp.omnisharp.setup {
            cmd = {
                os.getenv('NVIM_LSP_OMNISHARP_CMD') or 'OmniSharp',
                '-z',
                '--hostPID', tostring(vim.fn.getpid()),
                'DotNet:enablePackageRestore=false',
                '--encoding', 'utf-8',
                '--languageserver'
            },
            handlers = {
                ['textDocument/definition'] = omnisharp_extended.definition_handler,
                ['textDocument/typeDefinition'] = omnisharp_extended.type_definition_handler,
                ['textDocument/references'] = omnisharp_extended.references_handler,
                ['textDocument/implementation'] = omnisharp_extended.implementation_handler
            },
            enable_import_completion = true,
            enable_roslyn_analyzers = true
        }

        -- Lua
        lsp.lua_ls.setup {
            cmd = { os.getenv('NVIM_LSP_LUA_LS_CMD') or 'lua-language-server' },
        }

        -- Nix
        lsp.nil_ls.setup {
            cmd = { os.getenv('NVIM_LSP_NIL_LS_CMD') or 'nil' },
        }

        -- Rust
        lsp.rust_analyzer.setup {
            cmd = { os.getenv('NVIM_LSP_RUST_ANALYZER_CMD') or 'rust-analyzer' },
        }
    end,
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
    dependencies = {
            'Hoffs/omnisharp-extended-lsp.nvim',
    },
}
