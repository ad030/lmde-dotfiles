vim.pack.add({ "https://github.com/WhoIsSethDaniel/mason-tool-installer" })

local function get_tools()
	local tools = require("tools")

	local tools_set = {}
	-- go through all filetypes in tools.lua
	for _, ft in pairs(tools) do
		-- get formatters
		if ft.formatters ~= nil then
			for _, formatter in pairs(ft.formatters) do
				tools_set[formatter] = true
			end
		end

		-- get lsps
		if ft.lsp ~= nil then
			for _, lsp in pairs(ft.lsp) do
				tools_set[lsp] = true
			end
		end

		-- get linters
		if ft.linters ~= nil then
			for _, linter in pairs(ft.linters) do
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

require("mason-tool-installer").setup({
	-- install tools defined in tools.lua file
	-- i.e. lsp, formatter, linter
	ensure_installed = get_tools(),
	run_on_start = true,
	integrations = {
		["mason-lspconfig"] = true,
	},
})
