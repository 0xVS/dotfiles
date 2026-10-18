return {
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
}
