return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  config = function()
    require("goto-preview").setup({
      width = 80,
      height = 15,
      border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" },
      default_mappings = false, -- importante: usamos tus keymaps
      debug = false,
      opacity = 0,
      resizing_mappings = true,
      post_open_hook = nil,
    })
  end,
}
