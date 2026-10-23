-- /lua/plugins/colorizer.lua
return {
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = {
            filetypes = { "*" },
            user_commands = true,
            options = {
                parsers = {
                    names = { enable = false },
                    hex = {
                        rgb = true,
                        rgba = true,
                        rrggbb = true,
                        rrggbbaa = false,
                        hash_aarrggbb = false,
                        aarrggbb = false,
                        no_hash = false,
                    },
                    sass = {
                        enable = true,
                        parsers = { hex = { default = true } },
                        variable_pattern = "^([%w_-]+)%s*=",
                    },
                },
            },
        },
    },
}   
