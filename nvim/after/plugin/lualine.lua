-- lualine.nvim
--
-- Lualine renders the statusline. Its default layout already puts the mode
-- indicator in the bottom left section ('lualine_a'), the theme below only
-- recolours it to match gruber-darker.

local palette = require("gruber-darker.palette")

---@param color table gruber-darker colour
---@return string
local function hex(color)
	return color:to_string()
end

---Build a lualine theme from the gruber-darker palette.
---@param modes table<string, table> mode name -> colour of the mode block
---@return table
local function gruber_theme(modes)
	local theme = {}
	for mode, color in pairs(modes) do
		theme[mode] = {
			-- 'a' holds the mode indicator
			a = { fg = hex(palette.bg), bg = hex(color), gui = "bold" },
			b = { fg = hex(palette.fg), bg = hex(palette["bg+2"]) },
			c = { fg = hex(palette.fg), bg = hex(palette["bg+1"]) },
		}
	end
	return theme
end

require("lualine").setup({
	options = {
		theme = gruber_theme({
			normal = palette.niagara,
			insert = palette.yellow,
			visual = palette.wisteria,
			replace = palette.red,
			command = palette.green,
			terminal = palette.brown,
			inactive = palette["bg+3"],
		}),
	},
})

-- lualine renders the mode itself, so switch off the built in indicator
vim.opt.showmode = false
