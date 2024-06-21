local plugins = {
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      -- Update the path passed to setup to point to your system or virtual env python binary
      require("dap-python").setup "/usr/bin/python3"
    end,
  },
}

return plugins
