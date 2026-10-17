return {
		{
		  "ibhagwan/fzf-lua",
		  -- optional for icon support
		  dependencies = { "nvim-tree/nvim-web-devicons" },
		  -- or if using mini.icons/mini.nvim
		  -- dependencies = { "nvim-mini/mini.icons" },
		  ---@module "fzf-lua"
		  ---@type fzf-lua.Config|{}
		  ---@diagnostic disable: missing-fields
		  opts = {}
		  ---@diagnostic enable: missing-fields
		},

        -- closing brackets etc.
        { 
            "nvim-mini/mini.pairs", version = "*"
        },
            
        -- treesitter for smart indent
        {
            "nvim-treesitter/nvim-treesitter",
            opts = {
                indent = { enabled = true }, 
            },
        },
        
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            dependencies = { "nvim-treesitter/nvim-treesitter" },
        },

		{
			"mason-org/mason.nvim",
            opts = { }
		},

        {
            "j-hui/fidget.nvim", opts = {},
        },
		{
			"nvim-telescope/telescope.nvim", version = "*",
			dependencies = {
				"nvim-lua/plenary.nvim",
				-- optional but recommended

						{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
				}
		},
		{
				"akinsho/toggleterm.nvim", version = "*", config = true
		},
        {
                "numToStr/Comment.nvim", opts = {}
        },
        {
                "abecodes/tabout.nvim", opts = {}
        },
        {
                "mawkler/modicator.nvim", opts = {}
        },
}
