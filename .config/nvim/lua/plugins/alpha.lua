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

	local function footer()
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
		["footer"] = footer(),
	}

	local config = {
		layout = {
			{ type = "padding", val = 2 },
			section.header,
			{ type = "padding", val = 2 },
			section.buttons,
			section.footer,
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
		local opts = startup_layout().config
		return opts
	end,
}
