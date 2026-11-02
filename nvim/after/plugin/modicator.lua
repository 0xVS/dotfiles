-- modicator.nvim
--
-- Modicator colours the cursor line number in the colour of the current mode.
-- With lualine loaded it takes those colours from lualine's mode blocks, so
-- the line number always matches the mode indicator in the statusline.
-- (insert mode is the gruber-darker yellow, see after/plugin/lualine.lua)

require("modicator").setup({
	integration = {
		lualine = {
			-- use the background colour of the lualine mode block
			highlight = "bg",
		},
	},
})
