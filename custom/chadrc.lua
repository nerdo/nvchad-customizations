local M = {}

require("custom.functions")

local overrides = require("custom.overrides")

vim.opt.scrolloff = 999

M.mappings = require("custom.mappings")

M.ui = {
	theme = "chadracula",
	hl_override = {
		CursorLine = {
			bg = "one_bg",
		},
	},
}

M.plugins = {
	override = {
		["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
		["williamboman/mason.nvim"] = overrides.mason,
	},
	user = require("custom.plugins"),
}

return M
