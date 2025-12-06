return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},

	lazy = false, -- neo-tree will lazily load itself

	config = function()
		require("neo-tree").setup({
			filesystem = {
				bind_to_cwd = false,
        cwd_target = "window",
        hijack_netrw_behavior = "open_current",
				follow_current_file = {
					enabled = true, -- sigue el archivo actual
					leave_dirs_open = false,
				},
				use_libuv_file_watcher = true,
			},
		})
	end,
}
