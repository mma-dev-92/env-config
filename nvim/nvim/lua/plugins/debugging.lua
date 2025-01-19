return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local dap_python = require("dap-python")

			dap_python.setup(".venv/bin/python")

			dapui.setup({
				-- See "nvim-dap-ui" README for detailed configuration
				layouts = {
					{
						elements = {
							{ id = "stacks", size = 0.2 },
							{ id = "scopes", size = 0.4 },
							{ id = "watches", size = 0.4 }, -- variables, local/global
						},
						size = 75, -- width of the vertical columns
						position = "left",
					},
					{
						elements = {
							{ id = "console", size = 0.5 },
							{ id = "repl", size = 0.5 },
						},
						size = 0.30, -- 30% of total lines for horizontal
						position = "bottom",
					},
				},
				controls = { enabled = true },
			})

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			-- 4. Optional keymaps for stepping, toggling breakpoints, etc.
			vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP continue" })
			vim.keymap.set("n", "<F8>", dap.step_over, { desc = "DAP step over" })
			vim.keymap.set("n", "<F9>", dap.step_into, { desc = "DAP step into" })
			vim.keymap.set("n", "<F10>", dap.step_out, { desc = "DAP step out" })
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
			vim.keymap.set("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end, { desc = "DAP conditional breakpoint" })
		end,
	},
}
