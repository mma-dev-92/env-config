return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	branch = "regexp", -- This is the regexp branch, use this for the new version
	config = function()
		require("venv-selector").setup()

		-- Hook into VenvSelectorPost event to update pyright's pythonPath
		vim.api.nvim_create_autocmd("User", {
			pattern = "VenvSelectorPost",
			callback = function()
				local venv_path = vim.g.VIRTUAL_ENV -- Path to the chosen venv
				if venv_path then
					local python_binary = venv_path .. "/bin/python"

					-- Update Pyright configuration dynamically
					require("lspconfig").pyright.setup({
						settings = {
							python = {
								pythonPath = python_binary,
							},
						},
					})

					-- Notify the user
					vim.notify("Pyright is now using: " .. python_binary, vim.log.levels.INFO)
				else
					vim.notify("No virtual environment selected", vim.log.levels.WARN)
				end
			end,
		})
	end,
	keys = {
		{ ",v", "<cmd>VenvSelect<cr>" },
	},
}
