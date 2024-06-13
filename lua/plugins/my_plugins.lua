
local plugins ={
--   {
--    "github/copilot.vim",
--    lazy = false,
--    config = function()
--      vim.g.copilot_no_tab_map = true;
--      vim.g.copilot_assume_mapped = true;
--      vim.g.copilot_tab_fallback = "";
--    end
--  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black","debugpy","mypy","ruff-lsp","pyright",
   			"lua-language-server", "stylua",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end,
  },
  {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
    "vim", "lua", "vimdoc",
    "python",
    "html", "css"},
    },
  },
}
return plugins
