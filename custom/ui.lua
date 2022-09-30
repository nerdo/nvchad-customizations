-- execute the following to see all available highlight groups
-- :so $VIMRUNTIME/syntax/hitest.vim
-- or better yet, launch telescope and search for highlights
return {
	theme = "ayu-dark",
	changed_themes = {
		['ayu-dark'] = {
			base_30 = {
				black = "#0B0E14", --  nvim bg
				green = "#56c300",
			},

			base_16 = {
				base00 = "#0B0E14",
				base05 = "#E8E7E3",
				base0A = "#25888E",
				base0D = "#56c3f9",
				base0F = "#9A52EF",
			},
		},
	},
	hl_override = {
		-- highlight group for importing TS types, super useful visual distinction!
		TSConstructor = {
			fg = "#25888E",
		},
		Comment = {
			fg = "#62729D",
		},
		Visual = {
			bg = "#044A4E",
		},
		CursorLine = {
			bg = "#162F5A",
		},
		CursorLineNr = {
			bg = "#0841A1",
		},
		TbLineBufOn = {
			bg = "#162F5A",
		},
		TbLineBufOnModified = {
			bg = "#162F5A",
		},
		TbLineBufOnClose = {
			bg = "#162F5A",
		},
		IndentBlanklineContextStart = {
			bg = "#0841A1",
			underline = false,
		},
		IndentBlanklineContextChar = {
			fg = "#0841A1",
		},
		IndentBlanklineSpaceCharBlankline = {
			fg = "#0841A1",
		},
		TelescopeSelection = {
			bg = "#0841A1",
		},
	},
	hl_add = {
		TreesitterContext = {
			bg = "#0841A1",
		},
		LineNrAbove = {
			fg = "#C46EA2",
		},
		LineNrBelow = {
			fg = "#6EC48B",
		},
	},
}
