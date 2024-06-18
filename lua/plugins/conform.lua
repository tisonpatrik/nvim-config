local plugins = {
  "stevearc/conform.nvim",
  lazy = false,
  event = {'BufWritePre', "BufReadPre", "BufWritePost"},
  config = function()
    require "configs.conform"
  end,
}
return plugins
