return {
	{
		"williamboman/mason.nvim", -- ojo: el nombre correcto es williamboman, no mason-org
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			handlers = {
				function(server_name)
					vim.lsp.config(server_name, {
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
					})
					vim.lsp.enable(server_name)
				end,
				ruff = function() end,
				pylsp = function()
					vim.lsp.config("pylsp", {
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						settings = {
							pylsp = {
								plugins = {
									pyflakes = { enabled = false },
									pycodestyle = { enabled = false },
									autopep8 = { enabled = false },
									yapf = { enabled = false },
									mccabe = { enabled = false },
									pylsp_isort = { enabled = false },
									pylint = { enabled = false },
									ruff = { enabled = true, formatEnabled = true },
									pylsp_mypy = { enabled = true, live_mode = false },
									jedi_completion = { enabled = true },
									jedi_hover = { enabled = true },
									jedi_references = { enabled = true },
									jedi_signature_help = { enabled = true },
									jedi_symbols = { enabled = true },
								},
							},
						},
					})
					vim.lsp.enable("pylsp")
				end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Configuración global de diagnóstico (igual que antes)
			vim.diagnostic.config({
				virtual_text = {
					source = "always",
					prefix = "●",
					spacing = 4,
				},
				float = { border = "rounded" },
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			-- Nuevo sistema: vim.lsp.config()
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})

			vim.lsp.config("html", {
				capabilities = capabilities,
			})

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
		end,
	},
}
