local M = {}

M.disabled = {
	n = {
		-- format
		["<leader>fm"] = "",

		-- close buffer
		["<leader>x"] = "",

		-- sneak
		[";"] = "",

		-- next/prev diagnostics
		["[d"] = "",
		["d]"] = "",

		-- rename
		["<leader>ra"] = "",

		-- nvimtree
		["<C-n>"] = "",
		["<leader>e"] = "",

		-- telescope
		["<leader>fw"] = "",
		["<leader>cm"] = "",
		["<leader>gt"] = "",

		-- lsp
		["gr"] = "",

		-- nvterm
		["<leader>h"] = "",
		["<leader>v"] = "",
	},
}

M.basic = {
	n = {
		-- save
		["<leader>;"] = { "<cmd> w <CR>", "﬚  save file" },
		[",;"] = { "<cmd> w <CR>", "﬚  save file" },

		-- close buffer + hide terminal buffer
		[",x"] = {
			function()
				vim.cmd("w")
				require("core.utils").close_buffer()
			end,
			"   save & close buffer",
		},

		[",c"] = {
			function()
				require("core.utils").close_buffer()
			end,
			"   close buffer",
		},

		-- highlighting
		["<leader>h"] = { ":noh<CR>", "  turn off search highlights" },

		-- path
		["<leader>yr"] = { ":CpRelPath<CR>", "📋 copy relative file path to clipboard" },
		["<leader>ya"] = { ":CpAbsPath<CR>", "📋 copy absolute file path to clipboard" },
		["<leader>R"] = { ":ShowRelPath<CR>", "📄 show relative file path" },
		["<leader>A"] = { ":ShowAbsPath<CR>", "📄 show absolute file path" },

		-- line number toggling
		["<leader>Lr"] = { ":set number relativenumber<CR>", "# set relative line number mode"},
		["<leader>La"] = { ":set number norelativenumber<CR>", "# set absolute line number mode"},
	},
}

M.lspconfig = {
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
		[";K"] = {
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
		[";J"] = {
			function()
				vim.diagnostic.goto_next()
			end,
			"   lsp next diagnostic",
		},

		["<leader>lr"] = {
			function()
				require("nvchad_ui.renamer").open()
			end,
			"   lsp rename",
		},

		["<leader>la"] = {
			function()
				vim.lsp.buf.code_action()
			end,
			"   lsp code_action",
		},
	},
}

M.nvimtree = {
	n = {
		-- toggle
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
		[",,"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },

		-- focus
		["<leader>E"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
	},
}

M.telescope = {
	n = {
		["<leader>T"] = { "<cmd> Telescope <CR>", "Telescope" },

		["<leader>ft"] = { "<cmd> Telescope live_grep <CR>", "   find text (live grep)" },

		-- git
		["<leader>gl"] = { "<cmd> Telescope git_commits <CR>", "   git log (commits)" },
		["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "  git status" },

		["gr"] = { "<cmd> Telescope lsp_references <CR>", "lsp references"},
		["<leader>lS"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "lsp dynamic workspace symbols"},
		["<leader>lj"] = { "<cmd> Telescope lsp_document_symbols <CR>", "lsp document symbols"},
		[",S"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "lsp dynamic workspace symbols"},
		[",s"] = { "<cmd> Telescope lsp_document_symbols <CR>", "lsp document symbols"},

		-- find
    [",f"] = { "<cmd> Telescope find_files <CR>", "find files" },
		[",t"] = { "<cmd> Telescope live_grep <CR>", "   find text (live grep)" },
	},
}

M.git = {
	n = {
		["<leader>gp"] = { "<cmd> Gitsigns preview_hunk <CR>", "  git preview hunk" },
		[";;"] = { "<cmd> Gitsigns preview_hunk <CR>", "  git preview hunk" },

		["<leader>gn"] = { "<cmd> Gitsigns next_hunk <CR>", "  git next hunk" },
		[";j"] = { "<cmd> Gitsigns next_hunk <CR>", "  git next hunk" },

		["<leader>gN"] = { "<cmd> Gitsigns prev_hunk <CR>", "  git prev hunk" },
		[";k"] = { "<cmd> Gitsigns prev_hunk <CR>", "  git prev hunk" },
	},
}

return M
