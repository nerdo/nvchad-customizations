local sep_style = vim.g.statusline_sep_style
local separators = (type(sep_style) == "table" and sep_style)
	or require("nvchad_ui.icons").statusline_separators[sep_style]
local sep_l = separators["left"]
-- local sep_r = separators["right"]
local st_modules = require("nvchad_ui.statusline.modules")

return {
	cursor_position = function()
		-- Include the row,col of cursor
		local cursor = vim.api.nvim_win_get_cursor(0)
		local row = cursor[1]
		local col = cursor[2] + 1
		local position = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon# " .. row .. "," .. col
		return st_modules.cursor_position() .. position .. " "
	end,
}
