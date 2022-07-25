local M = {}

local overrides = require "custom.overrides"

require "custom.settings"

M.mappings = require "custom.mappings"

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   override = {
      ["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
      ["williamboman/mason"] = overrides.mason,
   },
   user = require "custom.plugins",
}

return M
