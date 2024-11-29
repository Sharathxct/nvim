return {
  {
    'akinsho/bufferline.nvim',
    event = "BufReadPre",
    wants = "nvim-web-devicons",
    options = {
      numbers = "none",
      diagnostics = "nvim_lsp",
      separator_style = "slant" or "padded_slant",
      show_tab_indicators = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
    config = function()
      require("config.bufferline").setup()
    end,
  }
}
