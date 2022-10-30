local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {
	-- webdev stuff
	b.diagnostics.eslint.with({
		prefer_local = "node_modules/.bin",
	}),

	b.formatting.prettier.with({
		prefer_local = "node_modules/.bin",
	}),

	-- Lua
	b.formatting.stylua,

	-- PHP
	-- b.formatting.phpcbf.with({
	-- 	prefer_local = "./vendor/bin",
	-- 	condition = function(utils)
	-- 		local has_phpcbf_installed_locally = utils.root_has_file({
	-- 			"./vendor/bin/phpcbf",
	-- 		})
	-- 		return has_phpcbf_installed_locally
	-- 	end,
	-- }),

	b.formatting.pint.with({
		condition = function(utils)
			local has_pint_installed_locally = utils.root_has_file({
				"./vendor/bin/pint",
			})
			return has_pint_installed_locally
		end,
	}),
}

null_ls.setup({
	sources = sources,
})
