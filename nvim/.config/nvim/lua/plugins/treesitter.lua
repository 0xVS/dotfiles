return {
        -- treesitter for smart indent
        {
            "nvim-treesitter/nvim-treesitter",
        },
        
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            dependencies = { "nvim-treesitter/nvim-treesitter" },
        },    
}
