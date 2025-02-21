return {
	{
		"numToStr/Comment.nvim",
		keys = {
			{ "<leader>/", mode = { "n", "v" }, desc = "Toggle comment" },
		},
		config = function()
			local comment = require("Comment")
			local api = require("Comment.api")

			comment.setup() -- basic default setup

			-- NORMAL MODE: Toggle comment on the current line.
			vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, {
				desc = "Toggle comment on current line (Comment.nvim)",
			})

			-- VISUAL MODE: Toggle comment on the selected region, preserving the selection.
			vim.keymap.set("v", "<leader>/", function()
				-- The 'locked' version of the function tries to preserve
				-- your cursor position and keep the selection active after toggling.
				api.locked("toggle.linewise")(vim.fn.visualmode())
			end, {
				desc = "Toggle comment on selection (Comment.nvim)",
			})
		end,
	},
}
