local M = {}

local overrides = require "custom.overrides"

vim.opt.scrolloff = 999

M.ui = {
  theme = "ayu-dark",
}

M.mappings = require "custom.mappings"

M.plugins = {
   override = {
      ["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
      ["williamboman/mason.nvim"] = overrides.mason,
   },
   user = require "custom.plugins",
}

return M
