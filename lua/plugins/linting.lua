local plugins = {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = {"ruff"},
      json = {"jsonlint"},
      yaml = {"yamllint"},
    }
    local lint_augroup = vim.api.nvim_create_augroups("lint", {clear = true})

    vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"},{
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end
    })

  end,
}
return plugins
