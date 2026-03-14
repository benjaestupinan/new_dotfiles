return {
  "petertriho/nvim-scrollbar",
  opts = {
    show = true,

    handle = {
      text = "▐",
      highlight = "CursorColumn",
      hide_if_all_visible = true,
    },

    marks = {
      Cursor = { text = "" }, -- desactiva el punto
    },

    mappings = {},

    handlers = {
      cursor = false, -- importante
      diagnostic = true,
      gitsigns = false,
      handle = true,
    },
  },
}
