return {
  {
    "mfussenegger/nvim-dap",
    config = function() -- remplace opts par config
      local dap = require("dap")
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
          args = { "--port", "${port}" },
        },
      }
      dap.configurations.c = {
        {
          name = "Debug C",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Exécutable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = vim.fn.getcwd(), -- utilise le cwd courant automatiquement
          stopOnEntry = false,
          args = {},
        },
      }
    end,
  },
}
