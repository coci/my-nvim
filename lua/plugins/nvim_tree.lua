return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    -- Key mappings for additional functionality
    view = {
        mappings = {
            custom_only = false,
            list = {
                { key = "a", action = "create" }, -- Add a new file
                { key = "v", action = "vsplit" }, -- Open file in vertical split
            },
        },
    },
    config = function()
        require("nvim-tree").setup {}
    end,
}

