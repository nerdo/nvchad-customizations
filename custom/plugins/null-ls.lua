local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {
	-- webdev stuff
	b.formatting.eslint.with({
		prefer_local = "node_modules/.bin",
		condition = function(utils)
			return utils.root_has_file({
				".eslintrc",
				".eslintrc.js",
				".eslintrc.cjs",
				".eslintrc.yaml",
				".eslintrc.yml",
				".eslintrc.json",
			})
		end,
	}),

	b.formatting.prettier.with({
		prefer_local = "node_modules/.bin",
		condition = function(utils)
			local has_prettier_config = utils.root_has_file({
				".prettierrc",
				".prettierrc.js",
				".prettierrc.cjs",
				".prettierrc.yaml",
				".prettierrc.yml",
				".prettierrc.json",
				".prettierrc.json5",
				".prettierrc.toml",
			})
			local has_eslint_config = utils.root_has_file({
				".eslintrc",
				".eslintrc.js",
				".eslintrc.cjs",
				".eslintrc.yaml",
				".eslintrc.yml",
				".eslintrc.json",
			})
			return has_prettier_config or (not has_prettier_config and not has_eslint_config)
		end,
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
