require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debug Breakpoint" })

map("n", "<leader>dbr", function()
  require("dap-python").test_method()
end, { desc = "Debug Python Run" })

map("i", "<Space>i", function()
  return vim.fn["copilot#Accept"] "<CR>"
end, {
  expr = true,
  replace_keycodes = false,
  desc = "Accept Copilot suggestion",
})
vim.g.copilot_no_tab_map = true
