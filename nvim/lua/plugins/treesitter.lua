return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = { "c", "lua", "python", "markdown" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
