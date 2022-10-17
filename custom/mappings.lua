local M = {}

M.disabled = {
	n = {
		-- format
		["<leader>fm"] = "",

		-- close buffer
		["<leader>x"] = "",

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
		["<M-i>"] = "",
	},

	t = {
		-- nvterm
		["<M-i>"] = "",
	},
}

M.basic = {
	v = {
		-- greatest remap evar! https://youtu.be/qZO9A5F6BZs?t=356
		-- preserves the register when using this keymap to paste
		[",p"] = { '"_dP' },
	},

	n = {
		["<leader>i"] = {
			function()
				require("lsp-inlayhints").toggle()
			end,
			"toggle inlay hints",
		},

		-- greatest remap evar! https://youtu.be/qZO9A5F6BZs?t=356
		-- preserves the register when using this keymap to paste
		[",p"] = { '"_dP' },

		["!"] = { ";", "next horizontal match" },

		-- simpler window navigation
		["<C-h>"] = { "<C-w>h" },
		["<C-j>"] = { "<C-w>j" },
		["<C-k>"] = { "<C-w>k" },
		["<C-l>"] = { "<C-w>l" },

		-- save
		[",;"] = { "<cmd> w <CR>", "﬚  save file" },

		-- close buffer + hide terminal buffer
		[",x"] = {
			function()
				vim.cmd("w")
				vim.cmd("bd")
			end,
			"   save & close buffer",
		},

		[",X"] = {
			function()
				vim.cmd("w")
				vim.cmd("x")
			end,
			"   save & quit",
		},

		[",c"] = {
			function()
				vim.cmd("bd")
			end,
			"   close buffer",
		},

		[",C"] = {
			function()
				vim.cmd("bd!")
			end,
			"   close buffer without saving",
		},

		[",q"] = { "<cmd> qa <CR>", "quit" },
		[",Q"] = { "<cmd> qa! <CR>", "quit without saving" },

		-- highlighting
		[";/"] = { ":noh<CR>", "  turn off search highlights" },

		-- path
		["<leader>yr"] = { ":CpRelPath<CR>", "📋 copy relative file path to clipboard" },
		["<leader>ya"] = { ":CpAbsPath<CR>", "📋 copy absolute file path to clipboard" },
		["<leader>R"] = { ":ShowRelPath<CR>", "📄 show relative file path" },
		["<leader>A"] = { ":ShowAbsPath<CR>", "📄 show absolute file path" },

		-- line number toggling
		["<leader>Lr"] = { ":set number relativenumber<CR>", "# set relative line number mode" },
		["<leader>La"] = { ":set number norelativenumber<CR>", "# set absolute line number mode" },
	},
}

M.lspconfig = {
	n = {
		-- format
		["<leader>lf"] = {
			function()
				vim.lsp.buf.format({ async = true })
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

		["gr"] = { "<cmd> Telescope lsp_references <CR>", "lsp references" },
		["<leader>lS"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "lsp dynamic workspace symbols" },
		["<leader>lj"] = { "<cmd> Telescope lsp_document_symbols <CR>", "lsp document symbols" },
		[",S"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "lsp dynamic workspace symbols" },
		[",s"] = { "<cmd> Telescope lsp_document_symbols <CR>", "lsp document symbols" },

		-- find
		[",f"] = { "<cmd> Telescope find_files <CR>", "find files" },
		[",t"] = { "<cmd> Telescope live_grep <CR>", "   find text (live grep)" },

		-- treesitter
		["<leader>lg"] = { "<cmd> Telescope treesitter <CR>", "  Go to (treesitter)" },
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

M.nvterm = {
	t = {
		-- toggle in terminal mode
		["<M-f>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},

		["<M-h>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"toggle horizontal term",
		},

		["<M-v>"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"toggle vertical term",
		},
	},

	n = {
		-- toggle in normal mode
		["<M-f>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},

		["<M-h>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"toggle horizontal term",
		},

		["<M-v>"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"toggle vertical term",
		},
	},
}

M.neotest = {
	n = {
		["<M-t>"] = {
			function()
				require("neotest").run.run()
			end,
			"🧪 run nearest test",
		},

		["<M-l>"] = {
			function()
				require("neotest").run.run_last()
			end,
			"🧪 run last test",
		},

		["<M-L>"] = {
			function()
				require("neotest").run.stop()
			end,
			"🧪 stop test",
		},

		["<M-T>"] = {
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
			"⚗️  run current file",
		},

		["<M-O>"] = {
			function()
				require("neotest").output.open()
			end,
			"🔬 run current file",
		},

		[";t"] = {
			function()
				require("neotest").summary.toggle()
			end,
			"🧫 toggle test summary",
		},
	},
}

return M
