return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-j>]], -- tecla para abrir/cerrar
      shade_terminals = true,
      direction = "horizontal", -- horizontal | vertical | float | tab
      persist_size = true,
      start_in_insert = true,
    })
  end,
}
