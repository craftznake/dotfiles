return {
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    cmd = {
      "MarkdownPreview",
      "MarkdownPreviewStop",
      "MarkdownPreviewToggle",
    },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
