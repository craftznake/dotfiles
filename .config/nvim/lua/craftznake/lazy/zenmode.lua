return {
  "folke/zen-mode.nvim",
  dependencies = {
    "b0o/incline.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>zz", function()
      require("zen-mode").toggle({
        window = {
          width = 150,
          option = {},
        },
      })

      require("incline").toggle()
      vim.wo.wrap = false
      vim.wo.number = true
      vim.wo.rnu = true
      ColorMyPencils()
    end)

    vim.keymap.set("n", "<leader>zZ", function()
      require("zen-mode").toggle({
        window = {
          width = 140,
          options = {},
        },
      })
      require("incline").toggle()
      vim.wo.wrap = false
      vim.wo.number = false
      vim.wo.rnu = false
      vim.opt.colorcolumn = "0"
      ColorMyPencils()
    end)
  end,
}
