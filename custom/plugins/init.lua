return {
	["windwp/nvim-autopairs"] = false,

	["NvChad/nvterm"] = {
		override_options = {
			terminals = {
				type_opts = {
					float = {
						row = 0.125,
						width = 1.0,
						height = 0.75,
					},
				},
			},
		},
	},

	["justinmk/vim-sneak"] = {
		config = function()
			require("custom.plugins.vim-sneak")
		end,
	},

	["lukas-reineke/indent-blankline.nvim"] = {
		override_options = function()
			vim.g.indent_blankline_char = ""

			if vim.g.vscode then
				return {
					use_treesitter = true,
					space_char_blankline = " ",
					context_highlight_list = {
						"IndentBlanklineSpaceCharBlankline",
					},
				}
			end

			return {
				use_treesitter = true,
				space_char_blankline = " ",
			}
		end,
	},

	["kyazdani42/nvim-tree.lua"] = {
		override_options = {
			view = {
				number = true,
				relativenumber = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		},
	},

	["williamboman/mason.nvim"] = {
		override_options = {
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
				"svelte-language-server",
				"gopls",
			},
		},
	},

	["nvim-treesitter/nvim-treesitter"] = {
		override_options = {
			ensure_installed = {
				"bash",
				"html",
				"css",
				"dockerfile",
				"gitignore",
				"javascript",
				"json",
				"jsdoc",
				"lua",
				"markdown",
				"php",
				"rust",
				"go",
				"sql",
				"scss",
				"svelte",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vue",
				"yaml",
			},
			indent = {
				enable = false,
			},
		},
	},

	-- smart renaming, preserving case, etc.
	["tpope/vim-abolish"] = {},

	["evanleck/vim-svelte"] = {},

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- autoclose tags in html, jsx etc
	["windwp/nvim-ts-autotag"] = {
		after = "nvim-treesitter",
		config = function()
			require("custom.plugins.nvim-ts-autotag")
		end,
	},

	["nvim-treesitter/nvim-treesitter-context"] = {
		after = "nvim-treesitter",
		config = function()
			require("custom.plugins.nvim-treesitter-context")
		end,
	},

	["nvim-treesitter/playground"] = {
		after = "nvim-treesitter",
		config = function()
			require("custom.plugins.nvim-treesitter-playground")
		end,
	},

	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- automatic detection of tab size
	["Darazaki/indent-o-matic"] = {
		config = function()
			require("custom.plugins.indent-o-matic")
		end,
	},
}
