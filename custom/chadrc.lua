local M = {}

require("custom.functions")

local overrides = require("custom.overrides")

M.mappings = require("custom.mappings")

-- execute the following to see all available highlight groups
-- :so $VIMRUNTIME/syntax/hitest.vim
M.ui = {
	theme = "chadracula",
	changed_themes = {
		chadracula = {
			base_30 = {
				black = "#0B0E14", --  nvim bg
			},

			base_16 = {
				base00 = "#0B0E14",
			}
		}
	},
	hl_override = {
		Visual = {
			bg = "#3067C5",
		},
		CursorLine = {
			bg = "#13294E",
		},
		TbLineBufOn = {
			bg = "#13294E",
		},
		TbLineBufOnModified = {
			bg = "#13294E",
		},
		TbLineBufOnClose = {
			bg = "#13294E",
		},
		IndentBlanklineContextStart = {
			bg = "#1A6165",
		},
	}
}

-- for some reason setting the TreesitterContext in the theme didn't work...
vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = "#1A6165" })

M.plugins = {
	override = {
		["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
		["williamboman/mason.nvim"] = overrides.mason,
		["nvim-treesitter/nvim-treesitter"] = overrides.treesitter,
	},
	user = require("custom.plugins"),
}

return M
