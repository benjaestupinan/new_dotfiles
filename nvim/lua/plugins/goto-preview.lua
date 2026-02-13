return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  config = function()
    require("goto-preview").setup({
      width = 120,
      height = 25,
      border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" },
      default_mappings = false, -- importante: usamos tus keymaps
      debug = false,
      opacity = nil,
      resizing_mappings = false,
      post_open_hook = nil,
    })

    -- Keymaps
    vim.keymap.set("n", "gpd", require("goto-preview").goto_preview_definition, { desc = "Preview definition" })
    vim.keymap.set("n", "gpt", require("goto-preview").goto_preview_type_definition, { desc = "Preview type" })
    vim.keymap.set("n", "gpi", require("goto-preview").goto_preview_implementation, { desc = "Preview implementation" })
    vim.keymap.set("n", "gpr", require("goto-preview").goto_preview_references, { desc = "Preview references" })
    vim.keymap.set("n", "gP", require("goto-preview").close_all_win, { desc = "Close previews" })
  end,
}
