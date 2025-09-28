local function startup_layout()
	local function header()
		local type = "text"
		local val = {
			[[                                  __]],
			[[     ___     ___    ___   __  __ /\_\    ___ ___]],
			[[    / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\]],
			[[   /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \]],
			[[   \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[    \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}

		local opts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		return {
			["type"] = type,
			["opts"] = opts,
			["val"] = val,
		}
	end

	local function nvim_version()
		local type = "text"

		local opts = {
			position = "center",
			hl = "Number",
		}

		local val = "v" .. vim.version()[1] .. "." .. vim.version()[2] .. "." .. vim.version()[3]

		return {
			["type"] = type,
			["opts"] = opts,
			["val"] = val,
		}
	end

	local function plugin_stats()
		local stats = require("lazy").stats()

		local type = "text"

		local opts = {
			position = "center",
			hl = "Number",
		}

		local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
		local val = stats.loaded .. " of " .. stats.count .. " plugins loaded in " .. ms .. "ms."

		return {
			["type"] = type,
			["opts"] = opts,
			["val"] = val,
		}
	end

	local function button()
		return {
			type = "button",
			val = "",
		}
	end

	local section = {
		["header"] = header(),
		["button"] = button(),
	}

	local config = {
		layout = {
			{ type = "padding", val = 2 },
			header(),
			{ type = "padding", val = 2 },
			button(),
			nvim_version(),
			plugin_stats(),
		},
		opts = {
			margin = 5,
		},
	}

	local opts = {
		["button"] = button,
		["section"] = section,
		["config"] = config,
	}

	return opts
end

return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},

	opts = function()
		return startup_layout().config
	end,
}
