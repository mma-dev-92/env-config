return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/neotest-python",
	},
	config = function()
		local neotest = require("neotest")
		neotest.setup({
			adapters = {
				require("neotest-python")({
					dap = { justMyCode = false },
					args = { "--log-level", "DEBUG" },
					runner = "pytest",
					python = ".venv/bin/python",
				}),
			},
			summary = {
				open = "botright vsplit | vertical resize 60",
				mappings = {
					expand = { "<Tab>" },
					run = { "<CR>" },
				},
			},
			output_panel = {
				open = "vsplit",
			},
		})

		-- run nearest test
		vim.keymap.set("n", "<leader>tt", neotest.run.run, { desc = "Run nearest test." })

		-- run current test file
		vim.keymap.set("n", "<leader>tf", function()
			neotest.run.run(vim.fn.expand("%"))
		end, { desc = "Run current test file." })

		-- run all tests in the project
		vim.keymap.set("n", "<leader>ta", function()
			require("neotest").run.run(vim.fn.getcwd())
		end, { desc = "Run all tests in the suite." })

		-- open test summary (at the bottom)
		vim.keymap.set("n", "<leader>ts", neotest.summary.open, { desc = "Open test summary." })

		-- close test summary
		vim.keymap.set("n", "<leader>tq", neotest.summary.close, { desc = "Close test summary." })

		-- open test outputs
		vim.keymap.set("n", "<leader>to", require("neotest").output_panel.open, { desc = "Open output panel." })

		-- close test outputs
		vim.keymap.set("n", "<leader>toq", require("neotest").output_panel.close, { desc = "Close output panel." })

		-- stop test processes
		vim.keymap.set("n", "<leader>tz", neotest.run.stop, { desc = "Stop current tests." })

		-- debug current test
		vim.keymap.set("n", "<leader>td", function()
			neotest.run.run({ strategy = "dap" })
		end, { desc = "Debug nearest test." })
	end,
}
