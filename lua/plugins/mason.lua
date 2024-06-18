local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "debugpy",
        "ruff",
        "ruff-lsp",
        "pyright",
        "lua-language-server",
        "stylua",
        "yamllint",
        "jsonlint",
      },
    },
  },
}
return plugins
