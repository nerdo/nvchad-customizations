local M = {}

M.nvimtree = {
   view = {
      number = true,
   },
   actions = {
      open_file = {
         quit_on_open = true,
      },
   },
}

M.mason = {
  ensure_installed = {
    "html-lsp",
    "css-lsp",
    "cssmodules-language-server",
    "emmet-ls",
    "intelephense",
    "json-lsp",
    "lua-language-server",
    "rust-analyzer",
    "tailwindcss-language-server",
    "typescript-language-server",
    "yaml-language-server",
  }
}

return M
