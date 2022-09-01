local M = {}

M.nvimtree = {
	view = {
		number = true,
		relativenumber = true,
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
		"svelte-language-server",
	},
}

M.treesitter = {
	auto_install = true,
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
		"sql",
		"scss",
		"svelte",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"vue",
		"yaml",
	}
}

return M
