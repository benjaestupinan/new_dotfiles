return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            width = 0.9,
            height = 0.85,
            preview_cutoff = 1,
          },
          preview = {
            hide_on_startup = false,
          },
          sorting_strategy = "ascending",
          file_ignore_patterns = { "node_modules", ".git/" },
        },
        pickers = {
          find_files = {
            previewer = true,
            hidden = true,
          },
        },
      })
    end
  },{
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              layout_config = { width = 0.5 }
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
