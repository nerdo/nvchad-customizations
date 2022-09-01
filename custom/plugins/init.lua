return {
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

	["Darazaki/indent-o-matic"] = {
		config = function()
			require("custom.plugins.indent-o-matic")
		end,
	},

	["justinmk/vim-sneak"] = {
		config = function()
			require("custom.plugins.vim-sneak")
		end,
	},

	-- enablpreview hunk which-key
	["folke/which-key.nvim"] = {
		disable = false,
	},

	["romainl/vim-qf"] = {
		config = function()
			require("custom.plugins.vim-qf")
		end,
	},
}
