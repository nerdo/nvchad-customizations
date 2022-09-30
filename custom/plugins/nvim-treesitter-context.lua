local present, nvim_treesitter_context = pcall(require, "treesitter-context")

if not present then
	return
end

nvim_treesitter_context.setup({
	mode = 'topline',
	patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
		-- For all filetypes
		-- Note that setting an entry here replaces all other patterns for this entry.
		-- By setting the 'default' entry below, you can control which nodes you want to
		-- appear in the context window.
		default = {
			"class",
			"function",
			"method",
			'for',
			'while',
			'if',
			'switch',
			'case',

			-- php
			'array_creation_expression',

			-- js
			'variable_declarator',
			'assignment_expression',
			'pair',

			-- mostly for json... if it proves to be annoying in other contexts, wrap in json = {}
			'object',
			'array',
		},
	},

	zindex = 100,
})
