local M = {}

M.disabled = {
   n = {
      -- format
      ["<leader>fm"] = "",

      -- save
      ["<C-s>"] = "",

      -- close buffer
      ["<leader>x"] = "",

      -- next/prev diagnostics
      ["[d"] = "",
      ["d]"] = "",

      -- rename
      ["<leader>ra"] = "",

      -- workspaces
      ["<leader>wa"] = "",
      ["<leader>wr"] = "",
      ["<leader>wl"] = "",

      -- whickey
      ["<leader>wK"] = "",
      ["<leader>wk"] = "",

      -- nvimtree
      ["<C-n>"] = "",
      ["<leader>e"] = "",

      -- telescope
      ["<leader>fw"] = "",
   },
}

M.basic = {
   n = {
      -- save
      ["<leader>w"] = { "<cmd> w <CR>", "﬚  save file" },

      -- close buffer + hide terminal buffer
      ["<leader>x"] = {
         function()
            vim.cmd('w')
            require("core.utils").close_buffer()
         end,
         "   save & close buffer",
      },

      ["<leader>c"] = {
         function()
            require("core.utils").close_buffer()
         end,
         "   close buffer",
      },

      -- workspaces
      ["<leader>Wa"] = {
         function()
            vim.lsp.buf.add_workspace_folder()
         end,
         "   add workspace folder",
      },

      ["<leader>Wr"] = {
         function()
            vim.lsp.buf.remove_workspace_folder()
         end,
         "   remove workspace folder",
      },

      ["<leader>Wl"] = {
         function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
         end,
         "   list workspace folders",
      },
   },
}

M.whichkey = {
   n = {
      ["<leader>WK"] = {
         function()
            vim.cmd "WhichKey"
         end,
         "   which-key all keymaps",
      },
      ["<leader>Wk"] = {
         function()
            local input = vim.fn.input "WhichKey: "
            vim.cmd("WhichKey " .. input)
         end,
         "   which-key query lookup",
      },
   },
}

M.lsp = {
   n = {
      -- format
      ["<leader>lf"] = {
         function()
            vim.lsp.buf.formatting()
         end,
         "   lsp formatting",
      },

      -- info
      ["<leader>li"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "   floating diagnostic",
      },

      -- next/prev diagnostics
      ["<leader>lk"] = {
         function()
            vim.diagnostic.goto_prev()
         end,
         "   lsp prev diagnostic",
      },

      ["<leader>lj"] = {
         function()
            vim.diagnostic.goto_next()
         end,
         "   lsp next diagnostic",
      },

      ["<leader>lr"] = {
         function()
            require("nvchad.ui.renamer").open()
         end,
         "   lsp rename",
      },
   },
}

M.nvimtree = {
   n = {
      -- toggle
      ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },

      -- focus
      ["<leader>E"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
   },
}

M.telescope = {
   n = {
      ["<leader>ft"] = { "<cmd> Telescope live_grep <CR>", "   find text (live grep)" },
   }
}

return M
