return {
   -- autoclose tags in html, jsx etc
   ["windwp/nvim-ts-autotag"] = {
      after = "nvim-treesitter",
      config = function()
         require "custom.plugins.nvim-ts-autotag"
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },
}
