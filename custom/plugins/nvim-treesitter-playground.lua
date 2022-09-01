local present, nvim_treesitter_playground = pcall(require, "nvim-treesitter.configs")

if not present then
	return
end

nvim_treesitter_playground.setup({})
