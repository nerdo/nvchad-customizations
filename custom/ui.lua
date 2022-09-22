-- execute the following to see all available highlight groups
-- :so $VIMRUNTIME/syntax/hitest.vim
return {
	theme = "chadracula",
	changed_themes = {
		chadracula = {
			base_30 = {
				black = "#0B0E14", --  nvim bg
			},

			base_16 = {
				base00 = "#0B0E14",
			},
		},
	},
	hl_override = {
		Visual = {
			bg = "#3067C5",
		},
		CursorLine = {
			bg = "#13294E",
		},
		CursorLineNr = {
			bg = "#06337F",
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
			underline = true,
		},
		IndentBlanklineContextChar = {
			fg = "#1A6165",
		},
		IndentBlanklineSpaceCharBlankline = {
			fg = "#1A6165",
		},
	},
	hl_add = {
		TreesitterContext = {
			bg = "#1A6165",
		},
		LineNrAbove = {
			fg = "#C46EA2",
		},
		LineNrBelow = {
			fg = "#6EC48B",
		},
	},
}
