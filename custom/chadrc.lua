local M = {}

local pluginConfigs = require "custom.plugins.configs"

require "custom.settings"

M.mappings = require "custom.mappings"

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   override = {
      ["kyazdani42/nvim-tree.lua"] = pluginConfigs.nvimtree,
   },
   user = require "custom.plugins",
}

return M
