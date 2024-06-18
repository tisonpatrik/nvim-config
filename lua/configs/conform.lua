local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff" },
  },

  format_on_save = {
    async = false,
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
require("conform").setup(options)
