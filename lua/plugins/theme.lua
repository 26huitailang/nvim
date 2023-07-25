return {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("tokyonight").setup({
                transparent = true,
            })
            vim.cmd[[colorscheme tokyonight-storm]]
            require('lualine').setup({
                options = {
                    theme = 'tokyonight'
                },
            })
            require("barbecue").setup({
                theme = 'tokyonight',
            })
        end
    },
}
