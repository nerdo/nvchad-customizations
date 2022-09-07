local M = {}

require("custom.functions")

local overrides = require("custom.overrides")

M.mappings = require("custom.mappings")

-- execute the following to see all available highlight groups
-- :so $VIMRUNTIME/syntax/hitest.vim
M.ui = {
	theme = "chadracula",
	hl_override = {
		CursorLine = {
			-- bg = "one_bg",
			bg = "#27408B",
		},
		TbLineBufOn	= {
			bg = "#27408B",
		},
		TbLineBufOnClose = {
			bg = "#27408B",
		}
	},
}

M.plugins = {
	override = {
		["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
		["williamboman/mason.nvim"] = overrides.mason,
		["nvim-treesitter/nvim-treesitter"] = overrides.treesitter,
	},
	user = require("custom.plugins"),
}

return M
