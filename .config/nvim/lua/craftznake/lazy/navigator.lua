return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    dependecies = {
      "folke/which-key.nvim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- Ignored buffer types (only while resizing)
      ignored_buftypes = {
        "nofile",
        "quickfix",
        "prompt",
      },
      -- The default number of lines/columns to resize by at a time
      default_amount = 3,
      at_edge = "wrap",
      float_win_behavior = "previous",
      move_cursor_same_row = false,
      cursor_follows_swapped_bufs = false,
      ignored_events = {
        "BufEnter",
        "WinEnter",
      },
      multiplexer_integration = nil,
      disable_multiplexer_nav_when_zoomed = true,
    },
    config = function()
      local smart_splits = require("smart-splits")
      vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left)
      vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down)
      vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up)
      vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right)
    end,
  },
}
