if vim.g.neovide == false then
	return
end

vim.g.neovide_input_macos_alt_is_meta = true
vim.g.neovide_remember_window_size = false
vim.g.neovide_cursor_vfx_mode = "ripple"
vim.g.neovide_floating_opacity = 0.9
vim.g.neovide_hide_mouse_when_typing = true

require("custom.gui-font-sizing")
