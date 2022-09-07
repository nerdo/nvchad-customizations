local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local servers = {
	"rust_analyzer",
	"intelephense",
	"svelte",
	"tsserver",
	"html",
	"cssls",
	"cssmodules_ls",
	"tailwindcss",
	"emmet_ls",
	"jsonls",
	"yamlls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
