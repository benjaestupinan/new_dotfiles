-- En tu archivo de plugins (ej: ~/.config/nvim/lua/plugins/noice.lua)
return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify", -- backend de notificaciones
		},
		opts = {
			-- Configuración de la cmdline flotante
			cmdline = {
				enabled = true,
				view = "cmdline_popup", -- cmdline flotante centrada
			},
			-- Mensajes en popup en vez de abajo
			messages = {
				enabled = true,
			},
			-- Notificaciones con nvim-notify
			notify = {
				enabled = true,
			},
			lsp = {
				-- Progreso de LSP (como cargando rust-analyzer, etc)
				progress = { enabled = true },
				hover = { enabled = true },
				signature = { enabled = true },
			},
		},
	},

	-- Configura nvim-notify por separado si quieres tunear el estilo
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 3000,
			max_width = 60,
			render = "compact", -- o "default", "minimal", "simple"
			stages = "slide", -- animación
			background_colour = "#000000",
		},
	},
}
