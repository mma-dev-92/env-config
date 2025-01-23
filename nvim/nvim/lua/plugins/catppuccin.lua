return {
  "catppuccin/nvim",
  name = "catppuccin-macchiato",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      default_integrations = false,
    })
    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}
