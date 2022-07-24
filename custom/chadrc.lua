local M = {}

require "custom.settings"

M.mappings = require "custom.mappings"

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins",
}

return M
