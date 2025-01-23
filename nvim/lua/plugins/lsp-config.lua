return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

			-- Common on_attach function for shared keymaps
			local on_attach = function(_, bufnr)
				local opts = { buffer = bufnr, desc = "LSP: " }
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Hover documentation
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- List references
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Actions", buffer = bufnr })
			end

			-- Pyright (Python)
			lspconfig.pyright.setup({
				on_attach = on_attach,
        capabilities = capabilities,
			})

			-- Lua Language Server
			lspconfig.lua_ls.setup({
				on_attach = on_attach,
        capabilities = capabilities,
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT", -- Neovim uses LuaJIT
						},
						diagnostics = {
							globals = { "vim" }, -- Recognize 'vim' as a global
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})

			-- Custom diagnostic settings (optional)
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				float = {
					border = "rounded",
				},
			})
		end,
	},
}
