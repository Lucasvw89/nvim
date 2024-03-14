return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        {
            "williamboman/mason.nvim",
            ensure_installed = { "cpptools" }
        },
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

        dap.adapters.cppdbg = {
          type = "executable",
          id = "cppdbg",
          command = "C:\\Users\\lucas\\AppData\\Local\\nvim-data\\mason\\packages\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe",
          options = {
            detached = false,
          },
        }
        local c_cpp_rust_config = {
          {
            name = "Debug C/C++ g++.exe",
            type = "cppdbg",
            request = "launch",
            program = function()
              return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
            end,
            cwd = vim.fn.getcwd(),
          },
        }


        dap.configurations.c = c_cpp_rust_config
        dap.configurations.cpp = c_cpp_rust_config
        dap.configurations.rust = c_cpp_rust_config


        vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", {})
        vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", {})

    end

}

