return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
	},
	opts = {
		-- handlers = {
		-- 	function(server_name)
		-- 		local server = servers[server_name] or {}
		-- 		-- This handles overriding only values explicitly passed
		-- 		-- by the server configuration above. Useful when disabling
		-- 		-- certain features of an LSP (for example, turning off formatting for tsserver)
		--
		-- 		-- do not call setup for jdtls
		-- 		if server_name == "jdtls" then
		-- 			goto continue
		-- 		end
		--
		-- 		server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
		-- 		require("lspconfig")[server_name].setup(server)
		--
		-- 		::continue::
		-- 	end,
		-- },
	},
}
