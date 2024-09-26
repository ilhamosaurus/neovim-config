return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"cssls",
				"docker_compose_language_service",
				"dockerls",
				"emmet_ls",
				"eslint",
				"gopls",
				"graphql",
				"html",
				"lua_ls",
				"sqls",
				"templ",
				"tailwindcss",
				"ts_ls",
				"prismals",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"goimports",
				"gofumpt",
				"eslint_d",
				"golangci-lint",
			},
		})
	end,
}
