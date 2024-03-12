return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
    },
    config = function ()
        local dap = require("dap")

        require("dapui").setup()
        local dapui = require("dapui")

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

        --adapters
        dap.adapters.gdb = {
          type = "executable",
          command = "gdb",
          args = { "-i", "dap" }
        }

        local c_cpp_rust_config = {
          {
            name = "Launch",
            type = "gdb",
            request = "launch",
            program = function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = "${workspaceFolder}",
            stopAtBeginningOfMainSubprogram = false,
          },
        }

        dap.configurations.c = c_cpp_rust_config
        dap.configurations.cpp = c_cpp_rust_config
        dap.configurations.rust = c_cpp_rust_config

    end
}
