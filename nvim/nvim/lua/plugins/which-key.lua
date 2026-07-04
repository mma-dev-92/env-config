return {
  "folke/which-key.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "find" },
      { "<leader>c", group = "code" },
      { "<C-n>",     group = "directory tree" },
      { "g",         group = "go to" },
    },
  },
}
