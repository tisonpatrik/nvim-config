local plugins = {
  "stevearc/conform.nvim",
  event = 'BufWritePre', "BufReadPre",
  config = function()
    require "configs.conform"
  end,
}



return plugins
