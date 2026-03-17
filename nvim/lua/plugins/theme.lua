return {
  "shaunsingh/nord.nvim",
  lazy = false, -- importante para que cargue al inicio
  priority = 1000, -- asegura que se aplique antes que otros
  config = function()
    vim.cmd.colorscheme("nord")
  end
}
