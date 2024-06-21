local plugins = {
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"

      -- Define a custom highlight group for the red dot
      vim.cmd [[highlight DapBreakpointDot guifg=#FF0000 guibg=NONE]]

      -- Define the sign for the breakpoint using the custom highlight group
      vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpointDot", linehl = "", numhl = "" })

      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
}
return plugins
