-- get tools from file
local function get_tools()
	local tools = require("../tools")

	local tools_set = {}
	-- go through all filetypes in tools.lua
	for _, ft in ipairs(tools) do
		-- get formatters
		for _, formatter in ipairs(ft.formatters) do
			if ft.formatters ~= nil then
				tools_set[formatter] = true
			end
		end

		-- get lsps
		for _, lsp in ipairs(ft.lsp) do
			if ft.lsp ~= nil then
				tools_set[lsp] = true
			end
		end

		-- get linters
		for _, linter in ipairs(ft.linters) do
			if ft.linters ~= nil then
				tools_set[linter] = true
			end
		end
	end

	local to_install = {}
	-- get keys from tools_set
	for key, _ in pairs(tools_set) do
		table.insert(to_install, key)
	end

	return to_install
end

-- install tools defined in tools.lua file
-- i.e. lsp, formatter, linter
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	opts = {
		ensure_installed = get_tools(),
	},
}
