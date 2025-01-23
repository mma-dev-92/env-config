return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>o', ":Neotree filesystem reveal left<CR>", { desc = 'Show neotree on the left.' })
    vim.keymap.set('n', '<C-n>q', ":Neotree close<CR>", { desc = 'Show neotree on the left.' })
  end
}
