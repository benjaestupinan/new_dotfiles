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

			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
