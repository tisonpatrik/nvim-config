local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "debugpy",
        "mypy",
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
