local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff-lsp",
        "pyright",
        "isort",
        "lua-language-server",
        "stylua",
      },
    },
  },
}
return plugins
