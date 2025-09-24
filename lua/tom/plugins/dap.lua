return {
    'mfussenegger/nvim-dap',
    config = function ()
        local dap = require("dap")
        local dapui =  require("dapui")

        dap.adapters.coreclr = {
          type = 'executable',
          command = 'netcoredbg',
          args = {'--interpreter=vscode'}
        }

        dap.configurations.cs = {
          {
            type = "coreclr",
            name = "launch - netcoredbg",
            request = "launch",
            program = function()
                return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
            end,
          },
        }

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end

        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end

        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end

        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end
    end,
    keys = {
        {
            '<leader>db',
            '<cmd>DapToggleBreakpoint<cr>',
            desc = 'Toggle breakpoint (DAP)'
        },
        {
            '<leader>dc',
            '<cmd>DapContinue<cr>',
            desc = 'Continue (DAP)'
        },
        {
            '<leader>dp',
            '<cmd>DapPause<cr>',
            desc = 'Continue (DAP)'
        },
        {
            '<leader>ds',
            '<cmd>DapStepInto<cr>',
            desc = 'Continue (DAP)'
        },
        {
            '<leader>do',
            '<cmd>DapStepOut<cr>',
            desc = 'Continue (DAP)'
        },
        {
            '<leader>dn',
            '<cmd>DapStepOver<cr>',
            desc = 'Continue (DAP)'
        },
    },
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'nvim-neotest/nvim-nio'
    }
}
