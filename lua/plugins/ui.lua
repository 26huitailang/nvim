return {
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup()
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
    },
    { 
        "lewis6991/gitsigns.nvim",
        config = true,
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
}
